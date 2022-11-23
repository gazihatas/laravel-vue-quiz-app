    <div class="wrapper">
    <div class="container">
        <div class="row">
            <div class="span3">
                <div class="sidebar">
                    <ul class="widget widget-menu unstyled">
                        <li class="active"><a href="{{url('/')}}"><i class="menu-icon icon-dashboard"></i>Yönetim Paneli
                            </a></li>
                        <li><a href="{{route('quiz.create')}}"><i class="menu-icon icon-bullhorn"></i>Sınav Oluştur </a>
                        </li>
                        <li><a href="{{route('quiz.index')}}"><i class="menu-icon icon-inbox"></i>Sınav Görüntüle </a></li>
                    </ul>

                    <ul class="widget widget-menu unstyled">
                        <li><a href="{{route('question.create')}}"><i class="menu-icon icon-bullhorn"></i>Soru Oluştur </a>
                        </li>
                        <li><a href="{{route('question.index')}}"><i class="menu-icon icon-inbox"></i>Soru Görüntüle  </a></li>
                    </ul>

                    <ul class="widget widget-menu unstyled">
                        <li><a href="{{route('user.create')}}"><i class="menu-icon icon-bullhorn"></i>Kullanıcı Oluştur </a>
                        </li>
                        <li><a href="{{route('user.index')}}"><i class="menu-icon icon-inbox"></i>Kullanıcı Görüntüle  </a></li>
                    </ul>
                    <!--/.widget-nav-->

                    <ul class="widget widget-menu unstyled">
                        <li>
                                <a href="{{route('user.exam')}}"><i class="menu-icon icon-bullhorn"></i>Sınav Atama İşlemi </a>
                        </li>
                        <li><a href="{{route('view.exam')}}"><i class="menu-icon icon-inbox"></i>Kullanıcı Sınavını Görüntüle  </a></li>
                    </ul>

                    <ul class="widget widget-menu unstyled">
                        <li>
                            <a href="{{route('result')}}"><i class="menu-icon icon-bullhorn"></i>Sonuç Görüntüle </a>
                        </li>

                    </ul>


                    <!--/.widget-nav-->
                    <ul class="widget widget-menu unstyled">

                        <li>
                            <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                <i class="icon-inbox"></i>{{ __('Çıkış Yap') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                @csrf
                            </form>
                        </li>
                    </ul>
                </div>
                <!--/.sidebar-->
            </div>
            <!--/.span3-->
