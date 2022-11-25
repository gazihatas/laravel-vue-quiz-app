@extends('backend2.layouts.master')

@section('title','list user')

@section('content')


    <div class="container-fluid">
        <div class="card">
            @if(Session::has('message'))
                <div class="alert alert-success">{{Session::get('message')}}</div>
            @endif
            <div class="card-header">
                <h5>Tüm Kullanıcılar</h5></span>
            </div>
            <div class="table-responsive">
                <table class="table table-border-horizontal">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">İsim Soyisim</th>
                        <th scope="col">Email</th>
                        <th scope="col">Şifre</th>
                        <th scope="col">Meslek</th>
                        <th scope="col">Adres</th>
                        <th scope="col">Telefon</th>
                        <th  scope="col">İşlemler</th>
                    </tr>
                    </thead>
                    @if(count($users)>0)
                        @foreach($users as $key=>$user)
                            <tr>
                                <td scope="row">{{$key+1}}</td>
                                <td>{{$user->name}}</td>
                                <td>{{$user->email}}</td>
                                <td>{{$user->visible_password}}</td>
                                <td>{{$user->occupation}}</td>
                                <td>{{$user->address}}</td>
                                <td>{{$user->phone}}</td>
                                <td>
                                    <div class="btn-group">

                                        <a href="{{route('user.edit',[$user->id])}}">
                                            <button class="btn btn-primary">Düzenle</button>
                                        </a>


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
                                            <input type="submit" class="btn btn-danger" value="Sil">
                                        </a>
                                    </div>

                            </tr>
                        @endforeach
                    @else
                        <td>Gösterilecek kullanıcı yok</td>
                        @endif
                        </tbody>
                </table>
                <div class="pagination pagination-centered">
                    {{$users->links()}}
                </div>
            </div>
        </div>
    </div>


@endsection
