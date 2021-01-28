# gem install ffi 报错

## 报错信息

```bash
Installing ffi 1.9.21 with native extensions
Gem::Ext::BuildError: ERROR: Failed to build gem native extension.

    current directory: /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/bin/ruby -I /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/site_ruby/2.6.0 -r ./siteconf20210129-28672-3yw4xo.rb extconf.rb
checking for ffi_call() in -lffi... no
checking for ffi_call() in -llibffi... no
checking for ffi_raw_call()... yes
checking for ffi_prep_raw_closure()... yes
checking for shlwapi.h... no
checking for rb_thread_blocking_region()... no
checking for rb_thread_call_with_gvl()... yes
checking for rb_thread_call_without_gvl()... yes
creating extconf.h
creating Makefile

current directory: /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c
make "DESTDIR=" clean

current directory: /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c
make "DESTDIR="
Running autoreconf for libffi
autoreconf: Entering directory `.'
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal --force -I m4
autoreconf: configure.ac: tracing
autoreconf: running: glibtoolize --copy --force
autoreconf: running: /usr/local/Cellar/autoconf/2.69/bin/autoconf --force
autoreconf: running: /usr/local/Cellar/autoconf/2.69/bin/autoheader --force
autoreconf: running: automake --add-missing --copy --force-missing
configure.ac:31: installing './compile'
configure.ac:8: installing './config.guess'
configure.ac:8: installing './config.sub'
configure.ac:19: installing './install-sh'
configure.ac:19: installing './missing'
Makefile.am: installing './depcomp'
doc/Makefile.am:3: installing 'doc/mdate-sh'
doc/Makefile.am:3: installing 'doc/texinfo.tex'
autoreconf: Leaving directory `.'
Configuring libffi
clang: error: unsupported option '-print-multi-os-directory'
clang: error: no input files
cd "/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi-x86_64-darwin19" && /Applications/Xcode.app/Contents/Developer/usr/bin/make
/Applications/Xcode.app/Contents/Developer/usr/bin/make 'AR_FLAGS=' 'CC_FOR_BUILD=' 'CFLAGS=-Wall -fexceptions' 'CXXFLAGS=-g -O2' 'CFLAGS_FOR_BUILD=' 'CFLAGS_FOR_TARGET='
'INSTALL=/usr/local/bin/ginstall -c' 'INSTALL_DATA=/usr/local/bin/ginstall -c -m 644' 'INSTALL_PROGRAM=/usr/local/bin/ginstall -c' 'INSTALL_SCRIPT=/usr/local/bin/ginstall -c'
'JC1FLAGS=' 'LDFLAGS=' 'LIBCFLAGS=' 'LIBCFLAGS_FOR_TARGET=' 'MAKE=/Applications/Xcode.app/Contents/Developer/usr/bin/make' 'MAKEINFO=/bin/sh
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/missing makeinfo ' 'PICFLAG=' 'PICFLAG_FOR_TARGET=' 'RUNTESTFLAGS=' 'SHELL=/bin/sh'
'exec_prefix=/usr/local' 'infodir=/usr/local/share/info' 'libdir=/usr/local/lib' 'mandir=/usr/local/share/man' 'prefix=/usr/local' 'AR=ar' 'AS=as' 'CC=gcc' 'CXX=g++' 'LD=ld'
'NM=/usr/bin/nm -B' 'RANLIB=ranlib' 'DESTDIR=' all-recursive
Making all in include
make[3]: Nothing to be done for `all'.
Making all in testsuite
make[3]: Nothing to be done for `all'.
Making all in man
make[3]: Nothing to be done for `all'.
/bin/sh ./libtool  --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi  -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src   -Wall -fexceptions -c -o src/prep_cif.lo
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/prep_cif.c
libtool: compile:  gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src -Wall -fexceptions -c
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/prep_cif.c  -fno-common -DPIC -o src/.libs/prep_cif.o
/bin/sh ./libtool  --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi  -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src   -Wall -fexceptions -c -o src/types.lo
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/types.c
libtool: compile:  gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src -Wall -fexceptions -c
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/types.c  -fno-common -DPIC -o src/.libs/types.o
/bin/sh ./libtool  --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi  -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src   -Wall -fexceptions -c -o src/raw_api.lo
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/raw_api.c
libtool: compile:  gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src -Wall -fexceptions -c
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/raw_api.c  -fno-common -DPIC -o src/.libs/raw_api.o
/bin/sh ./libtool  --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi  -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src   -Wall -fexceptions -c -o src/java_raw_api.lo
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/java_raw_api.c
libtool: compile:  gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src -Wall -fexceptions -c
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/java_raw_api.c  -fno-common -DPIC -o src/.libs/java_raw_api.o
/bin/sh ./libtool  --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi  -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src   -Wall -fexceptions -c -o src/closures.lo
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/closures.c
libtool: compile:  gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src -Wall -fexceptions -c
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/closures.c  -fno-common -DPIC -o src/.libs/closures.o
/bin/sh ./libtool  --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi  -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src   -Wall -fexceptions -c -o src/x86/ffi64.lo
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/x86/ffi64.c
libtool: compile:  gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src -Wall -fexceptions -c
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/x86/ffi64.c  -fno-common -DPIC -o src/x86/.libs/ffi64.o
/bin/sh ./libtool  --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi  -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src  -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src  -c -o src/x86/unix64.lo
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/x86/unix64.S
libtool: compile:  gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src -c
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/x86/unix64.S  -fno-common -DPIC -o src/x86/.libs/unix64.o
/bin/sh ./libtool  --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi  -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src   -Wall -fexceptions -c -o src/x86/ffiw64.lo
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/x86/ffiw64.c
libtool: compile:  gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src -Wall -fexceptions -c
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/x86/ffiw64.c  -fno-common -DPIC -o src/x86/.libs/ffiw64.o
/bin/sh ./libtool  --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi  -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src  -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src  -c -o src/x86/win64.lo
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/x86/win64.S
libtool: compile:  gcc -DHAVE_CONFIG_H -I. -I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src -I.
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/include -Iinclude
-I/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src -c
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/src/x86/win64.S  -fno-common -DPIC -o src/x86/.libs/win64.o
/bin/sh ./libtool  --tag=CC   --mode=link gcc  -Wall -fexceptions   -o libffi_convenience.la  src/prep_cif.lo src/types.lo src/raw_api.lo src/java_raw_api.lo src/closures.lo
src/x86/ffi64.lo src/x86/unix64.lo src/x86/ffiw64.lo src/x86/win64.lo
libtool: link: ar cru .libs/libffi_convenience.a src/.libs/prep_cif.o src/.libs/types.o src/.libs/raw_api.o src/.libs/java_raw_api.o src/.libs/closures.o src/x86/.libs/ffi64.o
src/x86/.libs/unix64.o src/x86/.libs/ffiw64.o src/x86/.libs/win64.o
libtool: link: ranlib .libs/libffi_convenience.a
libtool: link: ( cd ".libs" && rm -f "libffi_convenience.la" && ln -s "../libffi_convenience.la" "libffi_convenience.la" )
/bin/sh ./libtool  --tag=CC   --mode=link gcc  -Wall -fexceptions -no-undefined -version-info `grep -v '^#'
/Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi/libtool-version`     -o libffi.la -rpath /usr/local/lib src/prep_cif.lo src/types.lo
src/raw_api.lo src/java_raw_api.lo src/closures.lo  src/x86/ffi64.lo src/x86/unix64.lo src/x86/ffiw64.lo src/x86/win64.lo
libtool: link: gcc -dynamiclib  -o .libs/libffi.7.dylib  src/.libs/prep_cif.o src/.libs/types.o src/.libs/raw_api.o src/.libs/java_raw_api.o src/.libs/closures.o
src/x86/.libs/ffi64.o src/x86/.libs/unix64.o src/x86/.libs/ffiw64.o src/x86/.libs/win64.o      -install_name  /usr/local/lib/libffi.7.dylib -compatibility_version 9
-current_version 9.0 -Wl,-single_module
ld: warning: could not create compact unwind for _ffi_call_unix64: does not use RBP or RSP based frame
libtool: link: (cd ".libs" && rm -f "libffi.dylib" && ln -s "libffi.7.dylib" "libffi.dylib")
libtool: link: ( cd ".libs" && rm -f "libffi.la" && ln -s "../libffi.la" "libffi.la" )
compiling AbstractMemory.c
compiling ArrayType.c
compiling Buffer.c
compiling Call.c
Call.c:355:5: error: implicit declaration of function 'rb_thread_call_without_gvl' is invalid in C99 [-Werror,-Wimplicit-function-declaration]
    rbffi_thread_blocking_region(call_blocking_function, data, (void *) -1, NULL);
    ^
./Thread.h:78:39: note: expanded from macro 'rbffi_thread_blocking_region'
# define rbffi_thread_blocking_region rb_thread_call_without_gvl
                                      ^
1 error generated.
make: *** [Call.o] Error 1

make failed, exit code 2

Gem files will remain installed in /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/gems/ffi-1.9.21 for inspection.
Results logged to /Users/chanweiyan/.rvm/rubies/ruby-2.6.6/lib/ruby/gems/2.6.0/extensions/x86_64-darwin-19/2.6.0/ffi-1.9.21/gem_make.out

An error occurred while installing ffi (1.9.21), and Bundler cannot continue.
Make sure that `gem install ffi -v '1.9.21' --source 'https://rubygems.org/'` succeeds before bundling.

In Gemfile:
  bootstrap was resolved to 4.0.0, which depends on
    sass was resolved to 3.5.5, which depends on
      sass-listen was resolved to 4.0.0, which depends on
        rb-inotify was resolved to 0.9.10, which depends on
          ffi
```

## 解决方法

rvm use ruby-2.6.6

bundle install

```bash
bundle install 的时候不要加 sudo
```
