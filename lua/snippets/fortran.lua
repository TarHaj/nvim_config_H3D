local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.expand_conditions")

return {
		-- VARIABLES
		s("int", fmt("INTEGER :: {}",{i(1, "<var>")})),
		s("dp", fmt("DOUBLE PRECISION :: {}",{i(1, "<var>")})),
		s("ch", fmt("CHARACTER({}) :: {}",{i(1, "<size>"),i(2,"<var>")})),
		s("lg", fmt("LOGICAL :: {}",{i(1, "<var>")})),

		-- ARRAYS
		s("inta", fmt("INTEGER,dimension({}) :: {}",{i(1, "<dim>"),i(2,"<var>")})),
		s("dpa", fmt("DOUBLE PRECISION,dimension({}) :: {}",{i(1, "<dim>"),i(2,"<var>")})),
		s("cha", fmt("CHARACTER(300),dimension({}) :: {}",{i(1, "<dim>"),i(2,"<var>")})),
		s("lga", fmt("LOGICAL,dimension({}) :: {}",{i(1, "<dim>"),i(2,"<var>")})),

		-- ALLOCATABLE ARRAYS 
		s("intp", fmt("INTEGER,pointer,dimension({}) :: {}",{i(1, "<dim>"),i(2,"<var>")})),
		s("dpp", fmt("DOUBLE PRECISION,pointer,dimension({}) :: {}",{i(1, "<dim>"),i(2,"<var>")})),
		s("chp", fmt("CHARACTER(300),pointer,dimension({}) :: {}",{i(1, "<dim>"),i(2,"<var>")})),
		s("lgp", fmt("LOGICAL,pointer,dimension({}) :: {}",{i(1, "<dim>"),i(2,"<var>")})),

		-- I/O
		s("open", fmt("open({},file={})\n  {}\nclose({})",{i(1, "<unit>"),i(2,"<filenamne>"),i(3,"<main>"),rep(1)})),
		s("rf",fmt("read({},*) {}",{i(1,"<unit>"),i(2,"<var>")})),
		s("wf",fmt("write({},'({})') {}",{i(1,"<unit>"),i(3,"<format>"),i(2,"<var>")})),

		s("rs",fmt("READ(*,*) {}",{i(1,"<var>")})),
		s("ws",fmt("WRITE(6,'({})') {}",{i(2,"<format>"),i(1,"<var>")})),

		-- LOOP
		s("DO", fmt("do {} \n {} \n\nend do",{i(1, "<range>"),i(2,"<statement>")})),
		s("while", fmt("do while {} \n {} \n\nend do",{i(1, "<condition>"),i(2,"<statement>")})),

		-- CONDITIONS:
		s("ifl", fmt("if({}) {}",{i(1, "<condition>"),i(2,"<statement>")})),

		-- STRUCTURE 
		s("prg", fmt("program {} \nimplicit none \n\n\n{} \n\nend program {}",{i(1, "<filename>"),i(2,"<main>"),rep(1)})),
		s("SUB",fmt("!#####################################################################\n	SUBROUTINE {}\n!#####################################################################\n	implicit none\n	{}\n\n	END SUBROUTINE {}",{i(1,"<subname>"),i(2,"<main>"),rep(1)})),

		s("rr", fmt("l=0\ndo\n  read({},*,iostat=io) {}\n  if(io<0) then\n    exit\n  end if\n  l=l+1\nend do\nnblines=l",{i(1, "<unit>"),i(2,"<xval(l+1)>")}))
}

