@extends('backend2.layouts.master')

@section('title','exam assigned user')

@section('content')
    <div class="container-fluid">
        <div class="card">
            @if(Session::has('message'))
                <div class="alert alert-success">{{Session::get('message')}}</div>
            @endif
            <div class="card-header">
                <span><h5>Kullanıcıya Sınav Ata</h5></span>
            </div>
            <div class="table-responsive">
                <table class="table table-border-horizontal">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Quiz</th>
                        <th scope="col">İşlemler</th>
                    </tr>
                    </thead>
                    @if(count($quizzes)>0)
                        @foreach($quizzes as $quiz)
                            @foreach($quiz->users as $key=>$user)
                            <tr>
                                <<td>{{$key+1}}</td>
                                <td>{{$user->name}}</td>
                                <td>{{$quiz->name}}</td>
                                <td>
                                    <div class="btn-group">
                                        <a href="{{route('quiz.question',[$quiz->id])}}">
                                            <button class="btn btn-inverse">Soru Görüntüle</button>
                                        </a>

                                        <form action="{{route('exam.remove')}}" method="POST">
                                            @csrf
                                            <input type="hidden" name="user_id" value="{{$user->id}}">
                                            <input type="hidden" name="quiz_id" value="{{$quiz->id}}">
                                            <button type="submit" class="btn btn-danger">AtamayıKaldır</button>
                                        </form>
                                    </div>

                            </tr>
                                @endforeach
                            @endforeach
                        @else
                        <td>Gösterilecek sınav yok</td>
                        @endif
                        </tbody>
                </table>
            </div>
        </div>
    </div>



@endsection
