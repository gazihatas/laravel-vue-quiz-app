@extends('backend.layouts.master')

@section('title','list user')

@section('content')

    <div class="span9">
        <div class="content">

            @if(Session::has('message'))
                <div class="alert alert-success">{{Session::get('message')}}</div>
            @endif

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
                            <th>Email</th>
                            <th>Password</th>
                            <th>Occupation(Meslek)</th>
                            <th>Address</th>
                            <th>Phone</th>
                            <th></th>
                            <th></th>
                        </tr>
                        </thead>

                        <tbody>
                        @if(count($users)>0)
                            @foreach($users as $key=>$user)
                                <tr>
                                    <td>{{$key+1}}</td>
                                    <td>{{$user->name}}</td>
                                    <td>{{$user->email}}</td>
                                    <td>{{$user->visible_password}}</td>
                                    <td>{{$user->occupation}}</td>
                                    <td>{{$user->address}}</td>
                                    <td>{{$user->phone}}</td>

                                    <td>
                                        <a href="{{route('user.edit',[$user->id])}}">
                                            <button class="btn btn-primary">Edit</button>
                                        </a>
                                    </td>
                                    <td>
                                        <form id="delete-form{{$user->id}}" method="POST" action="{{route('user.destroy',[$user->id])}}">
                                            @csrf
                                            {{method_field('DELETE')}}
                                        </form>

                                        <a href="#"
                                           onclick="
                                               if(confirm('Do you want to delete?')){
                                                    event.preventDefault();
                                                    document.getElementById('delete-form{{$user->id}}').submit()
                                               }else{
                                               event.preventDefault();
                                               }
                                                ">
                                            <input type="submit" class="btn btn-danger" value="Delete">
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        @else
                            <td>No user to display</td>
                        @endif
                        </tbody>
                    </table>
                    <div class="pagination pagination-centered">
                        {{$users->links()}}
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="span9">
        <div class="content">

            @if(Session::has('message'))
                <div class="alert alert-success">{{Session::get('message')}}</div>
            @endif

            <div class="module">
                <div class="module-head">
                    <h3>All Quiz</h3>
                </div>

                <div class="module-body">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Ad</th>
                            <th>Açıklama</th>
                            <th>Dakika</th>
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
                                        <a href="{{route('quiz.question',[$quiz->id])}}">
                                            <button class="btn btn-inverse">Soruyu Görüntüle</button>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="{{route('quiz.edit',[$quiz->id])}}">
                                            <button class="btn btn-primary">Düzenle</button>
                                        </a>
                                    </td>
                                    <td>
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
                                    </td>
                                </tr>
                            @endforeach
                        @else
                            <td>Gösterilecek Kullanıcı yok</td>
                        @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

@endsection
