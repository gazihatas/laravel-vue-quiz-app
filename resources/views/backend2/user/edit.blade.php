@extends('backend2.layouts.master')

@section('title','Update user')

@section('content')


    <div class="container-fluid">
        <div class="card">
            <div class="card-header pb-0">
                <h5>Kullanıcı Güncelle</h5>
            </div>
            <div class="card-body">

                @if(Session::has('message'))
                    <div class="alert alert-success">{{Session::get('message')}}</div>
                @endif

                <form class="theme-form mega-form" action="{{route('user.update',[$user->id])}}" method="POST">
                    @csrf
                    {{method_field('PUT')}}
                    <!-- İsim Soyisim -->
                    <div class="mb-3">
                        <label class="col-form-label">İsim Soyisim</label>
                        <input type="text" name="name" value="{{$user->name}}" class="form-control @error('name') border-red @enderror">

                        @error('name')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>

                    <!-- E-posta-->
                    <div class="mb-3">
                        <label class="col-form-label">E-posta</label>
                        <input type="email" name="email" value="{{$user->email}}" class="form-control @error('email') border-red @enderror"
                               placeholder="Eposta">

                        @error('email')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>

                    <!-- Şifre-->
                    <div class="mb-3">
                        <label class="col-form-label">Şifre</label>
                        <input type="text" name="password" value="{{$user->visible_password}}" class="form-control @error('password') border-red @enderror"
                               placeholder="şifre giriniz.">

                        @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>

                    <!-- Meslek-->
                    <div class="mb-3">
                        <label class="col-form-label">Meslek</label>
                        <input type="text" name="occupation" value="{{$user->occupation}}" class="form-control @error('occupation') border-red @enderror"
                               placeholder="Meslek giriniz.">

                        @error('occupation')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>

                    <!-- Adres -->
                    <div class="mb-3">
                        <label class="col-form-label">Adres</label>
                        <input type="text" name="address" value="{{$user->address}}" class="form-control @error('address') border-red @enderror"
                               placeholder="adresi giriniz.">

                        @error('address')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>

                    <!-- Telefon -->
                    <div class="mb-3">
                        <label class="col-form-label">Telefon</label>
                        <input type="number" name="phone" value="{{$user->phone}}" class="form-control @error('phone') border-red @enderror"
                               placeholder="Telefon numaranızı giriniz.">

                        @error('address')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>



            </div>
            <div class="card-footer">
                <button class="btn btn-primary">Güncelle</button>
            </div>
            </form>
        </div>
    </div>







@endsection
