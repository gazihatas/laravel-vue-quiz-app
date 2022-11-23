@extends('backend.layouts.master')

@section('title','edit quiz')

@section('content')
    <div class="span9">
        <div class="content">

            @if(Session::has('message'))
                <div class="alert alert-success">{{Session::get('message')}}</div>
            @endif

            <form action="{{route('quiz.update',[$quiz->id])}}" method="POST">
                @csrf
                {{method_field('PUT')}}

                <div class="module">
                    <div class="module-head">
                        <h3>Update Quiz</h3>
                    </div>
                    <div class="module-body">
                        <div class="control-group">
                            <label class="control-label">Sınav Adı</label>
                            <div class="controls">
                                <input type="text" name="name" value="{{$quiz->name}}" class="span8" placeholder="bir sınavın adı">

                                @error('name')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            <label class="control-label">Sınav Açıklaması</label>
                            <div class="controls">
                                <textarea name="description" class="span8">{{$quiz->description}}</textarea>
                                @error('description')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            <label class="control-label">Dakika</label>
                            <div class="controls">
                                <input type="text" name="minutes" value="{{$quiz->minutes}}" class="span8" placeholder="name of a quiz">

                                @error('minutes')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="controls">
                                <button type="submit" class="btn btn-success">Kaydet</button>
                            </div>
                        </div>
                    </div>
                </div>

            </form>
        </div>
    </div>
@endsection
