@extends('backend.layouts.master')

@section('title','Update user')

@section('content')

    <div class="span9">
        <div class="content">

            @if(Session::has('message'))
                <div class="alert alert-success">{{Session::get('message')}}</div>
            @endif

            <div class="module">
                <div class="module-head">
                    <h3>Update User</h3>
                </div>

                <div class="module-body">
                    <form action="{{route('user.update',[$user->id])}}" method="POST">
                        @csrf
                        {{method_field('PUT')}}
                        <div class="control-group">
                            <label class="control-label">Full Name</label>
                            <div class="controls">
                                <input type="text" name="name" class="span8 @error('name') border-red @enderror"
                                       placeholder="name" value="{{$user->name}}">
                            </div>

                            @error('name')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>

                        {{--
                        <div class="control-group">
                            <label for="email" class="control-label">Email</label>
                            <div class="controls">
                                <input type="text" name="email" class="span8 @error('email') border-red @enderror"
                                       placeholder="name" value="{{old('email')}}">
                            </div>

                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>
                        --}}

                        <div class="control-group">
                            <label for="password" class="control-label">Password</label>
                            <div class="controls">
                                <input type="text" name="password" class="span8 @error('password') border-red @enderror"
                                       placeholder="name" value="{{$user->visible_password}}">
                            </div>

                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>

                        <div class="control-group">
                            <label for="occupation" class="control-label">Occupation(Meslek)</label>
                            <div class="controls">
                                <input type="text" name="occupation" class="span8 @error('occupation') border-red @enderror"
                                       placeholder="name" value="{{$user->occupation}}">
                            </div>

                            @error('occupation')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>

                        <div class="control-group">
                            <label for="address" class="control-label">Adres</label>
                            <div class="controls">
                                <input type="text" name="address" class="span8 @error('address') border-red @enderror"
                                       placeholder="name" value="{{$user->address}}">
                            </div>

                            @error('address')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>

                        <div class="control-group">
                            <label for="phone" class="control-label">Phone</label>
                            <div class="controls">
                                <input type="text" name="phone" class="span8 @error('phone') border-red @enderror"
                                       placeholder="phone" value="{{$user->phone}}">
                            </div>

                            @error('phone')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>



                        <div class="control-group">
                            <button type="submit" class="btn btn-success">Update User</button>
                        </div>

                    </form>
                </div>
            </div>

        </div>
    </div>


    @extends('backend2.layouts.master')

    @section('title','create user')

    @section('content')

        <div class="span9">
            <div class="content">

                @if(Session::has('message'))
                    <div class="alert alert-success">{{Session::get('message')}}</div>
                @endif

                <div class="module">
                    <div class="module-head">
                        <h3>Kullanıcı Oluştur</h3>
                    </div>

                    <div class="module-body">
                        <form action="{{route('user.store')}}" method="POST">
                            @csrf

                            <div class="control-group">
                                <label class="control-label">İsim Soyisim</label>
                                <div class="controls">
                                    <input type="text" name="name" class="span8 @error('name') border-red @enderror"
                                           placeholder="name" value="{{old('name')}}">
                                </div>

                                @error('name')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="control-group">
                                <label for="email" class="control-label">Email</label>
                                <div class="controls">
                                    <input type="text" name="email" class="span8 @error('email') border-red @enderror"
                                           placeholder="name" value="{{old('email')}}">
                                </div>

                                @error('email')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="control-group">
                                <label for="password" class="control-label">Şifre</label>
                                <div class="controls">
                                    <input type="text" name="password" class="span8 @error('password') border-red @enderror"
                                           placeholder="name" value="{{old('password')}}">
                                </div>

                                @error('password')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="control-group">
                                <label for="occupation" class="control-label">Meslek</label>
                                <div class="controls">
                                    <input type="text" name="occupation" class="span8 @error('occupation') border-red @enderror"
                                           placeholder="name" value="{{old('occupation')}}">
                                </div>

                                @error('occupation')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="control-group">
                                <label for="address" class="control-label">Adres</label>
                                <div class="controls">
                                    <input type="text" name="address" class="span8 @error('address') border-red @enderror"
                                           placeholder="name" value="{{old('address')}}">
                                </div>

                                @error('address')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="control-group">
                                <label for="phone" class="control-label">Telefon</label>
                                <div class="controls">
                                    <input type="number" name="phone" class="span8 @error('phone') border-red @enderror"
                                           placeholder="phone" value="{{old('phone')}}">
                                </div>

                                @error('phone')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>



                            <div class="control-group">
                                <button type="submit" class="btn btn-success">Kullanıcı Oluştur</button>
                            </div>

                        </form>
                    </div>
                </div>

            </div>
        </div>

    @endsection


@endsection
