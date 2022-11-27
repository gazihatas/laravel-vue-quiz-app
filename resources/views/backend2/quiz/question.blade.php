@extends('backend2.layouts.master')

@section('title','quiz questions')

@section('content')

    <div class="container-fluid">
        <div class="card">
            <div class="card-header">
                <span> <h5>Sınav</h5></span>
            </div>

            <div class="card-body">
                <div class="row">
                    <div class="row">
                        <div class="col-xl-6 xl-100 box-col-12">
                            @foreach($quizzes as $quiz)
                            <div class="card">
                                <div class="job-search">
                                    <div class="card-body">
                                        <div class="media"><img class="img-40 img-fluid m-r-20" src="{{asset('admin/admin/../assets/images/job-search/1.jpg')}}" alt="">
                                            <div class="media-body">
                                                <h2 class="f-w-600"><a>Sınav : {{$quiz->name}}</a><span class="badge badge-primary pull-right">New</span></h2>
                                            </div>
                                        </div>
                                        <br><br><br>
                                        @php $key=1; @endphp
                                        @foreach($quiz->questions as $ques)
                                            <table class="table table-message">
                                                <tbody>
                                                <tr class="read">
                                                   <h2 class="header">Soru {{$key++}}</h2>
                                                    {!! $ques->question !!}

                                                    <td class="cell-author hidden-phone hidden-tablet">
                                                        @foreach($ques->answers as $answer)
                                                            <p>
                                                                {{$answer->answer}}

                                                                @if($answer->is_correct)
                                                                    <span class="badge badge-success">
                                                                        doğru cevap
                                                                    </span>
                                                                @endif
                                                            </p>
                                                        @endforeach
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                            <br>
                                        @endforeach

                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>


                    </div>
                </div>
            </div>


        </div>
    </div>


@endsection
