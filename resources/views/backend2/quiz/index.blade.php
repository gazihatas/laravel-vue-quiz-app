@extends('backend2.layouts.master')

@section('title','list quiz')

@section('content')
    <div class="container-fluid">
        <div class="card">
            @if(Session::has('message'))
                <div class="alert alert-success">{{Session::get('message')}}</div>
            @endif
            <div class="card-header">
                <span><h5>Tüm Sınavların Listesi</h5></span>
            </div>
            <div class="table-responsive">
                <table class="table table-border-horizontal">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Ad</th>
                        <th scope="col">Açıklama</th>
                        <th scope="col">Dakika</th>
                        <th scope="col">İşlemler</th>
                    </tr>
                    </thead>
                    @if(count($quizzes)>0)
                        @foreach($quizzes as $key=>$quiz)
                            <tr>
                                <td scope="row">{{$key+1}}</td>
                                <td>{{$quiz->name}}</td>
                                <td>{{$quiz->description}}</td>
                                <td>{{$quiz->minutes}}</td>
                                <td>
                                    <div class="btn-group">
                                        <a href="{{route('quiz.question',[$quiz->id])}}">
                                            <button class="btn btn-warning">Görüntüle</button>
                                        </a>
                                        <a href="{{route('quiz.edit',[$quiz->id])}}">
                                            <button class="btn btn-primary">Düzenle</button>
                                        </a>

                                        <form id="delete-form{{$quiz->id}}" method="POST" action="{{route('quiz.destroy',[$quiz->id])}}">
                                            @csrf
                                            {{method_field('DELETE')}}
                                        </form>

                                        <a href="#"
                                           onclick="
                                               if(confirm('Silmek istiyor musun?')){
                                                    event.preventDefault();
                                                    document.getElementById('delete-form{{$quiz->id}}').submit()
                                               }else{
                                               event.preventDefault();
                                               }
                                                ">
                                            <input type="submit" class="btn btn-danger" value="Delete">
                                        </a>
                                    </div>

                            </tr>
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
