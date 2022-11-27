@extends('backend2.layouts.master')

@section('title','user result')

@section('content')

    <div class="span9">
        <div class="content">

            @if(Session::has('message'))
                <div class="alert alert-success">{{Session::get('message')}}</div>
            @endif

            <div class="module">
                <div class="module-head">
                    <h3>Kullanıcı Cevapları</h3>
                </div>

                <div class="module-body">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>İsim</th>
                            <th>Sınav</th>
                            <th>İşlem</th>
                        </tr>
                        </thead>

                        <tbody>
                        @if(count($quizzes)>0)
                            @foreach($quizzes as $quiz)
                                @foreach($quiz->users as $key=>$user)
                                    <tr>
                                        <td>{{$key+1}}</td>
                                        <td>{{$user->name}}</td>
                                        <td>{{$quiz->name}}</td>
                                        <td>
                                            <div class="btn-group">
                                            <a href="{{route('quiz.question',[$quiz->id])}}">
                                                <button class="btn btn-sm btn-warning">Soruyu Görüntüle</button>
                                            </a>

                                            <a href="result/{{$user->id}}/{{$quiz->id}}">
                                                <button class="btn btn-sm btn-primary">Sonucu Görüntüle</button>
                                            </a>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            @endforeach
                        @else
                            <td>görüntülenecek kullanıcı yok</td>
                        @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

@endsection
