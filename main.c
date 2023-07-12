#include <stdio.h>
#include <stdlib.h>

#include "./lua54/lua.h"
#include "./lua54/lualib.h"
#include "./lua54/lauxlib.h"

int main(int argc, char* argv[]) {
    lua_State* L = luaL_newstate();

    luaL_openlibs(L);

    if (luaL_dofile(L, "./bubble_sort.lua") == LUA_OK) {
        lua_getglobal(L, "main");
        lua_pcall    (L, 0, 0, 0);
        lua_close    (L);

        return EXIT_SUCCESS;
    }

    printf   ("Error (%s): %s\n", __func__, lua_tostring(L, -1));
    lua_close(L);

    return EXIT_FAILURE;
}
