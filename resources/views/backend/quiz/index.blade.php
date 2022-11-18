@extends('backend.layouts.master')

@section('title','list quiz')

@section('content')

    <div class="span9">
        <div class="content">
            <div class="module">
                <div class="module-head">
                    <h3>All Quiz</h3>
                </div>

                <div class="module-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Description</th>
                                <th>Minutes</th>
                                <th></th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>

                        <tbody>
                            @if(count($quizzes)>0)
                                @foreach($quizzes as $key=>$quiz)
                                    <tr>
                                        <td>{{$key+1}}</td>
                                        <td>{{$quiz->name}}</td>
                                        <td>{{$quiz->description}}</td>
                                        <td>{{$quiz->minutes}}</td>
                                        <td>
                                            <a href="{{route('quiz.edit',[$quiz->id])}}">
                                                <button class="btn btn-primary">Edit</button>
                                            </a>
                                        </td>
                                        <td>
                                            <button class="btn btn-danger">Delete</button>
                                        </td>
                                    </tr>
                                @endforeach
                            @else
                                <td>No quiz to display</td>
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

@endsection
