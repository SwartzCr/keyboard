homerow_base = 0;
vertical_offset = 19.05;
keysize = [14,14];

function sumv(v,i,s=0) = (i==s ? v[i] : v[i] + sumv(v,i-1,s));

module make_row(vert, keys){
for (i = [0:1:len(keys)-1]){
		//
		translate([(sumv(keys, i)*18)+(1.05*i) - (9*keys[i]),vert,0]) square(keysize);
	}
}

eff_row = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
num_row = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,2];
tab_row = [1, 1.5,1,1,1,1,1,1,1,1,1,1,1,1,1.5];
home_row = [1, 1.75, 1, 1,1,1,1,1,1,1,1,1,1,2.25];
shift_row = [1, 2.25, 1, 1,1,1,1,1,1,1,1,1,2.75];
space_row = [1, 1.25, 1.25, 1.25, 7,1.25, 1,1,1];
make_row(vertical_offset*2, num_row);
make_row(vertical_offset*3, eff_row);
make_row(vertical_offset, tab_row);
make_row(0, home_row);
make_row(-vertical_offset, shift_row);
make_row(-vertical_offset*2, space_row);
