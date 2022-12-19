function tdir
      set dir (mktemp -d tmpdir.XXXX)
      set cur_dir $PWD
      cd $dir
      fish
      cd $cur_dir
      rm -rf $dir
end
