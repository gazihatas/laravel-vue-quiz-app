@extends('backend2.layouts.master')

@section('title','soru oluştur')

@section('content')


    <div class="container-fluid">
        <div class="card">
            <div class="card-header pb-0">
                <h5>Soru Ekle</h5>
            </div>
            <div class="card-body">

                @if(Session::has('message'))
                    <div class="alert alert-success">{{Session::get('message')}}</div>
                @endif

                <form class="theme-form mega-form" action="{{route('question.store')}}" method="POST" enctype="multipart/form-data">
                    @csrf


                    <!-- Sınav Seç -->
                    <div class="mb-3 draggable ui-draggable ui-draggable-handle">
                        <label for="select-1">Soru Ekleyeceğin Sınavı Seç</label>
                        <select class="form-control btn-square" id="select-1" name="quiz">
                            @foreach(App\Models\Quiz::all() as $quiz)
                                <option value="{{$quiz->id}}">{{$quiz->name}}</option>
                            @endforeach
                        </select>
                        <p class="help-block">Example block-level help text here.</p>

                        @error('question')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>

                    <!-- -Soru Oluştur-->
                    <div class="mb-3">
                        <label class="col-form-label">Soru Oluştur</label>
                        <textarea class="form-control" name="question" id="editor"></textarea>

                        @error('question')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>

                    <!-- Seçenekler-->
                    <div class="mb-3">
                        <label class="col-form-label">Seçenekler</label>

                        <label for="">Doğru Cevap</label>
                        @for($i=0;$i<4;$i++)
                        <div class="input-group mt-2">

                            <span class="input-group-text">
                              <i class="fa fa-check"></i><input class="me-0" type="radio" name="correct_answer" value="{{$i}}" data-bs-original-title="" title="">
                            </span>
                            <input class="form-control btn-square @error('options') border-red @enderror"  name="options[]"
                                   type="text" data-bs-original-title="" title=""  placeholder="cevap{{$i+1}}" value="{{old('options.[$i]')}}" required>

                        </div>

                        @endfor

                        @error('question')
                        <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>



            </div>
            <div class="card-footer">
                <button class="btn btn-primary">Kaydet</button>
            </div>
            </form>
        </div>
    </div>

@endsection
@section('js')
    <script src="{{ asset('ckeditor5/ckeditor.js') }}"></script>
    <script>
        ClassicEditor
            .create( document.querySelector( '#editor' ),
                {
                    ckfinder:{
                        uploadUrl:"{{ route('ckeditor.upload').'?_token='.csrf_token()}}"
                    }
                } )
            .then( editor => {
                console.log( editor );
            } )
            .catch( error => {
                console.error( error );
            } );
    </script>
@endsection
