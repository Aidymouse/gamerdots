if ! has("python3")
	echo  "DIE!"
    finish
endif
python3 import sys, os, vim
python3 sys.path.insert(0, os.path.dirname(vim.eval('expand("<sfile>")')))
python3 import autotag

function! autotag#Run()
	echo "Running autotag!"
   if exists("b:netrw_method")
      return
   endif
   python3 autotag.autotag()
   if exists(":TlistUpdate")
      TlistUpdate
   endif
endfunction
