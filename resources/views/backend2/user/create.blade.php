@extends('backend2.layouts.master')

@section('title','create user')

@section('content')


    <div class="container-fluid">
        <div class="card">
            <div class="card-header pb-0">
                <h5>Kullanıcı Oluştur</h5>
            </div>
            <div class="card-body">

                @if(Session::has('message'))
                    <div class="alert alert-success">{{Session::get('message')}}</div>
                @endif

                <form class="theme-form mega-form" action="{{route('user.store')}}" method="POST">
                    @csrf
                    <!-- İsim Soyisim -->
                    <div class="mb-3">
                        <label class="col-form-label">İsim Soyisim</label>
                        <input type="text" name="name" value="{{old('name')}}" class="form-control @error('name') border-red @enderror"
                               placeholder="Kullanıcı adı ve soyadı">

                        @error('name')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>

                    <!-- E-posta-->
                    <div class="mb-3">
                        <label class="col-form-label">E-posta</label>
                        <input type="email" name="email" value="{{old('email')}}" class="form-control @error('email') border-red @enderror"
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
                        <input type="password" name="password" value="{{old('password')}}" class="form-control @error('password') border-red @enderror"
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
                        <input type="text" name="occupation" value="{{old('occupation')}}" class="form-control @error('occupation') border-red @enderror"
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
                        <input type="text" name="address" value="{{old('address')}}" class="form-control @error('address') border-red @enderror"
                               placeholder="adresi giriniz.">

                        @error('address')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>

                    <!-- Telefon -->
                    <div class="mb-3">
                        <label class="col-form-label">Adres</label>
                        <input type="number" name="phone" value="{{old('phone')}}" class="form-control @error('phone') border-red @enderror"
                               placeholder="Telefon numaranızı giriniz.">

                        @error('address')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>



            </div>
            <div class="card-footer">
                <button class="btn btn-primary">Kaydet</button>
            </div>
            </form>
        </div>
    </div>


@endsection

