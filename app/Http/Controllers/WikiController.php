<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Newwiki;
use App\Jenis;
use Illuminate\Http\UploadedFile; 
class WikiController extends Controller
{
    public function index(Request $request)
    {
    
        $cari = $request->get('cari');
        $data_newwiki = \App\Newwiki::all();

        if($cari){
            $data_newwiki = Newwiki::where("judul", $request->cari)->orWhere('judul',"LIKE","%".$request->cari."%")->get();
        }

        $data_wiki = Newwiki::latest()->get()->random(3);
        
        $jenis = Jenis::all();

        return view ('user.wiki.wiki', compact(['data_newwiki','data_wiki','jenis']));
    }

    public function jeniswiki(Jenis $jenis)
    {
        $data_newwiki = $jenis->wikis()->get();
        $jenis = \App\Jenis::withCount('wikis')->get();
        $data_wiki = Newwiki::latest()->get()->random(3);

        return view ('user.wiki.wiki', compact('data_newwiki','data_wiki','jenis'));
    }

    public function bacawiki(Newwiki $newwiki)
    {
        $wiki_detail= $newwiki;
        return view ('user.wiki.wiki-baca',compact(['newwiki']));
    }


    public function tambahwiki()
    {
        $jenis = Jenis::all();
        return view ('user.wiki.wiki-tambah',compact('jenis'));
    }

    public function postwiki(Request $request)
    {
        $this->validate($request, [
            'judul' => 'required',
            'deskripsi' => 'required',
            'isi_artikel' => 'required',
            'gambar' => 'required|mimes:png,jpg',
            'editor' => 'required',
            'sumber' => 'required',
            'jenis_id' => 'required'
        ]);
        
        $article = new Newwiki();
        $article->user_id = $request->input('user_id');
        $article->editor = $request->input('editor');       
        $article->judul = $request->input('judul');
        $article->isi_artikel = $request->input('isi_artikel');
        $article->sumber =$request->input('sumber');
        $article->deskripsi =$request->input('deskripsi');
        $article->jenis_id =$request->input('jenis_id');

        if($request->file('gambar')){
            $file = $request->file('gambar');
            $extension = $file->getClientOriginalExtension();
            $filename = time() .'.'. $extension;
            $file->move('assets/images/foto/', $filename);
            $article->gambar = $filename;
        }

        $article->save();

        return redirect('/daftar/wiki')->with('sukses', 'Wiki Berhasil Ditambah');
    }

    public function editwiki($id)
    {
        $wiki = \App\Newwiki::find($id);
        $jenis = Jenis::all();
        return view ('user.wiki.wiki-edit',compact('wiki','jenis'));
    }

    public function posteditwiki(Request $request, $id)
     {
        $this->validate($request, [
            'judul' => 'required',
            'deskripsi' => 'required',
            'isi_artikel' => 'required',
            'gambar' => 'mimes:png,jpg',
            'editor' => 'required',
            'sumber' => 'required',
        ]);

         $data_wiki = \App\Newwiki::find($id);

         $data_wiki->isi_artikel = $request->input('isi_artikel');
         $data_wiki->judul = $request->input('judul');
         $data_wiki->editor = $request->input('editor');
         $data_wiki->sumber = $request->input('sumber');
      
         $data_wiki->deskripsi = $request->input('deskripsi');
         
         if ($request->hasfile('gambar')) {
            $file = $request->file('gambar');
            $extension = $file->getClientOriginalExtension();
            $filename = time() .'.'. $extension;
            $file->move('assets/images/foto/', $filename);
            $data_wiki->gambar = $filename;
        }

        $data_wiki->save();

         return redirect('/wiki')->with('sukses', 'Berhasil Edit Wiki');
     }


     public function wikisaya(Request $request)
     {
         $data_wiki= Newwiki::with ('user')->get();
 
         return view ('user.wiki.wikisaya', compact('data_wiki'));
     }



//ADMIN--------------------------------------------------------------------------
    public function tambahdata()
    {
        $jenis = Jenis::all();
        return view ('admin.kelwiki.tambah-wiki',compact('jenis'));
    }

    public function simpan(Request $request)
    {
        $this->validate($request, [
            'judul' => 'required',
            'deskripsi' => 'required',
            'isi_artikel' => 'required',
            'gambar' => 'required|mimes:png,jpg',
            'editor' => 'required',
            'sumber' => 'required',
            'jenis_id' => 'required'
        ]);

        $article = new Newwiki();
        $article->user_id = $request->input('user_id');
        $article->editor = $request->input('editor');       
        $article->judul = $request->input('judul');
        $article->isi_artikel = $request->input('isi_artikel');
        $article->sumber =$request->input('sumber');
        $article->deskripsi =$request->input('deskripsi');
        $article->jenis_id = $request->input('jenis_id');

        if($request->file('gambar')){
            $file = $request->file('gambar');
            $extension = $file->getClientOriginalExtension();
            $filename = time() .'.'. $extension;
            $file->move('assets/images/foto/', $filename);
            $article->gambar = $filename;
        }
        $article->save();
        return redirect('Kelola-Wiki')->with('sukses', 'Data Berhasil Ditambahkan');
    }

    //tampilkeldatawiki
    public function tampildata()
    {
        $data_newwiki = \App\Newwiki::all();
        return view ('admin.kelwiki.kelwiki', compact('data_newwiki'));
    }

     //deletedatawiki
     public function delete($id)
     {
         $data_newwiki = \App\Newwiki::find($id);
         $data_newwiki->delete($data_newwiki);
         return redirect()->back()->with('sukses', 'Data Berhasil Dihapus');
     }

     public function haledit($id)
    {
        $data_wiki = \App\Newwiki::find($id);
        $jenis = Jenis::all();
        return view ('admin.kelwiki.haledit',compact('data_wiki','jenis'));
    }

    public function updatewiki(Request $request, $id)
     {
        $this->validate($request, [
            'judul' => 'required',
            'deskripsi' => 'required',
            'isi_artikel' => 'required',
            'gambar' => 'mimes:png,jpg',
            'editor' => 'required',
            'sumber' => 'required',
            'jenis_id' => 'required'
        ]);

        $isi_artikel = Newwiki::find($id);

        $isi_artikel->isi_artikel = $request->input('isi_artikel');
        $isi_artikel->judul = $request->input('judul');
        $isi_artikel->deskripsi = $request->input('deskripsi');
        $isi_artikel->editor = $request->input('editor');
        $isi_artikel->sumber = $request->input('sumber');
        $isi_artikel->jenis_id = $request->input('jenis_id');

        if ($request->hasfile('gambar')) {
            $file = $request->file('gambar');
            $extension = $file->getClientOriginalExtension();
            $filename = time() .'.'. $extension;
            $file->move('assets/images/foto/', $filename);
            $isi_artikel->gambar = $filename;
        }

        $isi_artikel->save();
        return redirect('/Kelola-Wiki')->with('sukses', 'Data Berhasil Diedit');
     }


}
