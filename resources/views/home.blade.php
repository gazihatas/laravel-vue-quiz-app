@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
             <div class="card-header">Gösterge paneli</div>
                @if($isExamAssigned)
                    @foreach($quizzes as $quiz)

                    <div class="card-body">
                        <p>
                            <h3>{{$quiz->name}}</h3>
                        </p>
                        <p>Sınav Hakkında : {{$quiz->description}}</p>
                        <p>Ayrılan Süre : {{$quiz->minutes}} dakika.</p>
                        <p>Soru sayısı : {{$quiz->questions->count()}}</p>
                        <p>
                            @if(!in_array($quiz->id,$wasQuizCompleted))
                                <a href="">
                                    <button class="btn btn-success">Sınava Başla</button>
                                </a>
                            @else
                                <span class="float-right">Tamamlandı!</span>
                            @endif
                        </p>
                    </div>
                    @endforeach
                @else
                    <p>Herhangi bir sınava girmediniz.</p>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection
