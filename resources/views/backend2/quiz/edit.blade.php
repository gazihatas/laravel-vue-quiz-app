@extends('backend2.layouts.master')

@section('title','create quiz')

@section('content')


    <div class="container-fluid">
        <div class="card">
            <div class="card-header pb-0">
                <h5>Sınav Güncelleme Formu</h5>
            </div>
            <div class="card-body">

                @if(Session::has('message'))
                    <div class="alert alert-success">{{Session::get('message')}}</div>
                @endif

                <form class="theme-form mega-form" action="{{route('quiz.update',[$quiz->id])}}" method="POST">
                    @csrf
                    {{method_field('PUT')}}
                    <!-- Sınav Adı -->
                    <div class="mb-3">
                        <label class="col-form-label">Sınav Adı</label>
                        <input type="text" name="name" value="{{$quiz->name}}" class="form-control" placeholder="name of a quiz">

                        @error('name')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <label class="col-form-label">Sınav Açıklama</label>
                        <textarea name="description" class="form-control" cols="10" rows="10">{{$quiz->description}}</textarea>
                        @error('description')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <label class="col-form-label">Sınav Süresi</label>
                        <input type="number" name="minutes" value="{{$quiz->minutes}}" class="form-control" placeholder="Sınav süresi">

                        @error('minutes')
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

