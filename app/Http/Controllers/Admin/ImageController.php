<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Images;
use App\Models\Abouts;
use App\Models\Galeris;
use App\Models\Homes;
use App\Models\Layanans;
use Illuminate\Http\RedirectResponse;
use Illuminate\View\View;
use Illuminate\Support\Facades\Storage; 

class ImageController extends Controller
{
    public function ImageIndex()
    {
        $images = Images::all();
        return view('admin.pages.image.index', compact('images'));
    }

    public function ImageCreate()
    {
        return view('admin.pages.image.create');
    }

    public function ImageStore(Request $request)
    {

        $validated = $request->validate([
            'resolusi' => 'required',
            'path' => 'required|image',
        ]);
        $path = $request->file('path')->store('images', 'public');
        // $path = $request->file('path')->store('images');
        // Dapatkan resolusi gambar
        // $imagePath = Storage::disk('public')->path($path);
        // list($width, $height) = getimagesize($imagePath);
        // $resolusi = "{$width}x{$height}";

        Images::create([
            'resolusi' => $validated['resolusi'],
            // 'resolusi' => $resolusi,
            'path' => $path,
        ]);

        return redirect()->route('image.index')->with('success', 'Image successfully.');
    }

    public function ImageEdit($id)
    {
        $image = Images::findOrFail($id);
        return view('admin.pages.image.edit', compact('image'));
    }

    public function ImageUpdate(Request $request, $id)
    {
        $validated = $request->validate([
            'resolusi' => 'required',
            'path' => 'image',
        ]);

        $image = Images::findOrFail($id);
        $path = $image->path;

        if ($request->hasFile('path')) {
            $path = $request->file('path')->store('images', 'public');
        }

        $image->update([
            'resolusi' => $validated['resolusi'],
            'path' => $path,
        ]);

        return redirect()->route('image.index')->with('success', 'Image uploaded successfully.');
    }

    public function ImageView($id)
    {
        $image = Images::findOrFail($id);
        return view('admin.pages.image.view', compact('image'));
    }

    // public function ImageDelete($id)
    // {
    //     $image = Images::findOrFail($id);
    //     $image->delete();
    //     return redirect()->route('admin.pages.image.index')->with('success', 'Image Delete successfully.');
    // }
    public function ImageDelete($id)
    {
        $image = Images::findOrFail($id);
        
        // Hapus gambar dari storage
        Storage::disk('public')->delete($image->path);
        
        // Hapus record dari database
        $image->delete();
    
        return redirect()->route('image.index')->with('success', 'Image deleted successfully.');
    }
    
    // public function ImagePageIndex()
    // {
    //     return view('admin.image.index');
    // }
    // public function ImagePageEdit()
    // {
    //     return view('admin.image.edit');
    // }
    // public function ImagePageView()
    // {
    //     return view('admin.image.view');
    // }
    // public function ImagePageDelete()
    // {
    //     return view('admin.image.delete');
    // }
}
