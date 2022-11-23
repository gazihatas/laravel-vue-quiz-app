@extends('backend.layouts.master')

@section('title','list quiz')

@section('content')

    <div class="span9">
        <div class="content">

            @if(Session::has('message'))
                <div class="alert alert-success">{{Session::get('message')}}</div>
            @endif

            <div class="module">
                <div class="module-head">
                    <h3>Tüm Sorular</h3>
                </div>

                <div class="module-body">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Soru</th>
                            <th>Sınav</th>
                            <th>Oluşturuldu</th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                        </thead>

                        <tbody>
                        @if(count($questions)>0)
                            @foreach($questions as $key=>$question)
                                <tr>
                                    <td>{{$key+1}}</td>
                                    <td>{!! $question->question!!}</td>
                                    <td>{{$question->quiz->name}}</td>
                                    <td>{{date('F d,Y',strtotime($question->created_at))}}</td>
                                    <td>
                                        <a href="{{route('question.show',[$question->id])}}">
                                            <button class="btn btn-info">Görüntüle</button>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="{{route('question.edit',[$question->id])}}">
                                            <button class="btn btn-primary">Düzenle</button>
                                        </a>
                                    </td>
                                    <td>
                                        <form id="delete-form{{$question->id}}" method="POST" action="{{route('question.destroy',[$question->id])}}">
                                            @csrf
                                            {{method_field('DELETE')}}
                                        </form>

                                        <a href="#"
                                           onclick="
                                               if(confirm('Silmek istiyor musunuz?')){
                                                    event.preventDefault();
                                                    document.getElementById('delete-form{{$question->id}}').submit()
                                               }else    {
                                               event.preventDefault();
                                               }
                                                ">
                                            <input type="submit" class="btn btn-danger" value="Delete">
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        @else
                            <td>Görüntülenecek soru yok</td>
                        @endif
                        </tbody>
                    </table>

                    <div class="pagination pagination-centered">
                        {{$questions->links()}}
                    </div>

                </div>
            </div>
        </div>
    </div>

@endsection
