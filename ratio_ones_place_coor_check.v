module ratio_ones_place_coor_check(ADDR, ctrl_ratio_ones_place_check, ratio_ones_ADDR, rush_ones_place_coor_check, rush_tenths_place_coor_check, consistency_ones_place_coor_check, consistency_tenths_place_coor_check, consistency_hundredths_place_coor_check);

input[18:0] ADDR;
output ctrl_ratio_ones_place_check; 

wire [18:0] xcoor, ycoor;

assign xcoor = ADDR%19'd640;
assign ycoor = ADDR/19'd640;
output [18:0] ratio_ones_ADDR;


assign ratio_ones_ADDR = ADDR - 19'd160 - 19'd640*ycoor + (19'd22*(ycoor-19'd29));
assign ctrl_ratio_ones_place_check = (xcoor >= 19'd160) & (xcoor <= 19'd181) & (ycoor >= 19'd29) & (ycoor <= 19'd56);


output rush_ones_place_coor_check; 
assign rush_ones_place_coor_check = (xcoor >= 19'd160) & (xcoor <= 19'd181) & (ycoor >= 19'd78) & (ycoor <= 19'd105);

output rush_tenths_place_coor_check; 
assign rush_tenths_place_coor_check = (xcoor >= 19'd200) & (xcoor <= 19'd221) & (ycoor >= 19'd78) & (ycoor <= 19'd105);

output consistency_ones_place_coor_check; 
assign consistency_ones_place_coor_check = (xcoor >= 19'd532) & (xcoor <= 19'd553) & (ycoor >= 19'd29) & (ycoor <= 19'd56);

output consistency_tenths_place_coor_check; 
assign consistency_tenths_place_coor_check = (xcoor >= 19'd568) & (xcoor <= 19'd589) & (ycoor >= 19'd29) & (ycoor <= 19'd56);

output consistency_hundredths_place_coor_check; 
assign consistency_hundredths_place_coor_check = (xcoor >= 19'd594) & (xcoor <= 19'd615) & (ycoor >= 19'd29) & (ycoor <= 19'd56);


endmodule