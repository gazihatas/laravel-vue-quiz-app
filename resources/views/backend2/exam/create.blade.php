@extends('backend2.layouts.master')

@section('title','create question')

@section('content')
    <div class="container-fluid">
        <div class="card">
            <div class="card-header pb-0">
                <h5>Sınav Atama</h5>
            </div>
            <div class="card-body">

                @if(Session::has('message'))
                    <div class="alert alert-success">{{Session::get('message')}}</div>
                @endif

                <form class="theme-form mega-form" action="{{route('exam.assign')}}" method="POST">
                    @csrf
                    <!-- Sınav Seç -->
                    <div class="mb-3">
                        <label class="col-form-label">Sınav Seç</label>
                        <select name="quiz_id" class="form-control">
                            @foreach(App\Models\Quiz::all() as $quiz)
                                <option value="{{$quiz->id}}">{{$quiz->name}}</option>
                            @endforeach
                        </select>

                        @error('question')
                        <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>


                    <!-- Kullanıcı Seç-->
                    <div class="mb-3">
                        <label class="col-form-label">Kullanıcı Seç</label>
                        <select name="user_id" class="form-control">
                            @foreach(App\Models\User::where('is_admin','0')->get() as $user)
                                <option value="{{$user->id}}">{{$user->name}}</option>
                            @endforeach
                        </select>

                        @error('question')
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
