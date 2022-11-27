@extends('backend2.layouts.master')

@section('title','user result')

@section('content')


    <div class="container-fluid">
        <div class="card">
            @if(Session::has('message'))
                <div class="alert alert-success">{{Session::get('message')}}</div>
            @endif
            <div class="card-header">
                <span><h5>Tüm Sınavlar</h5></span>
            </div>
            <div class="table-responsive">
                <table class="table table-border-horizontal">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Test</th>
                        <th scope="col">Toplam Soru</th>
                        <th scope="col">Deneme Sorusu</th>
                        <th scope="col">Doğru Cevap</th>
                        <th scope="col">Yanlış Cevap</th>
                        <th scope="col">Yüzde</th>
                    </tr>
                    </thead>
                    @foreach($quiz as $q)
                            <tr>
                                <td scope="row">1</td>
                                <td>{{$q->name}}</td>
                                <td>{{$totalQuestions}}</td>
                                <td>{{$attemptQuestion}}</td>
                                <td>{{$userCorrectedAnswer}}</td>
                                <td>{{$userWrongAnswer}}</td>
                                <td>{{round($percentage,2)}}</td>
                            </tr>
                        @endforeach
                        </tbody>
                </table>

                <table class="table table-border-horizontal">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Soru</th>
                        <th scope="col">Cevap Verildi</th>
                        <th scope="col">Sonuç</th>
                    </tr>
                    </thead>

                    <tbody>
                    @foreach($results as $key=>$result)
                        <tr>
                            <td>{{$key+1}}</td>
                            <td>{!! $result->question->question !!}</td>
                            <td>{{$result->answer->answer}}</td>
                            @if($result->answer->is_correct)
                                <td>Doğru</td>
                            @else
                                <td>Yanlış</td>
                            @endif
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>




@endsection
