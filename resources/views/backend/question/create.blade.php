@extends('backend.layouts.master')

@section('title','create question')

@section('content')
    <div class="span9">
        <div class="content">

            @if(Session::has('message'))
                <div class="alert alert-success">{{Session::get('message')}}</div>
            @endif

            <form action="{{route('question.store')}}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="module">
                    <div class="module-head">
                        <h3>Create Question</h3>
                    </div>

                    <div class="module-body">
                        <div class="control-group">
                            <div class="control-label" >Choose Quiz</div>
                            <div class="controls">
                                <select name="quiz" class="span8">
                                    @foreach(App\Models\Quiz::all() as $quiz)
                                        <option value="{{$quiz->id}}">{{$quiz->name}}</option>
                                    @endforeach
                                </select>
                            </div>

                            @error('question')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>
                    </div>

                    <div class="module-body">
                        <div class="control-group">
                            <label class="control-label">Question Name</label>
                            <div class="controls">
                                {{--
                                <input type="text" name="question" value="{{old('question')}}" class="span8" placeholder="name of a quiz">
                                --}}
                                <textarea class="form-control mt-5" name="question" id="editor"></textarea>
                                @error('question')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="control-group">
                                <label class="control-label">Options</label>
                                <div class="controls">
                                    @for($i=0;$i<4;$i++)
                                    <input type="text" name="options[]" class="span7 @error('options') border-red @enderror"
                                           placeholder="options{{$i+1}}" value="{{old('options.[$i]')}}" required>

                                    <input type="radio" name="correct_answer" value="{{$i}}">
                                    <span>Is correct answer</span>
                                    @endfor

                                    @error('question')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>


                        </div>
                    </div>

                    <div class="module-body">
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn btn-success">Submit</button>
                            </div>
                        </div>
                    </div>

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
