@extends('backend.layouts.master')

@section('title','user result')

@section('content')

    <div class="span9">
        <div class="content">
            <div class="module">
                <div class="module-head">
                    <h3>Tüm Sınav</h3>
                </div>

                <div class="module-body">
                    <table class="table table-striped">
                        <thead>
                           <tr>
                               <th>#</th>
                               <th>Test</th>
                               <th>Toplam Soru</th>
                               <th>Deneme Sorusu</th>
                               <th>Doğru Cevap</th>
                               <th>Yanlış Cevap</th>
                               <th>Yüzde</th>
                           </tr>
                        </thead>

                        <tbody>
                        @foreach($quiz as $q)
                            <tr>
                                <td>1</td>
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

                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Soru</th>
                            <th>Cevap Verildi</th>
                            <th>Sonuç</th>
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
    </div>

@endsection
