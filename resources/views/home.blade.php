@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">

        <div class="col-md-8">
            @if(Session::has('error'))
                <div class="alert alert-danger">{{Session::get('error')}}</div>
            @endif
            <div class="card">
             <div class="card-header">Exam</div>
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
                                <a href="user/quiz/{{$quiz->id}}">
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

        <div class="col-md-4">
            <div class="card">
                <div class="card-header">User Profile</div>
                <div class="card-body">
                    <p>Email:    {{auth()->user()->email}}</p>
                    <p>Meslek:   {{auth()->user()->occupation}}</p>
                    <p>Address:  {{auth()->user()->address}}</p>
                    <p>Telefon:  {{auth()->user()->phone}}</p>
                </div>
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
