homerow_base = 0;
vertical_offset = 17;
keysize = [14,14];

function sumv(v,i,s=0) = (i==s ? v[i] : v[i] + sumv(v,i-1,s));

module make_row(vert, keys){
for (i = [0:1:len(keys)-1]){
		translate([(sumv(keys, i)*14)+(3*i),vert,0]) square(keysize);
	}
}

eff_row = [0,2,1,1,1,1,1,1,1,1,1,1,1,1,1];
num_row = [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1.5];
tab_row = [0, 1.2,1.2,1,1,1,1,1,1,1,1,1,1,1,1.3];
home_row = [0, 1.4, 1.4, 1,1,1,1,1,1,1,1,1,1,1.5];
shift_row = [0, 1.7, 1.5, 1,1,1,1,1,1,1,1,1,1.8];
space_row = [0, 1.15, 1.15, 1, 1, 3,3, 1,1,1,1];
make_row(vertical_offset*-2, num_row);
make_row(vertical_offset*-3, eff_row);
make_row(-vertical_offset, tab_row);
make_row(0, home_row);
make_row(vertical_offset, shift_row);
make_row(vertical_offset*2, space_row);
