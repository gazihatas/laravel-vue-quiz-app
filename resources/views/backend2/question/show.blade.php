@extends('backend2.layouts.master')

@section('title','show quiz')

@section('content')

    <div class="container-fluid">
        <div class="row project-cards">

            <div class="col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="tab-content" id="top-tabContent">
                            <div class="tab-pane fade show active" id="top-home" role="tabpanel" aria-labelledby="top-home-tab">
                                <div class="row">
                                    <div class="col-xxl-12 col-lg-12">
                                        <div class="project-box"><span class="badge badge-primary">Doing</span>
                                            <h6>Soru</h6>

                                            <p>{!! $question->question !!}</p>

                                            <div class="row details">
                                                @foreach($question->answers as $key=>$answer)
                                                    <div class="col-12"><span>{{$key+1}}.{{$answer->answer}}  @if($answer->is_correct)
                                                                <span class="badge badge-success">doğru</span>
                                                            @endif</span></div>

                                                @endforeach
                                            </div>



                                            <div class="customers">
                                                <div class="btn-group">
                                                    <a href="{{route('question.edit',[$question->id])}}">
                                                        <button class="btn btn-primary">Düzenle</button>
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
                                                        <input type="submit" class="btn btn-danger" value="Delete">
                                                    </a>

                                                    <a href="{{route('question.index')}}">
                                                        <button class="btn btn-inverse pull-right">Geri Dön</button>
                                                    </a>
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>






@endsection
