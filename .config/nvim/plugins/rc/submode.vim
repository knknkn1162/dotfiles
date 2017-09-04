" カレントウィンドウの大きさを変える
" 幅を増やす
call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
" 幅を減らす
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
" 高さを増やす
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
" 高さを減らす
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
" サブモード中に使えるキーマッピングを設定 
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')
