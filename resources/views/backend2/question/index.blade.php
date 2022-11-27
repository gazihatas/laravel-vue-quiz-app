@extends('backend2.layouts.master')

@section('title','Soru listesi')

@section('content')
    <div class="container-fluid">
        <div class="card">
            @if(Session::has('message'))
                <div class="alert alert-success">{{Session::get('message')}}</div>
            @endif
            <div class="card-header">
               <span> <h5>Tüm Sorular</h5></span>
            </div>
            <div class="table-responsive">
                <table class="table ">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Soru</th>
                        <th scope="col">Sınav</th>
                        <th scope="col">Oluşturuldu</th>
                        <th scope="col">İşlemler</th>
                    </tr>
                    </thead>
                    @if(count($questions)>0)
                        @foreach($questions as $key=>$question)
                            <tr>
                                <td scope="row">{{$key+1}}</td>
                                <td>{!!$question->question!!}</td>
                                <td>{{$question->quiz->name}}</td>
                                <td>{{date('F d,Y',strtotime($question->created_at))}}</td>
                                <td>
                                    <div class="btn-group">
                                        <a href="{{route('question.show',[$question->id])}}">
                                            <button class="btn btn-sm btn-secondary"><i class="fa fa-info-circle"></i></button>
                                        </a>


                                        <a href="{{route('question.edit',[$question->id])}}">
                                            <button class="btn btn-sm btn-primary"><i class="fa fa-pen"></i></button>
                                        </a>

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

                                            <button type="submit" class="btn btn-sm btn-danger">
                                                <i class="fa fa-times"></i>
                                            </button>
                                        </a>
                                    </div>

                            </tr>
                        @endforeach
                    @else
                        <td>Gösterilecek soru yok</td>
                        @endif
                        </tbody>
                </table>

                <div class="pagination">
                    {{$questions->links()}}
                </div>
            </div>
        </div>
    </div>


@endsection
