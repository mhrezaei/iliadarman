<?php

namespace App\Http\Requests\Manage;

use App\Http\Requests\Request;
use App\Providers\ValidationServiceProvider;

class AdminSaveRequest extends Request
{

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true ;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $input = $this->all();
        return [
            'id' => 'numeric' ,
            'name_first' => 'required' ,
            'name_last' => 'required' ,
            'email' => 'required|email|unique:users,email,'.$input['id'].',id',
            'mobile' => 'required|phone:mobile' ,
        ];
    }

    public function all()
    {
        $value	= parent::all();
        $purified = ValidationServiceProvider::purifier($value,[
            'id'  =>  'ed|numeric',
            'action'  =>  'lower',
            'mobile' => 'ed' ,
        ]);
        return $purified;

    }
}
