<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="admin/user/list">Admin</a>
    </div>
    <!-- /.navbar-header -->

    <ul class="nav navbar-top-links navbar-right">
        <!-- /.dropdown -->
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                notification {{count(Auth::user()->unreadNotifications)}}<span class="glyphicon glyphicon-bell"></span><i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu" role="menu" id="showNotification">
                @foreach(Auth::user()->notifications as $note)
                <li>
                    <a href="admin/order/list">
                        {!! $note->data['data'] !!}
                    </a>
                    <?php $note->markAsRead(); ?>
                </li>
                @endforeach
            </ul>
        </li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                @if(Auth::check())
                <li><a href="admin/user/yoursuser/{{Auth::user()->id}}"><img src="upload/user/{{Auth::user()->avatar}}" width="30" height="30">{{Auth::user()->fullname}}</a>
                </li>
                <li class="divider"></li>
                <li><a href="admin/logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                </li>
                @endif
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
    <!-- /.navbar-top-links -->
    @include('admin.layout.menu')
    <!-- /.navbar-static-side -->
</nav>