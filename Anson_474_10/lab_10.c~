#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>

static int swap(lua_State *l)
{
	double x = luaL_checknumber(l, 1);
	double y = luaL_checknumber(l, 2);

	lua_pushnumber(l, x);
	lua_pushnumber(l, y);
	return 2;
}

static const struct luaL_Reg list[] = 
{
	{"lua_swap", swap},
	{NULL, NULL}
};


int luaopen_lab_10_lib(lua_State *l)
{
	luaL_newlib(l, list);
	return 1;
}
