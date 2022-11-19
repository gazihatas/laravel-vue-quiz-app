<?php

namespace App\Http\Controllers;

use App\Models\Quiz;
use App\Models\Result;
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

    public function userExam(Request $request)
    {
        $quizzes = Quiz::get();
        return view('backend.exam.index',compact('quizzes'));
    }

    public function removeExam(Request $request)
    {
        $userId= $request->get('user_id');
        $quizId= $request->get('quiz_id');
        $quiz =Quiz::find($quizId);
        $result = Result::where('quiz_id',$quizId)->where('user_id',$userId)->exists();

        if($result)
        {
            return redirect()->back()->with('message','Bu quiz kullanıcı tarafından oynandığından kaldırılamaz!');
        }else{
            $quiz->users()->detach($userId);
            return redirect()->back()->with('message','Sınav artık o kullanıcıya atanmadı!');
        }
    }
}
