function tdir
      set dir (mkdir -d)
      set cur_dir $PWD
      cd $dir
      fish
      cd $cur_dir
      rm -rf $dir
end
