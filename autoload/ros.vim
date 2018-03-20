" File: autoload/ros.vim
" Author: Sergey Alexandrov <alexandrov88@gmail.com>
" Description: ROS plugin

" Load guard {{{

if exists('g:autoloaded_ros') || &cp
    finish
endif
let g:autoloaded_ros = '0.0'

" }}}
" Startup code {{{

exec ':py3 import sys'
exec ':py3 sys.path.append("' . g:ros_plugin_path . '")'
exec ':py3 import rosvim'

" }}}
" Commands {{{

command! -nargs=0 A exec ':py3 rosvim.alternate()'

" }}}
" Autocommands {{{

augroup rosPluginAuto
    autocmd!
    autocmd User BufEnterRos exec ':py3 rosvim.buf_enter()'
augroup END

" }}}
