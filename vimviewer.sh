#!/usr/bin/env sh
exec vim -n --cmd "source ~/.vim/startup/WatchForChanges.vim | let autoreadargs={'autoread':1} | execute WatchForChanges('*',autoreadargs)" $@
