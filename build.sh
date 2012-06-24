
if [ "$1" = "clean" ]; then
  rm -rf libs obj freetype2 2>/dev/null
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

ndk-build

