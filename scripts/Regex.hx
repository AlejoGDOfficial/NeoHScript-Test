final osoReg:EReg = ~/[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z][A-Z][A-Z]*/i;

trace(osoReg.match('este no es valido oso'));

trace(~/[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z][A-Z][A-Z]*/i.match('oso_y_su_leche@masha.com'));