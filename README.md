## PDF to JPG

Script to convert PDF to JPEG using Ghostscript library.
It's just a fork from https://github.com/kubaszostak/pdf-to-jpg .

**How to use:**

Drag and drop Your PDF file to _pdf2jpg.bat_.

---

* Tested with [Ghostscript](http://www.ghostscript.com/) 9.14
* [Download Ghostscrip](http://www.ghostscript.com/download/)
* [License](http://www.ghostscript.com/download/gsdnld.html)
* [How to use Ghostscript](http://web.mit.edu/ghostscript/www/Use.htm)

**Ghostscript cmd example:**

PDF to JPEG:
``` shell
# input file=xxx.pdf
# output file=xxx-001.jpg,xxx-002.jpg...
# dpi=300
# jpg quality=80
# memory buffer=1000MB
gswin32c.exe -sDEVICE=jpeg -sOutputFile=xxx-%03d.jpg -r300 -dNOPAUSE -dFirstPage=1 \
  -dLastPage=9999 -dJPEGQ=80 -dGraphicsAlphaBits=2 -dTextAlphaBits=2 \
  -dNumRenderingThreads=4 -dBufferSpace=1000000000 -dBandBufferSpace=1000000000 \
  -c 1000000000 setvmthreshold -f xxx.pdf -c quit
```

PDF to PNG:
``` shell
# input file=xxx.pdf
# output file=xxx-001.png,xxx-002.png...
# dpi=300
# memory buffer=1000MB
gswin32c.exe -sDEVICE=png16m -sOutputFile=xxx-%03d.png -r300 -dNOPAUSE -dFirstPage=1 \
  -dLastPage=9999 -dGraphicsAlphaBits=2 -dTextAlphaBits=2 -dNumRenderingThreads=4 \
  -dBufferSpace=1000000000 -dBandBufferSpace=1000000000 -c 1000000000 setvmthreshold \
  -f xxx.pdf -c quit
```
