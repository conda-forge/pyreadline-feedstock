setlocal EnableDelayedExpansion

copy "%RECIPE_DIR%\0001-import-from-collections.abc.patch" "0001-import-from-collections.abc.patch"

git apply  --whitespace=fix --ignore-whitespace --reject 0001-import-from-collections.abc.patch

%PYTHON% -m pip install . --no-deps -vv
