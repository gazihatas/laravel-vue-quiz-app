<?php

namespace App\Http\Controllers;

use App\Models\Quiz;
use Illuminate\Http\Request;

class ExamController extends Controller
{
    public function create()
    {
        return view('backend.exam.create');
    }

    public function assignExam(Request $request)
    {
        $quiz = (new Quiz)->assignExam($request->all());
        return redirect()->back()->with('message','Sınav kullanıcıya başarılı bir şekilde atandı.');
    }
}
