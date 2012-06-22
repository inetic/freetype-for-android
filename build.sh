
if [ "$1" = "clean" ]; then
  rm -r libs obj
  exit
fi

FT_DIR=freetype2

if test -d $FT_DIR; then
  (cd $FT_DIR && git checkout VER-2-4-10)
  (cd $FT_DIR && git clean -fxd)
else
  git clone git://git.sv.gnu.org/freetype/freetype2.git $FT_DIR
  (cd $FT_DIR && git checkout VER-2-4-10)
fi

ndk-build 2>&1 -B | head


