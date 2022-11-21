@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">

        <div class="col-md-8">
            @if(Session::has('error'))
                <div class="alert alert-danger">{{Session::get('error')}}</div>
            @endif
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
                                <a href="/quiz/{{$quiz->id}}">
                                    <button class="btn btn-success">Sınava Başla</button>
                                </a>
                            @else
                                <a href="/result/user/{{auth()->user()->id}}/quiz/{{$quiz->id}}">View Results</a>
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
<script>
    import ExampleComponent from "@/components/ExampleComponent.vue";
    export default {
        components: {ExampleComponent}
    }
</script>
