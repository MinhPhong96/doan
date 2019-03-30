<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\dSlide;
use App\dProduct;
use App\dNews;
use App\dBrand;
use App\dImage;
use App\dGroupProduct;
use App\dOrderItem;
use App\User;
use App\Cart;
use App\dOrders;

use Session;
class homeController extends Controller
{
    public function getHome()
    {
    	$slide =dSlide::all();
    	// $product =dProduct::take(12)->get()->toArray();
    	// $product =array_chunk($product,4,true);
    	$product =dProduct::take(12)->get();
    	$blog =dNews::take(4)->get();
    	$index =0;
    	return view('pages.home',['slide'=>$slide,'product'=>$product,'index'=>$index,'blog'=>$blog]);
    }
    public function getCate($id)
    {
        $product =dProduct::select('product.id','product.name','product.price','product.content')->join('group_product','id_group_product','group_product.id')->join('brand','group_product.id_brand','brand.id')->where('brand.id',$id)->paginate(9);
        $index =0;
        return view('pages.category',['index'=>$index,'pro'=>$product]);
    }
    public function getDetail($id)
    {
        $product =dProduct::find($id);
        $gp =dGroupProduct::where('id',$product->id_group_product)->get()->first();
        $brand =dBrand::where('id',$gp->id_brand)->get()->first();
        $index =1;
        return view('pages.detail',['product'=>$product,'index'=>$index,'brand'=>$brand]);
    }
    public function getProfile() {
        if(Auth::check()){
            $list =dOrders::orderBy('id','DESC')->where('id_user', Auth::user()->id)->get();
            return view('pages.profile',['list'=>$list]);
        }else{
            return redirect('page/home');
        }
    }
    public function getProfileDetail($id) {
        if(Auth::check()){
            $order =dOrders::find($id);
            $total =dOrderItem::selectRaw('SUM(qty*price) as total')->where('id_orders', $id)->groupBy('id_orders')->pluck('total');
            $index =1;
            $user =User::find($order->id_user);
            return view('pages.profiledetail',['order'=>$order,'index'=>$index,'user'=>$user,'total'=>$total]);
        }else{
            return redirect('page/home');
        }
    }
    public function getLogin()
    {
        return view('pages.login');
    }
    public function postLogin(Request $request)
    {
        $this->validate($request,
            [
                'email' => 'required|email',
                'password' =>'required',
            ],
            [
                'email.required' =>'Bạn chưa nhập email',
                'email.email' =>'Email dont true type',
                'password.required' =>'Bạn chưa nhập password',
            ]);
        if (Auth::attempt(['email'=>$request->email,'password'=>$request->password])) {
            return redirect()->intended($request->url);
        }else{
            return redirect('page/login')->with('Thongbao','login fail');
        }
    }
    public function getlogout()
    {
        Auth::logout();
        return redirect('page/home');
    }
    public function getRegister()
    {
        return view('pages.register');
    }
    public function postRegister(Request $request)
    {
        $this->validate($request,
            [
                'txtemail' => 'required|email',
                'txtpassword' =>'required',
                'txtpassword1' =>'required|same:txtpassword'
            ],
            [
                'txtemail.required' =>'Bạn chưa nhập email',
                'txtemail.email' =>'Email dont true type',
                'txtpassword.required' =>'Bạn chưa nhập password',
                'txtpassword1.required' =>'Bạn chưa nhập password',
                'txtpassword1.same' =>'input pass dont true'
            ]);
        $current = new User;
        $current->fullname = $request->txtname;
        $current->email =$request->txtemail;
        $current->phone =$request->txtphone;  
        $current->address =$request->txtaddress;  
        $current->role ="customer"; 
        if($request->hasFile('txtHinh')){
            $file =$request->file('txtHinh');
            $name =$file->getClientOriginalName();
            $hinh =str_random(4)."_".$name;
            while (file_exists("upload/user/".$hinh)) {
                $hinh =str_random(4)."_".$name;
            }
            $file->move("upload/user",$hinh);
            $current->avatar =$hinh;
        }else{
            $current->avatar ="";
        }  
        $current->password =bcrypt($request->txtpassword);
        try{
            $current->save();
            return redirect('page/home');
        }
        catch(\Illuminate\Database\QueryException $err)
        {
            return redirect('page/register')->with('Thongbao','Try Again');
        }
    }
    public function postSearch(Request $request)
    {
        $keyword =$request->Name;
        $product = dProduct::where('name','like',"%$keyword%")->paginate(9);
        $index =0;
        return view('pages.category',['index'=>$index,'pro'=>$product]);
    }
    public function getCart(Request $request,$id)
    {
        $product = dProduct::find($id);
        $oldcart = Session('cart1')?Session::get('cart1'):null;
        $cart = new Cart($oldcart);
        $cart->add($product,$id);
        $request->session()->put('cart1',$cart);
        return redirect()->back();
    }
    public function getDCart($id)
    {
        $oldcart = Session('cart1')?Session::get('cart1'):null;
        $cart = new Cart($oldcart);
        $cart->removeItem($id);
        Session::put('cart1',$cart);
        return redirect()->back();
    }
    public function getWishlist()
    {
        return view('pages.wishlist');
    }
    public function getCateblog()
    {
        $blog =dNews::paginate(3);
        return view('pages.category-blog',['blog'=>$blog]);
    }
    public function getSingleblog($id)
    {
        $blog =dNews::find($id);
        return view('pages.single-blog',['blog'=>$blog]);
    }
    public function getContact()
    {
        return view('pages.contact');
    }
    public function getUser()
    {
        if(Auth::check()){
            $user = User::find(Auth::user()->id);
            return view('pages.user')->with('user',$user);
        }else{
            return redirect('page/home');
        }
    }
    public function getCate1($id)
    {
        $product =dProduct::select('product.id','product.name','product.price','product.content')->join('group_product','id_group_product','group_product.id')->where('group_product.id',$id)->paginate(9);
        $index =0;
        return view('pages.category',['index'=>$index,'pro'=>$product]);
    }
}
