## Write remote, Visual local
### why this plugin

I develop inside docker or ssh on remote. I prefer writing markdown with vim, and I also need a visual tool to see the page. I try several plugin, They all work local not the remote.

### how it work?

when the file  is markdown, The plugin will write current file to /tmp/hello.md using "vim-scripts/vim-auto-save" and start a go server listing 9999 port to return the current markdown content. In your local computer, using "MarkDown Preview Plus" in Chorme. Your can view the content period.

### dependency
* go echo framework
* vim-scripts/vim-auto-save
* MarkDown Preview Plus
* lsof

### setup
```bash
apt install lsof
go get -u github.com/labstack/echo/...
```

### usage
write markdown using vim.
open  ip:9999/preview.md  in Chrome.

### preview
![preview img](https://raw.githubusercontent.com/zhoupro/images/master/20181019/preview.png)
