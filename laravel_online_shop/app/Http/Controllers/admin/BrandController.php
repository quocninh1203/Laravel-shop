<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use Illuminate\Http\Request;
use Validator;

class BrandController extends Controller
{
    public function index(Request $request){
        $brands = Brand::latest('id');

        if($request->get('keyword')){
            $brands = $brands->where('name','like','%'.$request->keyword.'%');
        }

        $brands = $brands->paginate(10);

        return View('admin.brands.list',compact('brands'));
    }

    public function create(){
        return View('admin.brands.create');
    }

    public function store(Request $request){
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:brands',
        ]);

        if($validator->passes()){
            $brand = new Brand();
            $brand->name = $request->name;
            $brand->slug = $request->slug;
            $brand->status = $request->status;
            $brand->save();

            $request->session()->flash('success','Brand added succsessfully');

            return response()->json([
                'status' => true,
                'message' => "Brand added succsessfully"
            ]);

        }else{
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }
    }

    public function edit($id, Request $request){
        $brand = Brand::find($id);

        if(empty($brand)){
            $request->session()->flash('error','Brand not found');
            return redirect()->route('brands.index');
        }
        
        $data['brand'] = $brand;
        return view('admin.brands.edit',$data);
    }

    public function update(Request $request, $id){

        $brand = Brand::find($id);

        if(empty($brand)){
            $request->session()->flash('error','Brand not found');
            return response()->json([
                'status' => false,
                'notFound' => true
            ]);
        }
        
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:brands,slug,'.$brand->id.',id',
        ]);

        if($validator->passes()){
            $brand->name = $request->name;
            $brand->slug = $request->slug;
            $brand->status = $request->status;
            $brand->save();

            $request->session()->flash('success','Brand updated succsessfully');

            return response()->json([
                'status' => true,
                'message' => "Brand updated succsessfully"
            ]);

        }else{
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }      
    }
    public function destroy($brandId, Request $request){
        $brand = Brand::find($brandId);
        if (empty($brand)) {
            $request->session()->flash('error','Brand not found');
            return response()->json([
                'status' => true,
                'message' => 'Brand not found'
            ]);
        }

        $brand->delete();

        $request->session()->flash('success','Brand deleted successfully');

        return response()->json([
            'status' => true,
            'message' => 'Brand deleted successfully'
        ]);
    }
}
