/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Oct 23 21:19:58 2024
/////////////////////////////////////////////////////////////


module RST_SYNC_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \RST_REG[0] ;

  DFFRQX2M \RST_REG_reg[1]  ( .D(\RST_REG[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \RST_REG_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\RST_REG[0] )
         );
endmodule


module RST_SYNC_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \RST_REG[0] ;

  DFFRQX2M \RST_REG_reg[1]  ( .D(\RST_REG[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \RST_REG_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\RST_REG[0] )
         );
endmodule


module DATA_SYNC_BUS_WIDTH8 ( unsync_bus, bus_enable, D_CLK, RST, sync_bus, 
        enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, D_CLK, RST;
  output enable_pulse;
  wire   enable_flop, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [1:0] sync_flops;

  DFFRQX2M enable_flop_reg ( .D(sync_flops[1]), .CK(D_CLK), .RN(n11), .Q(
        enable_flop) );
  DFFRQX2M \sync_flops_reg[1]  ( .D(sync_flops[0]), .CK(D_CLK), .RN(n11), .Q(
        sync_flops[1]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(D_CLK), .RN(n11), .Q(sync_bus[7])
         );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(D_CLK), .RN(n11), .Q(sync_bus[6])
         );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(D_CLK), .RN(n11), .Q(sync_bus[5])
         );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(D_CLK), .RN(n11), .Q(sync_bus[3])
         );
  DFFRQX2M \sync_flops_reg[0]  ( .D(bus_enable), .CK(D_CLK), .RN(n11), .Q(
        sync_flops[0]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(D_CLK), .RN(n11), .Q(sync_bus[2])
         );
  DFFRQX2M enable_pulse_reg ( .D(n13), .CK(D_CLK), .RN(n11), .Q(enable_pulse)
         );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(D_CLK), .RN(n11), .Q(sync_bus[1])
         );
  DFFRQX4M \sync_bus_reg[4]  ( .D(n6), .CK(D_CLK), .RN(n11), .Q(sync_bus[4])
         );
  DFFRQX4M \sync_bus_reg[0]  ( .D(n2), .CK(D_CLK), .RN(n11), .Q(sync_bus[0])
         );
  AO22XLM U3 ( .A0(unsync_bus[0]), .A1(n13), .B0(sync_bus[0]), .B1(n10), .Y(n2) );
  INVX4M U4 ( .A(n1), .Y(n13) );
  BUFX4M U5 ( .A(n1), .Y(n10) );
  INVX6M U6 ( .A(n12), .Y(n11) );
  INVX2M U7 ( .A(RST), .Y(n12) );
  NAND2BX2M U8 ( .AN(enable_flop), .B(sync_flops[1]), .Y(n1) );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n13), .B0(sync_bus[4]), .B1(n10), .Y(n6) );
  AO22X1M U10 ( .A0(unsync_bus[1]), .A1(n13), .B0(sync_bus[1]), .B1(n10), .Y(
        n3) );
  AO22X1M U11 ( .A0(unsync_bus[2]), .A1(n13), .B0(sync_bus[2]), .B1(n10), .Y(
        n4) );
  AO22X1M U12 ( .A0(unsync_bus[5]), .A1(n13), .B0(sync_bus[5]), .B1(n10), .Y(
        n7) );
  AO22X1M U13 ( .A0(unsync_bus[3]), .A1(n13), .B0(sync_bus[3]), .B1(n10), .Y(
        n5) );
  AO22X1M U14 ( .A0(unsync_bus[6]), .A1(n13), .B0(sync_bus[6]), .B1(n10), .Y(
        n8) );
  AO22X1M U15 ( .A0(unsync_bus[7]), .A1(n13), .B0(sync_bus[7]), .B1(n10), .Y(
        n9) );
endmodule


module FIFO_MEM_CTRL ( w_data, W_CLK, W_RST, w_addr, r_addr, winc, wfull, 
        r_data );
  input [7:0] w_data;
  input [2:0] w_addr;
  input [2:0] r_addr;
  output [7:0] r_data;
  input W_CLK, W_RST, winc, wfull;
  wire   N10, N11, N12, \FIFO_Memory[0][7] , \FIFO_Memory[0][6] ,
         \FIFO_Memory[0][5] , \FIFO_Memory[0][4] , \FIFO_Memory[0][3] ,
         \FIFO_Memory[0][2] , \FIFO_Memory[0][1] , \FIFO_Memory[0][0] ,
         \FIFO_Memory[1][7] , \FIFO_Memory[1][6] , \FIFO_Memory[1][5] ,
         \FIFO_Memory[1][4] , \FIFO_Memory[1][3] , \FIFO_Memory[1][2] ,
         \FIFO_Memory[1][1] , \FIFO_Memory[1][0] , \FIFO_Memory[2][7] ,
         \FIFO_Memory[2][6] , \FIFO_Memory[2][5] , \FIFO_Memory[2][4] ,
         \FIFO_Memory[2][3] , \FIFO_Memory[2][2] , \FIFO_Memory[2][1] ,
         \FIFO_Memory[2][0] , \FIFO_Memory[3][7] , \FIFO_Memory[3][6] ,
         \FIFO_Memory[3][5] , \FIFO_Memory[3][4] , \FIFO_Memory[3][3] ,
         \FIFO_Memory[3][2] , \FIFO_Memory[3][1] , \FIFO_Memory[3][0] ,
         \FIFO_Memory[4][7] , \FIFO_Memory[4][6] , \FIFO_Memory[4][5] ,
         \FIFO_Memory[4][4] , \FIFO_Memory[4][3] , \FIFO_Memory[4][2] ,
         \FIFO_Memory[4][1] , \FIFO_Memory[4][0] , \FIFO_Memory[5][7] ,
         \FIFO_Memory[5][6] , \FIFO_Memory[5][5] , \FIFO_Memory[5][4] ,
         \FIFO_Memory[5][3] , \FIFO_Memory[5][2] , \FIFO_Memory[5][1] ,
         \FIFO_Memory[5][0] , \FIFO_Memory[6][7] , \FIFO_Memory[6][6] ,
         \FIFO_Memory[6][5] , \FIFO_Memory[6][4] , \FIFO_Memory[6][3] ,
         \FIFO_Memory[6][2] , \FIFO_Memory[6][1] , \FIFO_Memory[6][0] ,
         \FIFO_Memory[7][7] , \FIFO_Memory[7][6] , \FIFO_Memory[7][5] ,
         \FIFO_Memory[7][4] , \FIFO_Memory[7][3] , \FIFO_Memory[7][2] ,
         \FIFO_Memory[7][1] , \FIFO_Memory[7][0] , n12, n16, n18, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n13, n14, n15, n17, n19, n20, n21, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131;
  assign N10 = r_addr[0];
  assign N11 = r_addr[1];
  assign N12 = r_addr[2];

  DFFRQX2M \FIFO_Memory_reg[1][7]  ( .D(n77), .CK(W_CLK), .RN(n114), .Q(
        \FIFO_Memory[1][7] ) );
  DFFRQX2M \FIFO_Memory_reg[1][6]  ( .D(n76), .CK(W_CLK), .RN(n114), .Q(
        \FIFO_Memory[1][6] ) );
  DFFRQX2M \FIFO_Memory_reg[1][5]  ( .D(n75), .CK(W_CLK), .RN(n114), .Q(
        \FIFO_Memory[1][5] ) );
  DFFRQX2M \FIFO_Memory_reg[1][4]  ( .D(n74), .CK(W_CLK), .RN(n114), .Q(
        \FIFO_Memory[1][4] ) );
  DFFRQX2M \FIFO_Memory_reg[1][3]  ( .D(n73), .CK(W_CLK), .RN(n115), .Q(
        \FIFO_Memory[1][3] ) );
  DFFRQX2M \FIFO_Memory_reg[1][2]  ( .D(n72), .CK(W_CLK), .RN(n115), .Q(
        \FIFO_Memory[1][2] ) );
  DFFRQX2M \FIFO_Memory_reg[1][1]  ( .D(n71), .CK(W_CLK), .RN(n115), .Q(
        \FIFO_Memory[1][1] ) );
  DFFRQX2M \FIFO_Memory_reg[1][0]  ( .D(n70), .CK(W_CLK), .RN(n115), .Q(
        \FIFO_Memory[1][0] ) );
  DFFRQX2M \FIFO_Memory_reg[5][7]  ( .D(n45), .CK(W_CLK), .RN(n117), .Q(
        \FIFO_Memory[5][7] ) );
  DFFRQX2M \FIFO_Memory_reg[5][6]  ( .D(n44), .CK(W_CLK), .RN(n117), .Q(
        \FIFO_Memory[5][6] ) );
  DFFRQX2M \FIFO_Memory_reg[5][5]  ( .D(n43), .CK(W_CLK), .RN(n117), .Q(
        \FIFO_Memory[5][5] ) );
  DFFRQX2M \FIFO_Memory_reg[5][4]  ( .D(n42), .CK(W_CLK), .RN(n117), .Q(
        \FIFO_Memory[5][4] ) );
  DFFRQX2M \FIFO_Memory_reg[5][3]  ( .D(n41), .CK(W_CLK), .RN(n117), .Q(
        \FIFO_Memory[5][3] ) );
  DFFRQX2M \FIFO_Memory_reg[5][2]  ( .D(n40), .CK(W_CLK), .RN(n117), .Q(
        \FIFO_Memory[5][2] ) );
  DFFRQX2M \FIFO_Memory_reg[5][1]  ( .D(n39), .CK(W_CLK), .RN(n117), .Q(
        \FIFO_Memory[5][1] ) );
  DFFRQX2M \FIFO_Memory_reg[5][0]  ( .D(n38), .CK(W_CLK), .RN(n117), .Q(
        \FIFO_Memory[5][0] ) );
  DFFRQX2M \FIFO_Memory_reg[3][7]  ( .D(n61), .CK(W_CLK), .RN(n116), .Q(
        \FIFO_Memory[3][7] ) );
  DFFRQX2M \FIFO_Memory_reg[3][6]  ( .D(n60), .CK(W_CLK), .RN(n116), .Q(
        \FIFO_Memory[3][6] ) );
  DFFRQX2M \FIFO_Memory_reg[3][5]  ( .D(n59), .CK(W_CLK), .RN(n116), .Q(
        \FIFO_Memory[3][5] ) );
  DFFRQX2M \FIFO_Memory_reg[3][4]  ( .D(n58), .CK(W_CLK), .RN(n116), .Q(
        \FIFO_Memory[3][4] ) );
  DFFRQX2M \FIFO_Memory_reg[3][3]  ( .D(n57), .CK(W_CLK), .RN(n116), .Q(
        \FIFO_Memory[3][3] ) );
  DFFRQX2M \FIFO_Memory_reg[3][2]  ( .D(n56), .CK(W_CLK), .RN(n116), .Q(
        \FIFO_Memory[3][2] ) );
  DFFRQX2M \FIFO_Memory_reg[3][1]  ( .D(n55), .CK(W_CLK), .RN(n116), .Q(
        \FIFO_Memory[3][1] ) );
  DFFRQX2M \FIFO_Memory_reg[3][0]  ( .D(n54), .CK(W_CLK), .RN(n116), .Q(
        \FIFO_Memory[3][0] ) );
  DFFRQX2M \FIFO_Memory_reg[7][7]  ( .D(n29), .CK(W_CLK), .RN(n118), .Q(
        \FIFO_Memory[7][7] ) );
  DFFRQX2M \FIFO_Memory_reg[7][6]  ( .D(n28), .CK(W_CLK), .RN(n118), .Q(
        \FIFO_Memory[7][6] ) );
  DFFRQX2M \FIFO_Memory_reg[7][5]  ( .D(n27), .CK(W_CLK), .RN(n118), .Q(
        \FIFO_Memory[7][5] ) );
  DFFRQX2M \FIFO_Memory_reg[7][4]  ( .D(n26), .CK(W_CLK), .RN(n118), .Q(
        \FIFO_Memory[7][4] ) );
  DFFRQX2M \FIFO_Memory_reg[7][3]  ( .D(n25), .CK(W_CLK), .RN(n119), .Q(
        \FIFO_Memory[7][3] ) );
  DFFRQX2M \FIFO_Memory_reg[7][2]  ( .D(n24), .CK(W_CLK), .RN(n119), .Q(
        \FIFO_Memory[7][2] ) );
  DFFRQX2M \FIFO_Memory_reg[7][1]  ( .D(n23), .CK(W_CLK), .RN(n119), .Q(
        \FIFO_Memory[7][1] ) );
  DFFRQX2M \FIFO_Memory_reg[7][0]  ( .D(n22), .CK(W_CLK), .RN(n119), .Q(
        \FIFO_Memory[7][0] ) );
  DFFRQX2M \FIFO_Memory_reg[2][7]  ( .D(n69), .CK(W_CLK), .RN(n115), .Q(
        \FIFO_Memory[2][7] ) );
  DFFRQX2M \FIFO_Memory_reg[2][6]  ( .D(n68), .CK(W_CLK), .RN(n115), .Q(
        \FIFO_Memory[2][6] ) );
  DFFRQX2M \FIFO_Memory_reg[2][5]  ( .D(n67), .CK(W_CLK), .RN(n115), .Q(
        \FIFO_Memory[2][5] ) );
  DFFRQX2M \FIFO_Memory_reg[2][4]  ( .D(n66), .CK(W_CLK), .RN(n115), .Q(
        \FIFO_Memory[2][4] ) );
  DFFRQX2M \FIFO_Memory_reg[2][3]  ( .D(n65), .CK(W_CLK), .RN(n115), .Q(
        \FIFO_Memory[2][3] ) );
  DFFRQX2M \FIFO_Memory_reg[2][2]  ( .D(n64), .CK(W_CLK), .RN(n115), .Q(
        \FIFO_Memory[2][2] ) );
  DFFRQX2M \FIFO_Memory_reg[2][1]  ( .D(n63), .CK(W_CLK), .RN(n115), .Q(
        \FIFO_Memory[2][1] ) );
  DFFRQX2M \FIFO_Memory_reg[2][0]  ( .D(n62), .CK(W_CLK), .RN(n115), .Q(
        \FIFO_Memory[2][0] ) );
  DFFRQX2M \FIFO_Memory_reg[6][7]  ( .D(n37), .CK(W_CLK), .RN(n118), .Q(
        \FIFO_Memory[6][7] ) );
  DFFRQX2M \FIFO_Memory_reg[6][6]  ( .D(n36), .CK(W_CLK), .RN(n118), .Q(
        \FIFO_Memory[6][6] ) );
  DFFRQX2M \FIFO_Memory_reg[6][5]  ( .D(n35), .CK(W_CLK), .RN(n118), .Q(
        \FIFO_Memory[6][5] ) );
  DFFRQX2M \FIFO_Memory_reg[6][4]  ( .D(n34), .CK(W_CLK), .RN(n118), .Q(
        \FIFO_Memory[6][4] ) );
  DFFRQX2M \FIFO_Memory_reg[6][3]  ( .D(n33), .CK(W_CLK), .RN(n118), .Q(
        \FIFO_Memory[6][3] ) );
  DFFRQX2M \FIFO_Memory_reg[6][2]  ( .D(n32), .CK(W_CLK), .RN(n118), .Q(
        \FIFO_Memory[6][2] ) );
  DFFRQX2M \FIFO_Memory_reg[6][1]  ( .D(n31), .CK(W_CLK), .RN(n118), .Q(
        \FIFO_Memory[6][1] ) );
  DFFRQX2M \FIFO_Memory_reg[6][0]  ( .D(n30), .CK(W_CLK), .RN(n118), .Q(
        \FIFO_Memory[6][0] ) );
  DFFRQX2M \FIFO_Memory_reg[0][7]  ( .D(n85), .CK(W_CLK), .RN(n114), .Q(
        \FIFO_Memory[0][7] ) );
  DFFRQX2M \FIFO_Memory_reg[0][6]  ( .D(n84), .CK(W_CLK), .RN(n114), .Q(
        \FIFO_Memory[0][6] ) );
  DFFRQX2M \FIFO_Memory_reg[0][5]  ( .D(n83), .CK(W_CLK), .RN(n114), .Q(
        \FIFO_Memory[0][5] ) );
  DFFRQX2M \FIFO_Memory_reg[0][4]  ( .D(n82), .CK(W_CLK), .RN(n114), .Q(
        \FIFO_Memory[0][4] ) );
  DFFRQX2M \FIFO_Memory_reg[0][3]  ( .D(n81), .CK(W_CLK), .RN(n114), .Q(
        \FIFO_Memory[0][3] ) );
  DFFRQX2M \FIFO_Memory_reg[0][2]  ( .D(n80), .CK(W_CLK), .RN(n114), .Q(
        \FIFO_Memory[0][2] ) );
  DFFRQX2M \FIFO_Memory_reg[0][1]  ( .D(n79), .CK(W_CLK), .RN(n114), .Q(
        \FIFO_Memory[0][1] ) );
  DFFRQX2M \FIFO_Memory_reg[0][0]  ( .D(n78), .CK(W_CLK), .RN(n114), .Q(
        \FIFO_Memory[0][0] ) );
  DFFRQX2M \FIFO_Memory_reg[4][7]  ( .D(n53), .CK(W_CLK), .RN(n116), .Q(
        \FIFO_Memory[4][7] ) );
  DFFRQX2M \FIFO_Memory_reg[4][6]  ( .D(n52), .CK(W_CLK), .RN(n116), .Q(
        \FIFO_Memory[4][6] ) );
  DFFRQX2M \FIFO_Memory_reg[4][5]  ( .D(n51), .CK(W_CLK), .RN(n116), .Q(
        \FIFO_Memory[4][5] ) );
  DFFRQX2M \FIFO_Memory_reg[4][4]  ( .D(n50), .CK(W_CLK), .RN(n116), .Q(
        \FIFO_Memory[4][4] ) );
  DFFRQX2M \FIFO_Memory_reg[4][3]  ( .D(n49), .CK(W_CLK), .RN(n117), .Q(
        \FIFO_Memory[4][3] ) );
  DFFRQX2M \FIFO_Memory_reg[4][2]  ( .D(n48), .CK(W_CLK), .RN(n117), .Q(
        \FIFO_Memory[4][2] ) );
  DFFRQX2M \FIFO_Memory_reg[4][1]  ( .D(n47), .CK(W_CLK), .RN(n117), .Q(
        \FIFO_Memory[4][1] ) );
  DFFRQX2M \FIFO_Memory_reg[4][0]  ( .D(n46), .CK(W_CLK), .RN(n117), .Q(
        \FIFO_Memory[4][0] ) );
  NOR2BX4M U2 ( .AN(n16), .B(w_addr[2]), .Y(n18) );
  AND2X2M U3 ( .A(w_addr[2]), .B(n16), .Y(n12) );
  INVX2M U4 ( .A(w_addr[1]), .Y(n131) );
  INVX2M U5 ( .A(w_addr[0]), .Y(n130) );
  BUFX6M U6 ( .A(n121), .Y(n118) );
  BUFX6M U7 ( .A(n120), .Y(n117) );
  BUFX6M U8 ( .A(n120), .Y(n116) );
  BUFX6M U9 ( .A(n121), .Y(n115) );
  BUFX6M U10 ( .A(W_RST), .Y(n114) );
  BUFX2M U11 ( .A(n120), .Y(n119) );
  BUFX2M U12 ( .A(n121), .Y(n120) );
  INVX4M U13 ( .A(n1), .Y(n99) );
  INVX4M U14 ( .A(n1), .Y(n98) );
  INVX4M U15 ( .A(n2), .Y(n107) );
  INVX4M U16 ( .A(n2), .Y(n106) );
  BUFX2M U17 ( .A(W_RST), .Y(n121) );
  NOR2BX2M U18 ( .AN(winc), .B(wfull), .Y(n16) );
  INVX4M U19 ( .A(n4), .Y(n105) );
  INVX4M U20 ( .A(n4), .Y(n104) );
  INVX4M U21 ( .A(n5), .Y(n103) );
  INVX4M U22 ( .A(n5), .Y(n102) );
  INVX4M U23 ( .A(n3), .Y(n101) );
  INVX4M U24 ( .A(n3), .Y(n100) );
  AND3X2M U25 ( .A(n130), .B(n131), .C(n18), .Y(n1) );
  AND3X2M U26 ( .A(n130), .B(n131), .C(n12), .Y(n2) );
  INVX4M U27 ( .A(n7), .Y(n109) );
  INVX4M U28 ( .A(n7), .Y(n108) );
  INVX4M U29 ( .A(n8), .Y(n111) );
  INVX4M U30 ( .A(n8), .Y(n110) );
  INVX4M U31 ( .A(n6), .Y(n113) );
  INVX4M U32 ( .A(n6), .Y(n112) );
  INVX6M U33 ( .A(n94), .Y(n93) );
  INVX6M U34 ( .A(n94), .Y(n92) );
  INVX4M U35 ( .A(n97), .Y(n96) );
  INVX4M U36 ( .A(n97), .Y(n95) );
  AND3X2M U37 ( .A(w_addr[0]), .B(n131), .C(n18), .Y(n3) );
  OAI2BB2X1M U38 ( .B0(n129), .B1(n105), .A0N(\FIFO_Memory[3][0] ), .A1N(n105), 
        .Y(n54) );
  OAI2BB2X1M U39 ( .B0(n122), .B1(n104), .A0N(\FIFO_Memory[3][1] ), .A1N(n104), 
        .Y(n55) );
  OAI2BB2X1M U40 ( .B0(n123), .B1(n105), .A0N(\FIFO_Memory[3][2] ), .A1N(n105), 
        .Y(n56) );
  OAI2BB2X1M U41 ( .B0(n124), .B1(n104), .A0N(\FIFO_Memory[3][3] ), .A1N(n104), 
        .Y(n57) );
  OAI2BB2X1M U42 ( .B0(n125), .B1(n105), .A0N(\FIFO_Memory[3][4] ), .A1N(n105), 
        .Y(n58) );
  OAI2BB2X1M U43 ( .B0(n126), .B1(n104), .A0N(\FIFO_Memory[3][5] ), .A1N(n104), 
        .Y(n59) );
  OAI2BB2X1M U44 ( .B0(n127), .B1(n105), .A0N(\FIFO_Memory[3][6] ), .A1N(n105), 
        .Y(n60) );
  OAI2BB2X1M U45 ( .B0(n128), .B1(n104), .A0N(\FIFO_Memory[3][7] ), .A1N(n104), 
        .Y(n61) );
  OAI2BB2X1M U46 ( .B0(n129), .B1(n103), .A0N(\FIFO_Memory[2][0] ), .A1N(n103), 
        .Y(n62) );
  OAI2BB2X1M U47 ( .B0(n122), .B1(n102), .A0N(\FIFO_Memory[2][1] ), .A1N(n102), 
        .Y(n63) );
  OAI2BB2X1M U48 ( .B0(n123), .B1(n103), .A0N(\FIFO_Memory[2][2] ), .A1N(n103), 
        .Y(n64) );
  OAI2BB2X1M U49 ( .B0(n124), .B1(n102), .A0N(\FIFO_Memory[2][3] ), .A1N(n102), 
        .Y(n65) );
  OAI2BB2X1M U50 ( .B0(n125), .B1(n103), .A0N(\FIFO_Memory[2][4] ), .A1N(n103), 
        .Y(n66) );
  OAI2BB2X1M U51 ( .B0(n126), .B1(n102), .A0N(\FIFO_Memory[2][5] ), .A1N(n102), 
        .Y(n67) );
  OAI2BB2X1M U52 ( .B0(n127), .B1(n103), .A0N(\FIFO_Memory[2][6] ), .A1N(n103), 
        .Y(n68) );
  OAI2BB2X1M U53 ( .B0(n128), .B1(n102), .A0N(\FIFO_Memory[2][7] ), .A1N(n102), 
        .Y(n69) );
  OAI2BB2X1M U54 ( .B0(n129), .B1(n101), .A0N(\FIFO_Memory[1][0] ), .A1N(n101), 
        .Y(n70) );
  OAI2BB2X1M U55 ( .B0(n122), .B1(n100), .A0N(\FIFO_Memory[1][1] ), .A1N(n100), 
        .Y(n71) );
  OAI2BB2X1M U56 ( .B0(n123), .B1(n101), .A0N(\FIFO_Memory[1][2] ), .A1N(n101), 
        .Y(n72) );
  OAI2BB2X1M U57 ( .B0(n124), .B1(n100), .A0N(\FIFO_Memory[1][3] ), .A1N(n100), 
        .Y(n73) );
  OAI2BB2X1M U58 ( .B0(n125), .B1(n101), .A0N(\FIFO_Memory[1][4] ), .A1N(n101), 
        .Y(n74) );
  OAI2BB2X1M U59 ( .B0(n126), .B1(n100), .A0N(\FIFO_Memory[1][5] ), .A1N(n100), 
        .Y(n75) );
  OAI2BB2X1M U60 ( .B0(n127), .B1(n101), .A0N(\FIFO_Memory[1][6] ), .A1N(n101), 
        .Y(n76) );
  OAI2BB2X1M U61 ( .B0(n128), .B1(n100), .A0N(\FIFO_Memory[1][7] ), .A1N(n100), 
        .Y(n77) );
  OAI2BB2X1M U62 ( .B0(n129), .B1(n99), .A0N(\FIFO_Memory[0][0] ), .A1N(n99), 
        .Y(n78) );
  OAI2BB2X1M U63 ( .B0(n122), .B1(n98), .A0N(\FIFO_Memory[0][1] ), .A1N(n98), 
        .Y(n79) );
  OAI2BB2X1M U64 ( .B0(n123), .B1(n99), .A0N(\FIFO_Memory[0][2] ), .A1N(n99), 
        .Y(n80) );
  OAI2BB2X1M U65 ( .B0(n124), .B1(n98), .A0N(\FIFO_Memory[0][3] ), .A1N(n98), 
        .Y(n81) );
  OAI2BB2X1M U66 ( .B0(n125), .B1(n99), .A0N(\FIFO_Memory[0][4] ), .A1N(n99), 
        .Y(n82) );
  OAI2BB2X1M U67 ( .B0(n126), .B1(n98), .A0N(\FIFO_Memory[0][5] ), .A1N(n98), 
        .Y(n83) );
  OAI2BB2X1M U68 ( .B0(n127), .B1(n99), .A0N(\FIFO_Memory[0][6] ), .A1N(n99), 
        .Y(n84) );
  OAI2BB2X1M U69 ( .B0(n128), .B1(n98), .A0N(\FIFO_Memory[0][7] ), .A1N(n98), 
        .Y(n85) );
  AND3X2M U70 ( .A(w_addr[1]), .B(w_addr[0]), .C(n18), .Y(n4) );
  AND3X2M U71 ( .A(w_addr[1]), .B(n130), .C(n18), .Y(n5) );
  INVX4M U72 ( .A(w_data[0]), .Y(n129) );
  INVX4M U73 ( .A(w_data[1]), .Y(n122) );
  INVX4M U74 ( .A(w_data[2]), .Y(n123) );
  INVX4M U75 ( .A(w_data[3]), .Y(n124) );
  INVX4M U76 ( .A(w_data[4]), .Y(n125) );
  INVX4M U77 ( .A(w_data[5]), .Y(n126) );
  INVX4M U78 ( .A(w_data[6]), .Y(n127) );
  INVX4M U79 ( .A(w_data[7]), .Y(n128) );
  AND3X2M U80 ( .A(w_addr[0]), .B(n12), .C(w_addr[1]), .Y(n6) );
  OAI2BB2X1M U81 ( .B0(n129), .B1(n111), .A0N(\FIFO_Memory[6][0] ), .A1N(n111), 
        .Y(n30) );
  OAI2BB2X1M U82 ( .B0(n122), .B1(n110), .A0N(\FIFO_Memory[6][1] ), .A1N(n110), 
        .Y(n31) );
  OAI2BB2X1M U83 ( .B0(n123), .B1(n111), .A0N(\FIFO_Memory[6][2] ), .A1N(n111), 
        .Y(n32) );
  OAI2BB2X1M U84 ( .B0(n124), .B1(n110), .A0N(\FIFO_Memory[6][3] ), .A1N(n110), 
        .Y(n33) );
  OAI2BB2X1M U85 ( .B0(n125), .B1(n111), .A0N(\FIFO_Memory[6][4] ), .A1N(n111), 
        .Y(n34) );
  OAI2BB2X1M U86 ( .B0(n126), .B1(n110), .A0N(\FIFO_Memory[6][5] ), .A1N(n110), 
        .Y(n35) );
  OAI2BB2X1M U87 ( .B0(n127), .B1(n111), .A0N(\FIFO_Memory[6][6] ), .A1N(n111), 
        .Y(n36) );
  OAI2BB2X1M U88 ( .B0(n128), .B1(n110), .A0N(\FIFO_Memory[6][7] ), .A1N(n110), 
        .Y(n37) );
  OAI2BB2X1M U89 ( .B0(n129), .B1(n109), .A0N(\FIFO_Memory[5][0] ), .A1N(n109), 
        .Y(n38) );
  OAI2BB2X1M U90 ( .B0(n122), .B1(n108), .A0N(\FIFO_Memory[5][1] ), .A1N(n108), 
        .Y(n39) );
  OAI2BB2X1M U91 ( .B0(n123), .B1(n109), .A0N(\FIFO_Memory[5][2] ), .A1N(n109), 
        .Y(n40) );
  OAI2BB2X1M U92 ( .B0(n124), .B1(n108), .A0N(\FIFO_Memory[5][3] ), .A1N(n108), 
        .Y(n41) );
  OAI2BB2X1M U93 ( .B0(n125), .B1(n109), .A0N(\FIFO_Memory[5][4] ), .A1N(n109), 
        .Y(n42) );
  OAI2BB2X1M U94 ( .B0(n126), .B1(n108), .A0N(\FIFO_Memory[5][5] ), .A1N(n108), 
        .Y(n43) );
  OAI2BB2X1M U95 ( .B0(n127), .B1(n109), .A0N(\FIFO_Memory[5][6] ), .A1N(n109), 
        .Y(n44) );
  OAI2BB2X1M U96 ( .B0(n128), .B1(n108), .A0N(\FIFO_Memory[5][7] ), .A1N(n108), 
        .Y(n45) );
  OAI2BB2X1M U97 ( .B0(n129), .B1(n107), .A0N(\FIFO_Memory[4][0] ), .A1N(n107), 
        .Y(n46) );
  OAI2BB2X1M U98 ( .B0(n122), .B1(n106), .A0N(\FIFO_Memory[4][1] ), .A1N(n106), 
        .Y(n47) );
  OAI2BB2X1M U99 ( .B0(n123), .B1(n107), .A0N(\FIFO_Memory[4][2] ), .A1N(n107), 
        .Y(n48) );
  OAI2BB2X1M U100 ( .B0(n124), .B1(n106), .A0N(\FIFO_Memory[4][3] ), .A1N(n106), .Y(n49) );
  OAI2BB2X1M U101 ( .B0(n125), .B1(n107), .A0N(\FIFO_Memory[4][4] ), .A1N(n107), .Y(n50) );
  OAI2BB2X1M U102 ( .B0(n126), .B1(n106), .A0N(\FIFO_Memory[4][5] ), .A1N(n106), .Y(n51) );
  OAI2BB2X1M U103 ( .B0(n127), .B1(n107), .A0N(\FIFO_Memory[4][6] ), .A1N(n107), .Y(n52) );
  OAI2BB2X1M U104 ( .B0(n128), .B1(n106), .A0N(\FIFO_Memory[4][7] ), .A1N(n106), .Y(n53) );
  OAI2BB2X1M U105 ( .B0(n113), .B1(n129), .A0N(\FIFO_Memory[7][0] ), .A1N(n113), .Y(n22) );
  OAI2BB2X1M U106 ( .B0(n112), .B1(n122), .A0N(\FIFO_Memory[7][1] ), .A1N(n112), .Y(n23) );
  OAI2BB2X1M U107 ( .B0(n113), .B1(n123), .A0N(\FIFO_Memory[7][2] ), .A1N(n113), .Y(n24) );
  OAI2BB2X1M U108 ( .B0(n112), .B1(n124), .A0N(\FIFO_Memory[7][3] ), .A1N(n112), .Y(n25) );
  OAI2BB2X1M U109 ( .B0(n113), .B1(n125), .A0N(\FIFO_Memory[7][4] ), .A1N(n113), .Y(n26) );
  OAI2BB2X1M U110 ( .B0(n112), .B1(n126), .A0N(\FIFO_Memory[7][5] ), .A1N(n112), .Y(n27) );
  OAI2BB2X1M U111 ( .B0(n113), .B1(n127), .A0N(\FIFO_Memory[7][6] ), .A1N(n113), .Y(n28) );
  OAI2BB2X1M U112 ( .B0(n112), .B1(n128), .A0N(\FIFO_Memory[7][7] ), .A1N(n112), .Y(n29) );
  AND3X2M U113 ( .A(n12), .B(n131), .C(w_addr[0]), .Y(n7) );
  AND3X2M U114 ( .A(n12), .B(n130), .C(w_addr[1]), .Y(n8) );
  MX2X2M U115 ( .A(n10), .B(n9), .S0(N12), .Y(r_data[0]) );
  MX4X1M U116 ( .A(\FIFO_Memory[4][0] ), .B(\FIFO_Memory[5][0] ), .C(
        \FIFO_Memory[6][0] ), .D(\FIFO_Memory[7][0] ), .S0(n92), .S1(n95), .Y(
        n9) );
  MX4X1M U117 ( .A(\FIFO_Memory[0][0] ), .B(\FIFO_Memory[1][0] ), .C(
        \FIFO_Memory[2][0] ), .D(\FIFO_Memory[3][0] ), .S0(n93), .S1(n96), .Y(
        n10) );
  MX2X2M U118 ( .A(n13), .B(n11), .S0(N12), .Y(r_data[1]) );
  MX4X1M U119 ( .A(\FIFO_Memory[4][1] ), .B(\FIFO_Memory[5][1] ), .C(
        \FIFO_Memory[6][1] ), .D(\FIFO_Memory[7][1] ), .S0(n92), .S1(n95), .Y(
        n11) );
  MX4X1M U120 ( .A(\FIFO_Memory[0][1] ), .B(\FIFO_Memory[1][1] ), .C(
        \FIFO_Memory[2][1] ), .D(\FIFO_Memory[3][1] ), .S0(n93), .S1(n96), .Y(
        n13) );
  MX2X2M U121 ( .A(n15), .B(n14), .S0(N12), .Y(r_data[2]) );
  MX4X1M U122 ( .A(\FIFO_Memory[4][2] ), .B(\FIFO_Memory[5][2] ), .C(
        \FIFO_Memory[6][2] ), .D(\FIFO_Memory[7][2] ), .S0(n92), .S1(n95), .Y(
        n14) );
  MX4X1M U123 ( .A(\FIFO_Memory[0][2] ), .B(\FIFO_Memory[1][2] ), .C(
        \FIFO_Memory[2][2] ), .D(\FIFO_Memory[3][2] ), .S0(n93), .S1(n96), .Y(
        n15) );
  MX2X2M U124 ( .A(n19), .B(n17), .S0(N12), .Y(r_data[3]) );
  MX4X1M U125 ( .A(\FIFO_Memory[4][3] ), .B(\FIFO_Memory[5][3] ), .C(
        \FIFO_Memory[6][3] ), .D(\FIFO_Memory[7][3] ), .S0(n92), .S1(n95), .Y(
        n17) );
  MX4X1M U126 ( .A(\FIFO_Memory[0][3] ), .B(\FIFO_Memory[1][3] ), .C(
        \FIFO_Memory[2][3] ), .D(\FIFO_Memory[3][3] ), .S0(n93), .S1(n96), .Y(
        n19) );
  MX2X2M U127 ( .A(n21), .B(n20), .S0(N12), .Y(r_data[4]) );
  MX4X1M U128 ( .A(\FIFO_Memory[4][4] ), .B(\FIFO_Memory[5][4] ), .C(
        \FIFO_Memory[6][4] ), .D(\FIFO_Memory[7][4] ), .S0(n92), .S1(n95), .Y(
        n20) );
  MX4X1M U129 ( .A(\FIFO_Memory[0][4] ), .B(\FIFO_Memory[1][4] ), .C(
        \FIFO_Memory[2][4] ), .D(\FIFO_Memory[3][4] ), .S0(n93), .S1(n96), .Y(
        n21) );
  MX2X2M U130 ( .A(n87), .B(n86), .S0(N12), .Y(r_data[5]) );
  MX4X1M U131 ( .A(\FIFO_Memory[4][5] ), .B(\FIFO_Memory[5][5] ), .C(
        \FIFO_Memory[6][5] ), .D(\FIFO_Memory[7][5] ), .S0(n92), .S1(n95), .Y(
        n86) );
  MX4X1M U132 ( .A(\FIFO_Memory[0][5] ), .B(\FIFO_Memory[1][5] ), .C(
        \FIFO_Memory[2][5] ), .D(\FIFO_Memory[3][5] ), .S0(n93), .S1(n96), .Y(
        n87) );
  MX2X2M U133 ( .A(n89), .B(n88), .S0(N12), .Y(r_data[6]) );
  MX4X1M U134 ( .A(\FIFO_Memory[4][6] ), .B(\FIFO_Memory[5][6] ), .C(
        \FIFO_Memory[6][6] ), .D(\FIFO_Memory[7][6] ), .S0(n92), .S1(n95), .Y(
        n88) );
  MX4X1M U135 ( .A(\FIFO_Memory[0][6] ), .B(\FIFO_Memory[1][6] ), .C(
        \FIFO_Memory[2][6] ), .D(\FIFO_Memory[3][6] ), .S0(n93), .S1(n96), .Y(
        n89) );
  MX2X2M U136 ( .A(n91), .B(n90), .S0(N12), .Y(r_data[7]) );
  MX4X1M U137 ( .A(\FIFO_Memory[4][7] ), .B(\FIFO_Memory[5][7] ), .C(
        \FIFO_Memory[6][7] ), .D(\FIFO_Memory[7][7] ), .S0(n92), .S1(n95), .Y(
        n90) );
  MX4X1M U138 ( .A(\FIFO_Memory[0][7] ), .B(\FIFO_Memory[1][7] ), .C(
        \FIFO_Memory[2][7] ), .D(\FIFO_Memory[3][7] ), .S0(n93), .S1(n96), .Y(
        n91) );
  INVX2M U139 ( .A(N10), .Y(n94) );
  INVX2M U140 ( .A(N11), .Y(n97) );
endmodule


module DF_SYNC_0 ( in_ptr, CLK, RST, out_ptr );
  input [3:0] in_ptr;
  output [3:0] out_ptr;
  input CLK, RST;
  wire   \SYNC_reg[3][0] , \SYNC_reg[2][0] , \SYNC_reg[1][0] ,
         \SYNC_reg[0][0] , n1, n2;

  DFFRQX1M \SYNC_reg_reg[3][1]  ( .D(\SYNC_reg[3][0] ), .CK(CLK), .RN(n1), .Q(
        out_ptr[3]) );
  DFFRQX1M \SYNC_reg_reg[2][1]  ( .D(\SYNC_reg[2][0] ), .CK(CLK), .RN(n1), .Q(
        out_ptr[2]) );
  DFFRQX1M \SYNC_reg_reg[1][1]  ( .D(\SYNC_reg[1][0] ), .CK(CLK), .RN(n1), .Q(
        out_ptr[1]) );
  DFFRQX1M \SYNC_reg_reg[0][1]  ( .D(\SYNC_reg[0][0] ), .CK(CLK), .RN(n1), .Q(
        out_ptr[0]) );
  DFFRQX1M \SYNC_reg_reg[2][0]  ( .D(in_ptr[2]), .CK(CLK), .RN(n1), .Q(
        \SYNC_reg[2][0] ) );
  DFFRQX1M \SYNC_reg_reg[1][0]  ( .D(in_ptr[1]), .CK(CLK), .RN(n1), .Q(
        \SYNC_reg[1][0] ) );
  DFFRQX1M \SYNC_reg_reg[0][0]  ( .D(in_ptr[0]), .CK(CLK), .RN(n1), .Q(
        \SYNC_reg[0][0] ) );
  DFFRQX1M \SYNC_reg_reg[3][0]  ( .D(in_ptr[3]), .CK(CLK), .RN(n1), .Q(
        \SYNC_reg[3][0] ) );
  INVX4M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module DF_SYNC_1 ( in_ptr, CLK, RST, out_ptr );
  input [3:0] in_ptr;
  output [3:0] out_ptr;
  input CLK, RST;
  wire   \SYNC_reg[3][0] , \SYNC_reg[2][0] , \SYNC_reg[1][0] ,
         \SYNC_reg[0][0] , n1, n2;

  DFFRQX2M \SYNC_reg_reg[3][1]  ( .D(\SYNC_reg[3][0] ), .CK(CLK), .RN(n1), .Q(
        out_ptr[3]) );
  DFFRQX2M \SYNC_reg_reg[2][1]  ( .D(\SYNC_reg[2][0] ), .CK(CLK), .RN(n1), .Q(
        out_ptr[2]) );
  DFFRQX2M \SYNC_reg_reg[1][1]  ( .D(\SYNC_reg[1][0] ), .CK(CLK), .RN(n1), .Q(
        out_ptr[1]) );
  DFFRQX2M \SYNC_reg_reg[0][1]  ( .D(\SYNC_reg[0][0] ), .CK(CLK), .RN(n1), .Q(
        out_ptr[0]) );
  DFFRQX2M \SYNC_reg_reg[2][0]  ( .D(in_ptr[2]), .CK(CLK), .RN(n1), .Q(
        \SYNC_reg[2][0] ) );
  DFFRQX2M \SYNC_reg_reg[1][0]  ( .D(in_ptr[1]), .CK(CLK), .RN(n1), .Q(
        \SYNC_reg[1][0] ) );
  DFFRQX2M \SYNC_reg_reg[0][0]  ( .D(in_ptr[0]), .CK(CLK), .RN(n1), .Q(
        \SYNC_reg[0][0] ) );
  DFFRQX2M \SYNC_reg_reg[3][0]  ( .D(in_ptr[3]), .CK(CLK), .RN(n1), .Q(
        \SYNC_reg[3][0] ) );
  INVX4M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module FIFO_WR ( winc, wq2_rptr, W_CLK, W_RST, wfull, waddr, wptr );
  input [3:0] wq2_rptr;
  output [2:0] waddr;
  output [3:0] wptr;
  input winc, W_CLK, W_RST;
  output wfull;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n1, n2, n3, n4, n5, n6, n7;
  wire   [2:0] wptr_reg;

  DFFRQX2M \waddr_reg[2]  ( .D(n26), .CK(W_CLK), .RN(n1), .Q(waddr[2]) );
  DFFRQX4M \wptr_reg_reg[1]  ( .D(n23), .CK(W_CLK), .RN(n1), .Q(wptr_reg[1])
         );
  DFFRQX4M \wptr_reg_reg[2]  ( .D(n22), .CK(W_CLK), .RN(n1), .Q(wptr_reg[2])
         );
  DFFRQX4M \wptr_reg_reg[0]  ( .D(n27), .CK(W_CLK), .RN(n1), .Q(wptr_reg[0])
         );
  DFFRQX4M \wptr_reg_reg[3]  ( .D(n3), .CK(W_CLK), .RN(n1), .Q(wptr[3]) );
  DFFRQX4M \waddr_reg[0]  ( .D(n25), .CK(W_CLK), .RN(n1), .Q(waddr[0]) );
  DFFRQX4M \waddr_reg[1]  ( .D(n24), .CK(W_CLK), .RN(n1), .Q(waddr[1]) );
  CLKXOR2X2M U3 ( .A(wptr[3]), .B(wptr_reg[2]), .Y(wptr[2]) );
  NAND4X4M U4 ( .A(wptr_reg[0]), .B(wptr_reg[1]), .C(wptr[3]), .D(wptr_reg[2]), 
        .Y(n17) );
  CLKXOR2X2M U5 ( .A(wptr_reg[0]), .B(wptr_reg[1]), .Y(wptr[0]) );
  AOI32X1M U6 ( .A0(n4), .A1(wptr_reg[2]), .A2(wptr_reg[1]), .B0(n17), .B1(
        wptr[3]), .Y(n16) );
  CLKXOR2X2M U7 ( .A(wptr_reg[2]), .B(wptr_reg[1]), .Y(wptr[1]) );
  AND4X2M U8 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(wfull) );
  NAND3X2M U9 ( .A(waddr[1]), .B(waddr[0]), .C(waddr[2]), .Y(n15) );
  INVX2M U10 ( .A(winc), .Y(n5) );
  INVX4M U11 ( .A(n2), .Y(n1) );
  INVX2M U12 ( .A(W_RST), .Y(n2) );
  OAI21X4M U13 ( .A0(wfull), .A1(n5), .B0(n17), .Y(n11) );
  OAI21X4M U14 ( .A0(wfull), .A1(n5), .B0(n15), .Y(n14) );
  OAI31X2M U15 ( .A0(n8), .A1(wptr_reg[2]), .A2(n7), .B0(n9), .Y(n22) );
  OAI21X2M U16 ( .A0(n7), .A1(n10), .B0(wptr_reg[2]), .Y(n9) );
  INVX2M U17 ( .A(wptr_reg[1]), .Y(n7) );
  CLKXOR2X2M U18 ( .A(wq2_rptr[3]), .B(wptr[3]), .Y(n21) );
  XNOR2X2M U19 ( .A(wptr[1]), .B(wq2_rptr[1]), .Y(n18) );
  CLKXOR2X2M U20 ( .A(wq2_rptr[2]), .B(wptr[2]), .Y(n20) );
  NAND3X2M U21 ( .A(n11), .B(n17), .C(wptr_reg[0]), .Y(n8) );
  XNOR2X2M U22 ( .A(wptr[0]), .B(wq2_rptr[0]), .Y(n19) );
  INVX2M U23 ( .A(n16), .Y(n3) );
  INVX2M U24 ( .A(n8), .Y(n4) );
  CLKXOR2X2M U25 ( .A(n14), .B(waddr[0]), .Y(n25) );
  CLKXOR2X2M U26 ( .A(n11), .B(wptr_reg[0]), .Y(n27) );
  OAI21X2M U27 ( .A0(waddr[1]), .A1(n12), .B0(n13), .Y(n24) );
  AO21XLM U28 ( .A0(n14), .A1(waddr[0]), .B0(n6), .Y(n13) );
  NAND3X2M U29 ( .A(n14), .B(n15), .C(waddr[0]), .Y(n12) );
  OAI2BB2X1M U30 ( .B0(wptr_reg[1]), .B1(n8), .A0N(n10), .A1N(wptr_reg[1]), 
        .Y(n23) );
  OAI2BB2X1M U31 ( .B0(n6), .B1(n12), .A0N(n15), .A1N(waddr[2]), .Y(n26) );
  NAND2X2M U32 ( .A(wptr_reg[0]), .B(n11), .Y(n10) );
  INVX2M U33 ( .A(waddr[1]), .Y(n6) );
endmodule


module FIFO_RD ( rinc, rq2_wptr, R_CLK, R_RST, rempty, raddr, rptr );
  input [3:0] rq2_wptr;
  output [2:0] raddr;
  output [3:0] rptr;
  input rinc, R_CLK, R_RST;
  output rempty;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n1, n2, n3, n4, n5, n6, n7;
  wire   [2:0] rptr_reg;

  DFFRHQX8M \raddr_reg[2]  ( .D(n26), .CK(R_CLK), .RN(n1), .Q(raddr[2]) );
  DFFRQX4M \raddr_reg[0]  ( .D(n25), .CK(R_CLK), .RN(n1), .Q(raddr[0]) );
  DFFRQX4M \rptr_reg_reg[3]  ( .D(n3), .CK(R_CLK), .RN(n1), .Q(rptr[3]) );
  DFFRQX4M \rptr_reg_reg[0]  ( .D(n27), .CK(R_CLK), .RN(n1), .Q(rptr_reg[0])
         );
  DFFRQX4M \rptr_reg_reg[2]  ( .D(n22), .CK(R_CLK), .RN(n1), .Q(rptr_reg[2])
         );
  DFFRQX4M \rptr_reg_reg[1]  ( .D(n23), .CK(R_CLK), .RN(n1), .Q(rptr_reg[1])
         );
  DFFRX4M \raddr_reg[1]  ( .D(n24), .CK(R_CLK), .RN(n1), .Q(raddr[1]), .QN(n5)
         );
  NAND3X2M U3 ( .A(raddr[1]), .B(raddr[0]), .C(raddr[2]), .Y(n15) );
  INVX4M U4 ( .A(n2), .Y(n1) );
  INVX2M U5 ( .A(R_RST), .Y(n2) );
  OAI21X4M U6 ( .A0(rempty), .A1(n7), .B0(n17), .Y(n11) );
  OAI21X4M U7 ( .A0(rempty), .A1(n7), .B0(n15), .Y(n14) );
  CLKXOR2X2M U8 ( .A(rptr_reg[0]), .B(rptr_reg[1]), .Y(rptr[0]) );
  CLKXOR2X2M U9 ( .A(rptr_reg[2]), .B(rptr_reg[1]), .Y(rptr[1]) );
  CLKXOR2X2M U10 ( .A(rptr[3]), .B(rptr_reg[2]), .Y(rptr[2]) );
  AND4X2M U11 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(rempty) );
  XNOR2X2M U12 ( .A(rptr[3]), .B(rq2_wptr[3]), .Y(n20) );
  XNOR2X2M U13 ( .A(rptr[0]), .B(rq2_wptr[0]), .Y(n19) );
  XNOR2X2M U14 ( .A(rptr[2]), .B(rq2_wptr[2]), .Y(n21) );
  XNOR2X2M U15 ( .A(rptr[1]), .B(rq2_wptr[1]), .Y(n18) );
  OAI31X2M U16 ( .A0(n8), .A1(rptr_reg[2]), .A2(n6), .B0(n9), .Y(n22) );
  OAI21X2M U17 ( .A0(n6), .A1(n10), .B0(rptr_reg[2]), .Y(n9) );
  INVX2M U18 ( .A(rptr_reg[1]), .Y(n6) );
  INVX2M U19 ( .A(n16), .Y(n3) );
  AOI32X1M U20 ( .A0(n4), .A1(rptr_reg[2]), .A2(rptr_reg[1]), .B0(n17), .B1(
        rptr[3]), .Y(n16) );
  INVX2M U21 ( .A(n8), .Y(n4) );
  NAND4X4M U22 ( .A(rptr_reg[0]), .B(rptr_reg[1]), .C(rptr[3]), .D(rptr_reg[2]), .Y(n17) );
  NAND3X2M U23 ( .A(n11), .B(n17), .C(rptr_reg[0]), .Y(n8) );
  CLKXOR2X2M U24 ( .A(n14), .B(raddr[0]), .Y(n25) );
  CLKXOR2X2M U25 ( .A(n11), .B(rptr_reg[0]), .Y(n27) );
  NAND3X2M U26 ( .A(n14), .B(n15), .C(raddr[0]), .Y(n12) );
  OAI2BB2X1M U27 ( .B0(rptr_reg[1]), .B1(n8), .A0N(n10), .A1N(rptr_reg[1]), 
        .Y(n23) );
  OAI2BB2X1M U28 ( .B0(n5), .B1(n12), .A0N(n15), .A1N(raddr[2]), .Y(n26) );
  OAI21X2M U29 ( .A0(raddr[1]), .A1(n12), .B0(n13), .Y(n24) );
  AO21XLM U30 ( .A0(n14), .A1(raddr[0]), .B0(n5), .Y(n13) );
  NAND2X2M U31 ( .A(rptr_reg[0]), .B(n11), .Y(n10) );
  INVX2M U32 ( .A(rinc), .Y(n7) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_ADD_WIDTH4 ( W_CLK, W_RST, W_INC, R_CLK, R_RST, 
        R_INC, WR_DATA, FULL, RD_DATA, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;
  wire   n1, n2, n3, n4;
  wire   [2:0] waddr;
  wire   [2:0] raddr;
  wire   [3:0] wptr;
  wire   [3:0] rq2_wptr;
  wire   [3:0] rptr;
  wire   [3:0] wq2_rptr;

  FIFO_MEM_CTRL U0 ( .w_data(WR_DATA), .W_CLK(W_CLK), .W_RST(n3), .w_addr(
        waddr), .r_addr(raddr), .winc(W_INC), .wfull(FULL), .r_data(RD_DATA)
         );
  DF_SYNC_0 U1 ( .in_ptr(wptr), .CLK(R_CLK), .RST(n1), .out_ptr(rq2_wptr) );
  DF_SYNC_1 U2 ( .in_ptr(rptr), .CLK(W_CLK), .RST(n3), .out_ptr(wq2_rptr) );
  FIFO_WR U3 ( .winc(W_INC), .wq2_rptr(wq2_rptr), .W_CLK(W_CLK), .W_RST(n3), 
        .wfull(FULL), .waddr(waddr), .wptr(wptr) );
  FIFO_RD U4 ( .rinc(R_INC), .rq2_wptr(rq2_wptr), .R_CLK(R_CLK), .R_RST(n1), 
        .rempty(EMPTY), .raddr(raddr), .rptr(rptr) );
  INVX2M U5 ( .A(n4), .Y(n3) );
  INVX2M U6 ( .A(W_RST), .Y(n4) );
  INVX2M U7 ( .A(n2), .Y(n1) );
  INVX2M U8 ( .A(R_RST), .Y(n2) );
endmodule


module PULSE_GEN ( CLK, RST, LVL_SIG, PULSE_SIG );
  input CLK, RST, LVL_SIG;
  output PULSE_SIG;
  wire   pulse_flop, prev_flop;

  DFFRQX1M pulse_flop_reg ( .D(prev_flop), .CK(CLK), .RN(RST), .Q(pulse_flop)
         );
  DFFRQX1M prev_flop_reg ( .D(LVL_SIG), .CK(CLK), .RN(RST), .Q(prev_flop) );
  NOR2BX2M U3 ( .AN(prev_flop), .B(pulse_flop), .Y(PULSE_SIG) );
endmodule


module ClkDiv_width8_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_width8 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N0, output_clk, N10, N11, N12, N13, N14, N15, N16, N17, N22, N23, N24,
         N25, N26, N27, N28, N34, N35, N36, N37, N38, N39, N40, N41, N43, N44,
         N45, N46, N47, N48, N49, N50, n16, n17, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40;
  wire   [7:0] cyc_counter;
  assign N22 = i_div_ratio[1];
  assign N23 = i_div_ratio[2];
  assign N24 = i_div_ratio[3];
  assign N25 = i_div_ratio[4];
  assign N26 = i_div_ratio[5];
  assign N27 = i_div_ratio[6];
  assign N28 = i_div_ratio[7];

  ClkDiv_width8_DW01_inc_0 add_57 ( .A(cyc_counter), .SUM({N41, N40, N39, N38, 
        N37, N36, N35, N34}) );
  DFFRX1M output_clk_reg ( .D(n16), .CK(i_ref_clk), .RN(n2), .Q(output_clk) );
  DFFRX2M \cyc_counter_reg[0]  ( .D(N43), .CK(i_ref_clk), .RN(n2), .Q(
        cyc_counter[0]) );
  DFFRX2M x_flag_reg ( .D(n17), .CK(i_ref_clk), .RN(n2), .QN(n10) );
  DFFRX2M \cyc_counter_reg[4]  ( .D(N47), .CK(i_ref_clk), .RN(n2), .Q(
        cyc_counter[4]) );
  DFFRX2M \cyc_counter_reg[3]  ( .D(N46), .CK(i_ref_clk), .RN(n2), .Q(
        cyc_counter[3]) );
  DFFRX2M \cyc_counter_reg[1]  ( .D(N44), .CK(i_ref_clk), .RN(n2), .Q(
        cyc_counter[1]) );
  DFFRX2M \cyc_counter_reg[6]  ( .D(N49), .CK(i_ref_clk), .RN(n2), .Q(
        cyc_counter[6]) );
  DFFRX2M \cyc_counter_reg[5]  ( .D(N48), .CK(i_ref_clk), .RN(n2), .Q(
        cyc_counter[5]) );
  DFFRX2M \cyc_counter_reg[2]  ( .D(N45), .CK(i_ref_clk), .RN(n2), .Q(
        cyc_counter[2]) );
  DFFRX2M \cyc_counter_reg[7]  ( .D(N50), .CK(i_ref_clk), .RN(n2), .Q(
        cyc_counter[7]) );
  CLKXOR2X2M U3 ( .A(cyc_counter[2]), .B(N24), .Y(n27) );
  XNOR2X2M U4 ( .A(N27), .B(cyc_counter[5]), .Y(n19) );
  XOR2X1M U5 ( .A(cyc_counter[5]), .B(N15), .Y(n34) );
  XNOR2X2M U6 ( .A(N28), .B(cyc_counter[6]), .Y(n18) );
  CLKXOR2X2M U7 ( .A(cyc_counter[1]), .B(N23), .Y(n24) );
  CLKXOR2X2M U8 ( .A(cyc_counter[3]), .B(N25), .Y(n25) );
  NAND3BXLM U9 ( .AN(cyc_counter[7]), .B(n10), .C(N0), .Y(n22) );
  NOR3X4M U10 ( .A(N27), .B(N28), .C(n7), .Y(N17) );
  OAI21X2M U11 ( .A0(N27), .A1(n7), .B0(N28), .Y(n8) );
  CLKXOR2X2M U12 ( .A(cyc_counter[0]), .B(N22), .Y(n23) );
  NOR4X2M U13 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n31) );
  NOR4X2M U14 ( .A(n22), .B(n23), .C(n15), .D(n24), .Y(n21) );
  NOR3X4M U15 ( .A(n15), .B(n13), .C(n10), .Y(n9) );
  NAND4X2M U16 ( .A(n28), .B(n29), .C(n30), .D(n31), .Y(n13) );
  NOR3X2M U17 ( .A(n36), .B(n37), .C(n38), .Y(n30) );
  NAND4X2M U18 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(n11) );
  NOR3X2M U19 ( .A(n25), .B(n26), .C(n27), .Y(n20) );
  OAI21X2M U20 ( .A0(n39), .A1(n40), .B0(i_clk_en), .Y(n37) );
  OR2X2M U21 ( .A(n6), .B(N26), .Y(n7) );
  OR2X2M U22 ( .A(n5), .B(N25), .Y(n6) );
  OR2X2M U23 ( .A(n4), .B(N24), .Y(n5) );
  OAI2BB1XLM U24 ( .A0N(n4), .A1N(N24), .B0(n5), .Y(N12) );
  INVX6M U25 ( .A(n3), .Y(n2) );
  INVX2M U26 ( .A(i_rst_n), .Y(n3) );
  CLKBUFX6M U27 ( .A(n12), .Y(n1) );
  OAI211X1M U28 ( .A0(i_div_ratio[0]), .A1(n13), .B0(n11), .C0(n14), .Y(n12)
         );
  OR2X2M U29 ( .A(N23), .B(N22), .Y(n4) );
  CLKINVX1M U30 ( .A(N22), .Y(N10) );
  OAI2BB1X1M U31 ( .A0N(N22), .A1N(N23), .B0(n4), .Y(N11) );
  OAI2BB1X1M U32 ( .A0N(n5), .A1N(N25), .B0(n6), .Y(N13) );
  OAI2BB1X1M U33 ( .A0N(n6), .A1N(N26), .B0(n7), .Y(N14) );
  XNOR2X1M U34 ( .A(N27), .B(n7), .Y(N15) );
  NAND2BX1M U35 ( .AN(N17), .B(n8), .Y(N16) );
  MX2X6M U36 ( .A(i_ref_clk), .B(output_clk), .S0(N0), .Y(o_div_clk) );
  OAI21X1M U37 ( .A0(n9), .A1(n10), .B0(n11), .Y(n17) );
  CLKXOR2X2M U38 ( .A(n1), .B(output_clk), .Y(n16) );
  NOR2BX1M U39 ( .AN(N41), .B(n1), .Y(N50) );
  NOR2BX1M U40 ( .AN(N40), .B(n1), .Y(N49) );
  NOR2BX1M U41 ( .AN(N39), .B(n1), .Y(N48) );
  NOR2BX1M U42 ( .AN(N38), .B(n1), .Y(N47) );
  NOR2BX1M U43 ( .AN(N37), .B(n1), .Y(N46) );
  NOR2BX1M U44 ( .AN(N36), .B(n1), .Y(N45) );
  NOR2BX1M U45 ( .AN(N35), .B(n1), .Y(N44) );
  NOR2BX1M U46 ( .AN(N34), .B(n1), .Y(N43) );
  CLKINVX1M U47 ( .A(n9), .Y(n14) );
  CLKINVX1M U48 ( .A(i_div_ratio[0]), .Y(n15) );
  CLKXOR2X2M U49 ( .A(cyc_counter[4]), .B(N26), .Y(n26) );
  CLKXOR2X2M U50 ( .A(cyc_counter[6]), .B(N16), .Y(n35) );
  CLKXOR2X2M U51 ( .A(cyc_counter[4]), .B(N14), .Y(n33) );
  CLKXOR2X2M U52 ( .A(cyc_counter[3]), .B(N13), .Y(n32) );
  CLKXOR2X2M U53 ( .A(cyc_counter[1]), .B(N11), .Y(n38) );
  CLKXOR2X2M U54 ( .A(cyc_counter[0]), .B(N10), .Y(n36) );
  XNOR2X1M U55 ( .A(cyc_counter[2]), .B(N12), .Y(n29) );
  XNOR2X1M U56 ( .A(cyc_counter[7]), .B(N17), .Y(n28) );
  CLKINVX1M U57 ( .A(n37), .Y(N0) );
  OR3X1M U58 ( .A(N23), .B(N24), .C(N22), .Y(n40) );
  OR4X1M U59 ( .A(N25), .B(N26), .C(N27), .D(N28), .Y(n39) );
endmodule


module Pres_MUX_WIDTH4_PRE_WD6 ( Prescale, div_ratio );
  input [5:0] Prescale;
  output [3:0] div_ratio;
  wire   n5, n6, n7, n8, n9, n1, n2, n3, n4;

  NOR3X12M U6 ( .A(n7), .B(Prescale[1]), .C(Prescale[0]), .Y(div_ratio[1]) );
  NOR4X2M U3 ( .A(Prescale[5]), .B(Prescale[4]), .C(Prescale[3]), .D(n2), .Y(
        n8) );
  CLKINVX1M U4 ( .A(Prescale[1]), .Y(n3) );
  NOR3X8M U5 ( .A(n6), .B(Prescale[1]), .C(Prescale[0]), .Y(div_ratio[2]) );
  NAND4BX2M U7 ( .AN(Prescale[3]), .B(Prescale[4]), .C(n2), .D(n1), .Y(n7) );
  NAND4BX2M U8 ( .AN(Prescale[4]), .B(Prescale[3]), .C(n2), .D(n1), .Y(n6) );
  NOR4X4M U9 ( .A(n5), .B(Prescale[3]), .C(Prescale[5]), .D(Prescale[4]), .Y(
        div_ratio[3]) );
  NAND3X2M U10 ( .A(n4), .B(n3), .C(Prescale[2]), .Y(n5) );
  OAI211X4M U11 ( .A0(n8), .A1(n9), .B0(n4), .C0(n3), .Y(div_ratio[0]) );
  NAND2X2M U12 ( .A(n7), .B(n6), .Y(n9) );
  INVX2M U13 ( .A(Prescale[2]), .Y(n2) );
  INVX1M U14 ( .A(Prescale[0]), .Y(n4) );
  INVX2M U15 ( .A(Prescale[5]), .Y(n1) );
endmodule


module ClkDiv_width4 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [3:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   output_clk, x_flag, N18, N19, N20, N31, N32, N33, N34, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [3:0] cyc_counter;
  assign N18 = i_div_ratio[1];
  assign N19 = i_div_ratio[2];
  assign N20 = i_div_ratio[3];

  OAI211X8M U14 ( .A0(i_div_ratio[0]), .A1(n22), .B0(n6), .C0(n17), .Y(n15) );
  DFFRQX4M \cyc_counter_reg[1]  ( .D(N32), .CK(i_ref_clk), .RN(n3), .Q(
        cyc_counter[1]) );
  DFFRQX4M \cyc_counter_reg[0]  ( .D(N31), .CK(i_ref_clk), .RN(n3), .Q(
        cyc_counter[0]) );
  DFFRX1M x_flag_reg ( .D(n34), .CK(i_ref_clk), .RN(i_rst_n), .Q(x_flag), .QN(
        n8) );
  DFFRX1M output_clk_reg ( .D(n33), .CK(i_ref_clk), .RN(n3), .Q(output_clk) );
  DFFRX4M \cyc_counter_reg[2]  ( .D(N33), .CK(i_ref_clk), .RN(n3), .Q(
        cyc_counter[2]), .QN(n9) );
  DFFRX2M \cyc_counter_reg[3]  ( .D(N34), .CK(i_ref_clk), .RN(n3), .Q(
        cyc_counter[3]), .QN(n10) );
  OAI31X2M U3 ( .A0(N18), .A1(N20), .A2(N19), .B0(i_clk_en), .Y(n27) );
  INVX2M U4 ( .A(n27), .Y(n1) );
  INVX2M U5 ( .A(n1), .Y(n2) );
  NOR4X2M U6 ( .A(x_flag), .B(cyc_counter[3]), .C(n2), .D(n7), .Y(n26) );
  OAI32X2M U7 ( .A0(n18), .A1(cyc_counter[3]), .A2(n9), .B0(n19), .B1(n10), 
        .Y(N34) );
  NOR2X2M U8 ( .A(n15), .B(cyc_counter[0]), .Y(N31) );
  XOR3XLM U9 ( .A(cyc_counter[1]), .B(N19), .C(N18), .Y(n28) );
  INVX2M U10 ( .A(n16), .Y(n6) );
  NOR3X4M U11 ( .A(n7), .B(n22), .C(n8), .Y(n16) );
  CLKXOR2X2M U12 ( .A(n9), .B(n32), .Y(n31) );
  OAI21X2M U13 ( .A0(N18), .A1(N19), .B0(N20), .Y(n32) );
  CLKXOR2X2M U15 ( .A(N20), .B(n9), .Y(n24) );
  OAI21X2M U16 ( .A0(n16), .A1(n8), .B0(n17), .Y(n34) );
  INVX2M U17 ( .A(i_div_ratio[0]), .Y(n7) );
  INVX4M U18 ( .A(n4), .Y(n3) );
  INVX2M U19 ( .A(i_rst_n), .Y(n4) );
  NOR2BX2M U20 ( .AN(n20), .B(n9), .Y(n19) );
  AOI2BB1X2M U21 ( .A0N(cyc_counter[1]), .A1N(n15), .B0(N31), .Y(n20) );
  OAI22X1M U22 ( .A0(n20), .A1(n9), .B0(cyc_counter[2]), .B1(n18), .Y(N33) );
  CLKXOR2X2M U23 ( .A(n15), .B(output_clk), .Y(n33) );
  NAND4X2M U24 ( .A(n1), .B(n28), .C(n29), .D(n30), .Y(n22) );
  CLKXOR2X2M U25 ( .A(cyc_counter[0]), .B(N18), .Y(n30) );
  NOR2X2M U26 ( .A(cyc_counter[3]), .B(n31), .Y(n29) );
  NAND3X2M U27 ( .A(cyc_counter[1]), .B(cyc_counter[0]), .C(n5), .Y(n18) );
  INVX2M U28 ( .A(n15), .Y(n5) );
  NAND4X2M U29 ( .A(n23), .B(n24), .C(n25), .D(n26), .Y(n17) );
  XNOR2X2M U30 ( .A(N19), .B(cyc_counter[1]), .Y(n23) );
  XNOR2X2M U31 ( .A(N18), .B(cyc_counter[0]), .Y(n25) );
  NOR2X2M U32 ( .A(n21), .B(n15), .Y(N32) );
  XNOR2X2M U33 ( .A(cyc_counter[0]), .B(cyc_counter[1]), .Y(n21) );
  MX2X6M U34 ( .A(i_ref_clk), .B(output_clk), .S0(n1), .Y(o_div_clk) );
endmodule


module UART_Serial ( P_DATA, Data_Valid, ser_en, CLK, RST, Busy, ser_done, 
        ser_data );
  input [7:0] P_DATA;
  input Data_Valid, ser_en, CLK, RST, Busy;
  output ser_done, ser_data;
  wire   n6, n7, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n1, n2, n3, n4,
         n5, n8, n32, n33, n34, n35;
  wire   [2:0] P_Counter;
  wire   [7:1] Temp_Reg;

  DFFRQX1M \Temp_Reg_reg[6]  ( .D(n26), .CK(CLK), .RN(n4), .Q(Temp_Reg[6]) );
  DFFRQX1M \Temp_Reg_reg[5]  ( .D(n27), .CK(CLK), .RN(n4), .Q(Temp_Reg[5]) );
  DFFRQX1M \Temp_Reg_reg[4]  ( .D(n28), .CK(CLK), .RN(n4), .Q(Temp_Reg[4]) );
  DFFRQX1M \Temp_Reg_reg[3]  ( .D(n29), .CK(CLK), .RN(n4), .Q(Temp_Reg[3]) );
  DFFRQX1M \Temp_Reg_reg[2]  ( .D(n30), .CK(CLK), .RN(n4), .Q(Temp_Reg[2]) );
  DFFRQX1M \Temp_Reg_reg[1]  ( .D(n31), .CK(CLK), .RN(n4), .Q(Temp_Reg[1]) );
  DFFRQX1M \Temp_Reg_reg[0]  ( .D(n24), .CK(CLK), .RN(n4), .Q(ser_data) );
  DFFRQX1M \Temp_Reg_reg[7]  ( .D(n25), .CK(CLK), .RN(n4), .Q(Temp_Reg[7]) );
  DFFRX1M \P_Counter_reg[2]  ( .D(n21), .CK(CLK), .RN(n4), .Q(P_Counter[2]), 
        .QN(n35) );
  DFFRX4M \P_Counter_reg[0]  ( .D(n23), .CK(CLK), .RN(n4), .Q(P_Counter[0]), 
        .QN(n33) );
  DFFRX4M \P_Counter_reg[1]  ( .D(n22), .CK(CLK), .RN(n4), .Q(P_Counter[1]), 
        .QN(n34) );
  DFFRX4M ser_done_reg ( .D(n20), .CK(CLK), .RN(n4), .Q(ser_done) );
  NAND2X2M U3 ( .A(ser_en), .B(n11), .Y(n1) );
  CLKBUFX6M U4 ( .A(n6), .Y(n3) );
  INVX2M U5 ( .A(n3), .Y(n8) );
  INVX6M U6 ( .A(n5), .Y(n4) );
  INVX2M U7 ( .A(RST), .Y(n5) );
  NOR2X2M U8 ( .A(n32), .B(n2), .Y(n6) );
  INVX4M U9 ( .A(n1), .Y(n2) );
  AOI21X2M U10 ( .A0(n33), .A1(n11), .B0(n3), .Y(n12) );
  INVX6M U11 ( .A(n11), .Y(n32) );
  OAI32X2M U12 ( .A0(n9), .A1(P_Counter[2]), .A2(n34), .B0(n10), .B1(n35), .Y(
        n21) );
  AOI21BX2M U13 ( .A0(n11), .A1(n34), .B0N(n12), .Y(n10) );
  OAI32X2M U14 ( .A0(n3), .A1(P_Counter[0]), .A2(n32), .B0(n33), .B1(n8), .Y(
        n23) );
  NAND2BX4M U15 ( .AN(Busy), .B(Data_Valid), .Y(n11) );
  OAI22X1M U16 ( .A0(n12), .A1(n34), .B0(P_Counter[1]), .B1(n9), .Y(n22) );
  NAND3X2M U17 ( .A(n8), .B(n11), .C(P_Counter[0]), .Y(n9) );
  OAI2BB1X2M U18 ( .A0N(ser_data), .A1N(n3), .B0(n13), .Y(n24) );
  AOI22X1M U19 ( .A0(Temp_Reg[1]), .A1(n2), .B0(P_DATA[0]), .B1(n32), .Y(n13)
         );
  OAI2BB1X2M U20 ( .A0N(n3), .A1N(Temp_Reg[1]), .B0(n19), .Y(n31) );
  AOI22X1M U21 ( .A0(Temp_Reg[2]), .A1(n2), .B0(P_DATA[1]), .B1(n32), .Y(n19)
         );
  OAI2BB1X2M U22 ( .A0N(n3), .A1N(Temp_Reg[2]), .B0(n18), .Y(n30) );
  AOI22X1M U23 ( .A0(Temp_Reg[3]), .A1(n2), .B0(P_DATA[2]), .B1(n32), .Y(n18)
         );
  OAI2BB1X2M U24 ( .A0N(n3), .A1N(Temp_Reg[3]), .B0(n17), .Y(n29) );
  AOI22X1M U25 ( .A0(Temp_Reg[4]), .A1(n2), .B0(P_DATA[3]), .B1(n32), .Y(n17)
         );
  OAI2BB1X2M U26 ( .A0N(n3), .A1N(Temp_Reg[4]), .B0(n16), .Y(n28) );
  AOI22X1M U27 ( .A0(Temp_Reg[5]), .A1(n2), .B0(P_DATA[4]), .B1(n32), .Y(n16)
         );
  OAI2BB1X2M U28 ( .A0N(n3), .A1N(Temp_Reg[5]), .B0(n15), .Y(n27) );
  AOI22X1M U29 ( .A0(Temp_Reg[6]), .A1(n2), .B0(P_DATA[5]), .B1(n32), .Y(n15)
         );
  OAI2BB1X2M U30 ( .A0N(n3), .A1N(Temp_Reg[6]), .B0(n14), .Y(n26) );
  AOI22X1M U31 ( .A0(Temp_Reg[7]), .A1(n2), .B0(P_DATA[6]), .B1(n32), .Y(n14)
         );
  OAI2BB1X2M U32 ( .A0N(ser_done), .A1N(n3), .B0(n7), .Y(n20) );
  NAND4X2M U33 ( .A(P_Counter[2]), .B(P_Counter[1]), .C(P_Counter[0]), .D(n2), 
        .Y(n7) );
  AO22X1M U34 ( .A0(n3), .A1(Temp_Reg[7]), .B0(P_DATA[7]), .B1(n32), .Y(n25)
         );
endmodule


module UART_T_FSM ( Data_Valid, PAR_EN, ser_done, CLK, RST, mux_sel, Busy, 
        ser_en );
  output [1:0] mux_sel;
  input Data_Valid, PAR_EN, ser_done, CLK, RST;
  output Busy, ser_en;
  wire   Busy_comb, n5, n6, n7, n1, n2, n3, n4, n8, n9;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX1M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRX1M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]), .QN(n9) );
  DFFRX1M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]), .QN(n4) );
  DFFRX4M Busy_reg ( .D(Busy_comb), .CK(CLK), .RN(RST), .Q(Busy) );
  INVXLM U3 ( .A(n9), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(n2) );
  NOR2X4M U5 ( .A(n4), .B(current_state[2]), .Y(ser_en) );
  NAND2X2M U6 ( .A(n6), .B(n2), .Y(mux_sel[0]) );
  INVX2M U7 ( .A(ser_en), .Y(n3) );
  OAI2BB1X2M U8 ( .A0N(n2), .A1N(n6), .B0(n3), .Y(next_state[1]) );
  OAI22X1M U9 ( .A0(ser_done), .A1(n3), .B0(current_state[1]), .B1(n7), .Y(
        next_state[0]) );
  AOI21X2M U10 ( .A0(Data_Valid), .A1(n2), .B0(ser_en), .Y(n7) );
  XNOR2X4M U11 ( .A(current_state[0]), .B(n8), .Y(n6) );
  INVX2M U12 ( .A(ser_en), .Y(mux_sel[1]) );
  OAI21X2M U13 ( .A0(current_state[0]), .A1(n8), .B0(n3), .Y(Busy_comb) );
  INVX2M U14 ( .A(current_state[1]), .Y(n8) );
  NOR3X2M U15 ( .A(n8), .B(current_state[2]), .C(n5), .Y(next_state[2]) );
  AOI2B1X1M U16 ( .A1N(PAR_EN), .A0(ser_done), .B0(n4), .Y(n5) );
endmodule


module UART_Parity_calc ( P_DATA, Data_Valid, PAR_TYPE, PAR_EN, CLK, RST, Busy, 
        par_bit );
  input [7:0] P_DATA;
  input Data_Valid, PAR_TYPE, PAR_EN, CLK, RST, Busy;
  output par_bit;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n2,
         n17, n18, n19;
  wire   [7:0] Data_draft;

  DFFRQX1M par_bit_reg ( .D(n8), .CK(CLK), .RN(n17), .Q(par_bit) );
  DFFRQX1M \Data_draft_reg[5]  ( .D(n14), .CK(CLK), .RN(n17), .Q(Data_draft[5]) );
  DFFRQX1M \Data_draft_reg[1]  ( .D(n10), .CK(CLK), .RN(n17), .Q(Data_draft[1]) );
  DFFRQX1M \Data_draft_reg[4]  ( .D(n13), .CK(CLK), .RN(n17), .Q(Data_draft[4]) );
  DFFRQX1M \Data_draft_reg[0]  ( .D(n9), .CK(CLK), .RN(n17), .Q(Data_draft[0])
         );
  DFFRQX1M \Data_draft_reg[2]  ( .D(n11), .CK(CLK), .RN(n17), .Q(Data_draft[2]) );
  DFFRQX1M \Data_draft_reg[7]  ( .D(n16), .CK(CLK), .RN(n17), .Q(Data_draft[7]) );
  DFFRQX1M \Data_draft_reg[3]  ( .D(n12), .CK(CLK), .RN(n17), .Q(Data_draft[3]) );
  DFFRQX1M \Data_draft_reg[6]  ( .D(n15), .CK(CLK), .RN(n17), .Q(Data_draft[6]) );
  INVX6M U2 ( .A(n18), .Y(n17) );
  INVX2M U3 ( .A(RST), .Y(n18) );
  CLKBUFX8M U4 ( .A(n7), .Y(n2) );
  NOR2BX2M U5 ( .AN(Data_Valid), .B(Busy), .Y(n7) );
  AO2B2X2M U6 ( .B0(P_DATA[0]), .B1(n2), .A0(Data_draft[0]), .A1N(n2), .Y(n9)
         );
  AO2B2X2M U7 ( .B0(P_DATA[1]), .B1(n2), .A0(Data_draft[1]), .A1N(n2), .Y(n10)
         );
  AO2B2X2M U8 ( .B0(P_DATA[2]), .B1(n2), .A0(Data_draft[2]), .A1N(n2), .Y(n11)
         );
  AO2B2X2M U9 ( .B0(P_DATA[3]), .B1(n2), .A0(Data_draft[3]), .A1N(n2), .Y(n12)
         );
  AO2B2X2M U10 ( .B0(P_DATA[4]), .B1(n2), .A0(Data_draft[4]), .A1N(n2), .Y(n13) );
  AO2B2X2M U11 ( .B0(P_DATA[5]), .B1(n2), .A0(Data_draft[5]), .A1N(n2), .Y(n14) );
  AO2B2X2M U12 ( .B0(P_DATA[6]), .B1(n2), .A0(Data_draft[6]), .A1N(n2), .Y(n15) );
  AO2B2X2M U13 ( .B0(P_DATA[7]), .B1(n2), .A0(Data_draft[7]), .A1N(n2), .Y(n16) );
  XNOR2X2M U14 ( .A(Data_draft[2]), .B(Data_draft[3]), .Y(n5) );
  OAI2BB2X1M U15 ( .B0(n1), .B1(n19), .A0N(par_bit), .A1N(n19), .Y(n8) );
  INVX2M U16 ( .A(PAR_EN), .Y(n19) );
  XOR3XLM U17 ( .A(n3), .B(PAR_TYPE), .C(n4), .Y(n1) );
  XOR3XLM U18 ( .A(Data_draft[1]), .B(Data_draft[0]), .C(n5), .Y(n4) );
  XOR3XLM U19 ( .A(Data_draft[5]), .B(Data_draft[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U20 ( .A(Data_draft[7]), .B(Data_draft[6]), .Y(n6) );
endmodule


module UART_MUX ( mux_sel, start_bit, stop_bit, ser_data, par_bit, CLK, RST, 
        TX_OUT );
  input [1:0] mux_sel;
  input start_bit, stop_bit, ser_data, par_bit, CLK, RST;
  output TX_OUT;
  wire   n6, out, n2, n3, n1, n5;

  DFFSQX2M TX_OUT_reg ( .D(out), .CK(CLK), .SN(RST), .Q(n6) );
  INVXLM U3 ( .A(n6), .Y(n1) );
  INVX8M U4 ( .A(n1), .Y(TX_OUT) );
  INVX2M U5 ( .A(mux_sel[0]), .Y(n5) );
  OAI2B2X1M U6 ( .A1N(mux_sel[1]), .A0(n2), .B0(mux_sel[1]), .B1(n3), .Y(out)
         );
  AOI22X1M U7 ( .A0(par_bit), .A1(n5), .B0(stop_bit), .B1(mux_sel[0]), .Y(n2)
         );
  AOI22X1M U8 ( .A0(start_bit), .A1(n5), .B0(ser_data), .B1(mux_sel[0]), .Y(n3) );
endmodule


module UART_TOP ( P_DATA_M, Data_Valid_M, PAR_EN_M, PAR_TYPE_M, CLK_M, RST_M, 
        TX_OUT_M, Busy_M );
  input [7:0] P_DATA_M;
  input Data_Valid_M, PAR_EN_M, PAR_TYPE_M, CLK_M, RST_M;
  output TX_OUT_M, Busy_M;
  wire   ser_en_M, ser_data_M, ser_done_M, par_bit_M, n1, n2, n3;
  wire   [1:0] mux_sel_M;

  UART_Serial Serial_DUT ( .P_DATA(P_DATA_M), .Data_Valid(Data_Valid_M), 
        .ser_en(ser_en_M), .CLK(CLK_M), .RST(RST_M), .Busy(Busy_M), .ser_done(
        ser_done_M), .ser_data(ser_data_M) );
  UART_T_FSM FSM_DUT ( .Data_Valid(Data_Valid_M), .PAR_EN(PAR_EN_M), 
        .ser_done(ser_done_M), .CLK(CLK_M), .RST(n1), .mux_sel(mux_sel_M), 
        .Busy(Busy_M), .ser_en(ser_en_M) );
  UART_Parity_calc Parity_calc_DUT ( .P_DATA(P_DATA_M), .Data_Valid(
        Data_Valid_M), .PAR_TYPE(PAR_TYPE_M), .PAR_EN(PAR_EN_M), .CLK(CLK_M), 
        .RST(n2), .Busy(Busy_M), .par_bit(par_bit_M) );
  UART_MUX MUX_DUT ( .mux_sel(mux_sel_M), .start_bit(1'b0), .stop_bit(1'b0), 
        .ser_data(ser_data_M), .par_bit(par_bit_M), .CLK(CLK_M), .RST(n2), 
        .TX_OUT(TX_OUT_M) );
  INVX2M U1 ( .A(n3), .Y(n1) );
  INVX2M U2 ( .A(n3), .Y(n2) );
  INVX2M U3 ( .A(RST_M), .Y(n3) );
endmodule


module uart_rx_fsm_DATA_WIDTH8 ( CLK, RST, S_DATA, Prescale, parity_enable, 
        bit_count, edge_count, par_err, stp_err, strt_glitch, strt_chk_en, 
        edge_bit_en, deser_en, par_chk_en, stp_chk_en, dat_samp_en, data_valid
 );
  input [5:0] Prescale;
  input [3:0] bit_count;
  input [5:0] edge_count;
  input CLK, RST, S_DATA, parity_enable, par_err, stp_err, strt_glitch;
  output strt_chk_en, edge_bit_en, deser_en, par_chk_en, stp_chk_en,
         dat_samp_en, data_valid;
  wire   n49, \sub_41/carry[5] , \sub_41/carry[4] , \sub_41/carry[3] , n1, n2,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48;
  wire   [5:0] check_edge;
  wire   [5:0] error_check_edge;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign error_check_edge[0] = Prescale[0];

  DFFRQX1M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(n4), .Q(
        current_state[2]) );
  DFFRQX4M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(n4), .Q(
        current_state[0]) );
  DFFRX4M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]), .QN(n38) );
  INVX2M U3 ( .A(n1), .Y(n2) );
  INVX2M U4 ( .A(current_state[2]), .Y(n1) );
  NAND3X2M U5 ( .A(n2), .B(current_state[1]), .C(current_state[0]), .Y(n24) );
  NOR2X2M U6 ( .A(bit_count[2]), .B(bit_count[1]), .Y(n43) );
  AOI31X2M U7 ( .A0(current_state[0]), .A1(n16), .A2(n19), .B0(
        current_state[1]), .Y(n18) );
  NOR3X2M U8 ( .A(bit_count[0]), .B(strt_glitch), .C(bit_count[3]), .Y(n19) );
  NOR2X2M U9 ( .A(n38), .B(current_state[0]), .Y(n17) );
  NOR3BX2M U10 ( .AN(current_state[0]), .B(n38), .C(n2), .Y(n49) );
  OR2X2M U11 ( .A(Prescale[1]), .B(error_check_edge[0]), .Y(n5) );
  NOR2X3M U12 ( .A(n5), .B(Prescale[2]), .Y(n6) );
  NAND2X4M U13 ( .A(n38), .B(n10), .Y(dat_samp_en) );
  NOR2X4M U14 ( .A(n1), .B(n11), .Y(stp_chk_en) );
  NOR2X2M U15 ( .A(current_state[1]), .B(n10), .Y(strt_chk_en) );
  OAI21X4M U16 ( .A0(current_state[0]), .A1(n39), .B0(n1), .Y(n10) );
  BUFX2M U17 ( .A(n49), .Y(deser_en) );
  AOI2BB2X1M U18 ( .B0(deser_en), .B1(n14), .A0N(n24), .A1N(S_DATA), .Y(n23)
         );
  INVX2M U19 ( .A(bit_count[0]), .Y(n25) );
  NAND2X2M U20 ( .A(n10), .B(n11), .Y(edge_bit_en) );
  CLKINVX2M U21 ( .A(n17), .Y(n11) );
  NOR3X2M U22 ( .A(n30), .B(n31), .C(n32), .Y(n29) );
  NAND3BXLM U23 ( .AN(bit_count[2]), .B(bit_count[3]), .C(stp_chk_en), .Y(n30)
         );
  NAND3BXLM U24 ( .AN(stp_chk_en), .B(n12), .C(n13), .Y(next_state[2]) );
  NAND3BXLM U25 ( .AN(n14), .B(deser_en), .C(n15), .Y(n13) );
  AND4X2M U26 ( .A(n41), .B(n42), .C(n43), .D(n44), .Y(n16) );
  OAI2BB1XLM U27 ( .A0N(error_check_edge[0]), .A1N(Prescale[1]), .B0(n5), .Y(
        check_edge[1]) );
  NAND2XLM U28 ( .A(bit_count[1]), .B(n25), .Y(n37) );
  NOR3X2M U29 ( .A(n33), .B(n34), .C(n35), .Y(n28) );
  BUFX2M U30 ( .A(RST), .Y(n4) );
  INVX2M U31 ( .A(Prescale[3]), .Y(n9) );
  INVXLM U32 ( .A(Prescale[1]), .Y(error_check_edge[1]) );
  XNOR2X1M U33 ( .A(Prescale[5]), .B(\sub_41/carry[5] ), .Y(
        error_check_edge[5]) );
  OR2X1M U34 ( .A(Prescale[4]), .B(\sub_41/carry[4] ), .Y(\sub_41/carry[5] )
         );
  XNOR2X1M U35 ( .A(\sub_41/carry[4] ), .B(Prescale[4]), .Y(
        error_check_edge[4]) );
  OR2X1M U36 ( .A(Prescale[3]), .B(\sub_41/carry[3] ), .Y(\sub_41/carry[4] )
         );
  XNOR2X1M U37 ( .A(\sub_41/carry[3] ), .B(Prescale[3]), .Y(
        error_check_edge[3]) );
  OR2X1M U38 ( .A(Prescale[2]), .B(Prescale[1]), .Y(\sub_41/carry[3] ) );
  XNOR2X1M U39 ( .A(Prescale[1]), .B(Prescale[2]), .Y(error_check_edge[2]) );
  CLKINVX1M U40 ( .A(error_check_edge[0]), .Y(check_edge[0]) );
  AO21XLM U41 ( .A0(n5), .A1(Prescale[2]), .B0(n6), .Y(check_edge[2]) );
  CLKNAND2X2M U42 ( .A(n6), .B(n9), .Y(n7) );
  OAI21X1M U43 ( .A0(n6), .A1(n9), .B0(n7), .Y(check_edge[3]) );
  XNOR2X1M U44 ( .A(Prescale[4]), .B(n7), .Y(check_edge[4]) );
  NOR2X1M U45 ( .A(Prescale[4]), .B(n7), .Y(n8) );
  CLKXOR2X2M U46 ( .A(Prescale[5]), .B(n8), .Y(check_edge[5]) );
  NOR2X1M U47 ( .A(n2), .B(n11), .Y(par_chk_en) );
  CLKINVX1M U48 ( .A(parity_enable), .Y(n15) );
  NAND4X1M U49 ( .A(bit_count[3]), .B(bit_count[0]), .C(n16), .D(n17), .Y(n12)
         );
  OAI21X1M U50 ( .A0(n2), .A1(n18), .B0(n11), .Y(next_state[1]) );
  OAI211X1M U51 ( .A0(n20), .A1(n21), .B0(n22), .C0(n23), .Y(next_state[0]) );
  NAND3X1M U52 ( .A(n16), .B(n25), .C(bit_count[3]), .Y(n14) );
  NAND4X1M U53 ( .A(n26), .B(n27), .C(n28), .D(n29), .Y(n22) );
  CLKXOR2X2M U54 ( .A(error_check_edge[5]), .B(edge_count[5]), .Y(n32) );
  CLKXOR2X2M U55 ( .A(error_check_edge[4]), .B(edge_count[4]), .Y(n31) );
  CLKXOR2X2M U56 ( .A(error_check_edge[1]), .B(edge_count[1]), .Y(n35) );
  CLKXOR2X2M U57 ( .A(error_check_edge[0]), .B(edge_count[0]), .Y(n34) );
  CLKXOR2X2M U58 ( .A(error_check_edge[2]), .B(edge_count[2]), .Y(n33) );
  XNOR2X1M U59 ( .A(edge_count[3]), .B(error_check_edge[3]), .Y(n27) );
  MXI2X1M U60 ( .A(n36), .B(n37), .S0(parity_enable), .Y(n26) );
  OR2X1M U61 ( .A(bit_count[1]), .B(n25), .Y(n36) );
  CLKNAND2X2M U62 ( .A(n38), .B(n1), .Y(n21) );
  MXI2X1M U63 ( .A(n39), .B(n40), .S0(current_state[0]), .Y(n20) );
  NAND4BX1M U64 ( .AN(bit_count[3]), .B(strt_glitch), .C(n16), .D(n25), .Y(n40) );
  NOR4X1M U65 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n44) );
  CLKXOR2X2M U66 ( .A(edge_count[3]), .B(check_edge[3]), .Y(n48) );
  CLKXOR2X2M U67 ( .A(edge_count[2]), .B(check_edge[2]), .Y(n47) );
  CLKXOR2X2M U68 ( .A(edge_count[5]), .B(check_edge[5]), .Y(n46) );
  CLKXOR2X2M U69 ( .A(edge_count[1]), .B(check_edge[1]), .Y(n45) );
  XNOR2X1M U70 ( .A(edge_count[4]), .B(check_edge[4]), .Y(n42) );
  XNOR2X1M U71 ( .A(edge_count[0]), .B(check_edge[0]), .Y(n41) );
  NOR3X1M U72 ( .A(n24), .B(stp_err), .C(par_err), .Y(data_valid) );
  CLKINVX1M U73 ( .A(S_DATA), .Y(n39) );
endmodule


module edge_bit_counter ( CLK, RST, Enable, Prescale, bit_count, edge_count );
  input [5:0] Prescale;
  output [3:0] bit_count;
  output [5:0] edge_count;
  input CLK, RST, Enable;
  wire   n49, n50, n51, n52, n53, n54, n55, N8, N9, N10, N11, N19, N20, N21,
         N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, n4, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, \add_31/carry[5] ,
         \add_31/carry[4] , \add_31/carry[3] , \add_31/carry[2] , n1, n3, n6,
         n8, n22, n24, n26, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48;

  DFFRX4M \bit_count_reg[3]  ( .D(n17), .CK(CLK), .RN(n29), .Q(bit_count[3]), 
        .QN(n4) );
  DFFRQX1M \edge_count_reg[5]  ( .D(N24), .CK(CLK), .RN(n29), .Q(n50) );
  DFFRQX1M \edge_count_reg[4]  ( .D(N23), .CK(CLK), .RN(n29), .Q(n51) );
  DFFRQX1M \edge_count_reg[3]  ( .D(N22), .CK(CLK), .RN(n29), .Q(n52) );
  DFFRQX1M \edge_count_reg[2]  ( .D(N21), .CK(CLK), .RN(n29), .Q(n53) );
  DFFRQX1M \bit_count_reg[2]  ( .D(n18), .CK(CLK), .RN(n29), .Q(n49) );
  DFFRQX1M \edge_count_reg[0]  ( .D(N19), .CK(CLK), .RN(n29), .Q(n55) );
  DFFRQX1M \edge_count_reg[1]  ( .D(N20), .CK(CLK), .RN(n29), .Q(n54) );
  DFFRQX4M \bit_count_reg[0]  ( .D(n20), .CK(CLK), .RN(n29), .Q(bit_count[0])
         );
  DFFRQX4M \bit_count_reg[1]  ( .D(n19), .CK(CLK), .RN(n29), .Q(bit_count[1])
         );
  INVX4M U3 ( .A(n22), .Y(edge_count[5]) );
  INVX2M U4 ( .A(Prescale[0]), .Y(N25) );
  CLKINVX2M U5 ( .A(n1), .Y(bit_count[2]) );
  CLKINVX2M U6 ( .A(n49), .Y(n1) );
  INVXLM U7 ( .A(n51), .Y(n3) );
  INVX4M U8 ( .A(n3), .Y(edge_count[4]) );
  NAND2X1M U9 ( .A(bit_count[1]), .B(bit_count[0]), .Y(n10) );
  INVXLM U10 ( .A(n52), .Y(n6) );
  INVX4M U11 ( .A(n6), .Y(edge_count[3]) );
  INVXLM U12 ( .A(n53), .Y(n8) );
  INVX4M U13 ( .A(n8), .Y(edge_count[2]) );
  INVXLM U14 ( .A(n50), .Y(n22) );
  INVXLM U15 ( .A(n54), .Y(n24) );
  INVX6M U16 ( .A(n24), .Y(edge_count[1]) );
  INVXLM U17 ( .A(n55), .Y(n26) );
  INVX6M U18 ( .A(n26), .Y(edge_count[0]) );
  NOR2X4M U19 ( .A(n31), .B(Prescale[2]), .Y(n32) );
  NAND2BX2M U20 ( .AN(Prescale[1]), .B(N25), .Y(n31) );
  NOR4X4M U21 ( .A(n44), .B(n43), .C(n42), .D(n41), .Y(N31) );
  NOR2BX2M U22 ( .AN(N25), .B(edge_count[0]), .Y(n37) );
  NOR2BX2M U23 ( .AN(edge_count[0]), .B(N25), .Y(n36) );
  NAND3X1M U24 ( .A(bit_count[0]), .B(n45), .C(Enable), .Y(n14) );
  INVX6M U25 ( .A(n30), .Y(n29) );
  INVX2M U26 ( .A(RST), .Y(n30) );
  INVX4M U27 ( .A(n13), .Y(n45) );
  CLKINVX2M U28 ( .A(Enable), .Y(n48) );
  NOR2X4M U29 ( .A(n48), .B(N31), .Y(n13) );
  AOI21X2M U30 ( .A0(n46), .A1(Enable), .B0(n13), .Y(n16) );
  NOR2BX2M U31 ( .AN(N8), .B(n45), .Y(N20) );
  NOR2BX2M U32 ( .AN(N9), .B(n45), .Y(N21) );
  NOR2BX2M U33 ( .AN(N10), .B(n45), .Y(N22) );
  NOR2BX2M U34 ( .AN(N11), .B(n45), .Y(N23) );
  OAI32X2M U35 ( .A0(n48), .A1(bit_count[0]), .A2(n13), .B0(n46), .B1(n45), 
        .Y(n20) );
  OAI32X2M U36 ( .A0(n14), .A1(n49), .A2(n47), .B0(n15), .B1(n1), .Y(n18) );
  AOI21BX2M U37 ( .A0(Enable), .A1(n47), .B0N(n16), .Y(n15) );
  OAI22X1M U38 ( .A0(n16), .A1(n47), .B0(bit_count[1]), .B1(n14), .Y(n19) );
  NOR2X2M U39 ( .A(n28), .B(n45), .Y(N24) );
  XNOR2X2M U40 ( .A(\add_31/carry[5] ), .B(edge_count[5]), .Y(n28) );
  NOR2X2M U41 ( .A(edge_count[0]), .B(n45), .Y(N19) );
  OAI32X2M U42 ( .A0(n9), .A1(n10), .A2(n48), .B0(n11), .B1(n4), .Y(n17) );
  NAND3XLM U43 ( .A(N31), .B(n4), .C(bit_count[2]), .Y(n9) );
  NOR2X2M U44 ( .A(n12), .B(n13), .Y(n11) );
  AOI2BB1X2M U45 ( .A0N(n10), .A1N(n1), .B0(n48), .Y(n12) );
  ADDHX1M U46 ( .A(edge_count[1]), .B(edge_count[0]), .CO(\add_31/carry[2] ), 
        .S(N8) );
  ADDHX1M U47 ( .A(edge_count[2]), .B(\add_31/carry[2] ), .CO(
        \add_31/carry[3] ), .S(N9) );
  ADDHX1M U48 ( .A(edge_count[3]), .B(\add_31/carry[3] ), .CO(
        \add_31/carry[4] ), .S(N10) );
  ADDHX1M U49 ( .A(edge_count[4]), .B(\add_31/carry[4] ), .CO(
        \add_31/carry[5] ), .S(N11) );
  INVX2M U50 ( .A(bit_count[1]), .Y(n47) );
  INVX2M U51 ( .A(bit_count[0]), .Y(n46) );
  INVX2M U52 ( .A(Prescale[3]), .Y(n35) );
  OAI2BB1X1M U53 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n31), .Y(N26) );
  AO21XLM U54 ( .A0(n31), .A1(Prescale[2]), .B0(n32), .Y(N27) );
  CLKNAND2X2M U55 ( .A(n32), .B(n35), .Y(n33) );
  OAI21X1M U56 ( .A0(n32), .A1(n35), .B0(n33), .Y(N28) );
  XNOR2X1M U57 ( .A(Prescale[4]), .B(n33), .Y(N29) );
  NOR2X1M U58 ( .A(Prescale[4]), .B(n33), .Y(n34) );
  CLKXOR2X2M U59 ( .A(Prescale[5]), .B(n34), .Y(N30) );
  OAI2B2X1M U60 ( .A1N(N26), .A0(n36), .B0(edge_count[1]), .B1(n36), .Y(n40)
         );
  OAI2B2X1M U61 ( .A1N(edge_count[1]), .A0(n37), .B0(N26), .B1(n37), .Y(n39)
         );
  XNOR2X1M U62 ( .A(N30), .B(edge_count[5]), .Y(n38) );
  NAND3X1M U63 ( .A(n40), .B(n39), .C(n38), .Y(n44) );
  CLKXOR2X2M U64 ( .A(N29), .B(edge_count[4]), .Y(n43) );
  CLKXOR2X2M U65 ( .A(N27), .B(edge_count[2]), .Y(n42) );
  CLKXOR2X2M U66 ( .A(N28), .B(edge_count[3]), .Y(n41) );
endmodule


module data_sampling ( CLK, RST, S_DATA, Prescale, edge_count, Enable, 
        sampled_bit );
  input [5:0] Prescale;
  input [5:0] edge_count;
  input CLK, RST, S_DATA, Enable;
  output sampled_bit;
  wire   N58, n19, n20, n21, \add_21/carry[4] , \add_21/carry[3] ,
         \add_21/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [4:0] half_edges;
  wire   [4:0] half_edges_p1;
  wire   [4:0] half_edges_n1;
  wire   [2:0] Samples;

  DFFRQX1M \Samples_reg[2]  ( .D(n21), .CK(CLK), .RN(n1), .Q(Samples[2]) );
  DFFRX4M sampled_bit_reg ( .D(N58), .CK(CLK), .RN(n1), .Q(sampled_bit) );
  DFFRX4M \Samples_reg[0]  ( .D(n19), .CK(CLK), .RN(n1), .Q(Samples[0]) );
  DFFRX4M \Samples_reg[1]  ( .D(n20), .CK(CLK), .RN(n1), .Q(Samples[1]) );
  INVX2M U3 ( .A(Prescale[1]), .Y(half_edges[0]) );
  OAI21X2M U4 ( .A0(Samples[0]), .A1(Samples[1]), .B0(Samples[2]), .Y(n41) );
  NAND2XLM U5 ( .A(Samples[0]), .B(Samples[1]), .Y(n40) );
  AND4X2M U6 ( .A(n34), .B(n35), .C(n36), .D(n37), .Y(n17) );
  NOR4X2M U7 ( .A(n13), .B(n14), .C(n15), .D(n16), .Y(n12) );
  OAI21X4M U8 ( .A0(n2), .A1(n5), .B0(n3), .Y(half_edges[2]) );
  NOR2X4M U9 ( .A(half_edges[1]), .B(half_edges[0]), .Y(n6) );
  XNOR2X8M U10 ( .A(Prescale[4]), .B(n3), .Y(half_edges[3]) );
  NAND2X2M U11 ( .A(n2), .B(n5), .Y(n3) );
  AO21X2M U12 ( .A0(Prescale[1]), .A1(Prescale[2]), .B0(n2), .Y(half_edges[1])
         );
  NOR2X3M U13 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n2) );
  NAND2XLM U14 ( .A(Samples[0]), .B(Enable), .Y(n33) );
  NAND2XLM U15 ( .A(Samples[1]), .B(Enable), .Y(n26) );
  XOR2X1M U16 ( .A(half_edges[1]), .B(edge_count[1]), .Y(n32) );
  XOR2X1M U17 ( .A(half_edges[0]), .B(edge_count[0]), .Y(n31) );
  NAND2XLM U18 ( .A(Samples[2]), .B(Enable), .Y(n10) );
  NOR3X2M U19 ( .A(n38), .B(edge_count[5]), .C(n39), .Y(n37) );
  BUFX2M U20 ( .A(RST), .Y(n1) );
  CLKINVX1M U21 ( .A(half_edges[2]), .Y(n9) );
  ADDHX1M U22 ( .A(half_edges[2]), .B(\add_21/carry[2] ), .CO(
        \add_21/carry[3] ), .S(half_edges_p1[2]) );
  ADDHX1M U23 ( .A(half_edges[3]), .B(\add_21/carry[3] ), .CO(
        \add_21/carry[4] ), .S(half_edges_p1[3]) );
  ADDHX1M U24 ( .A(half_edges[1]), .B(half_edges[0]), .CO(\add_21/carry[2] ), 
        .S(half_edges_p1[1]) );
  INVX2M U25 ( .A(Prescale[3]), .Y(n5) );
  NOR2X1M U26 ( .A(Prescale[4]), .B(n3), .Y(n4) );
  CLKXOR2X2M U27 ( .A(Prescale[5]), .B(n4), .Y(half_edges[4]) );
  CLKXOR2X2M U28 ( .A(\add_21/carry[4] ), .B(half_edges[4]), .Y(
        half_edges_p1[4]) );
  AO21XLM U29 ( .A0(half_edges[0]), .A1(half_edges[1]), .B0(n6), .Y(
        half_edges_n1[1]) );
  CLKNAND2X2M U30 ( .A(n6), .B(n9), .Y(n7) );
  OAI21X1M U31 ( .A0(n6), .A1(n9), .B0(n7), .Y(half_edges_n1[2]) );
  XNOR2X1M U32 ( .A(half_edges[3]), .B(n7), .Y(half_edges_n1[3]) );
  NOR2X1M U33 ( .A(half_edges[3]), .B(n7), .Y(n8) );
  CLKXOR2X2M U34 ( .A(half_edges[4]), .B(n8), .Y(half_edges_n1[4]) );
  MXI2X1M U35 ( .A(n10), .B(n11), .S0(n12), .Y(n21) );
  CLKXOR2X2M U36 ( .A(Prescale[1]), .B(edge_count[0]), .Y(n16) );
  OR2X1M U37 ( .A(edge_count[5]), .B(n17), .Y(n14) );
  NAND4X1M U38 ( .A(n18), .B(n22), .C(n23), .D(n24), .Y(n13) );
  XNOR2X1M U39 ( .A(edge_count[1]), .B(half_edges_p1[1]), .Y(n24) );
  XNOR2X1M U40 ( .A(edge_count[2]), .B(half_edges_p1[2]), .Y(n23) );
  XNOR2X1M U41 ( .A(edge_count[3]), .B(half_edges_p1[3]), .Y(n22) );
  CLKXOR2X2M U42 ( .A(n25), .B(half_edges_p1[4]), .Y(n18) );
  MXI2X1M U43 ( .A(n26), .B(n11), .S0(n15), .Y(n20) );
  AND4X1M U44 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n15) );
  NOR4X1M U45 ( .A(edge_count[5]), .B(n17), .C(n31), .D(n32), .Y(n30) );
  XNOR2X1M U46 ( .A(edge_count[3]), .B(half_edges[3]), .Y(n29) );
  CLKXOR2X2M U47 ( .A(n25), .B(half_edges[4]), .Y(n28) );
  CLKINVX1M U48 ( .A(edge_count[4]), .Y(n25) );
  XNOR2X1M U49 ( .A(edge_count[2]), .B(half_edges[2]), .Y(n27) );
  MXI2X1M U50 ( .A(n33), .B(n11), .S0(n17), .Y(n19) );
  CLKXOR2X2M U51 ( .A(Prescale[1]), .B(edge_count[0]), .Y(n39) );
  CLKXOR2X2M U52 ( .A(half_edges_n1[4]), .B(edge_count[4]), .Y(n38) );
  XNOR2X1M U53 ( .A(edge_count[2]), .B(half_edges_n1[2]), .Y(n36) );
  XNOR2X1M U54 ( .A(edge_count[3]), .B(half_edges_n1[3]), .Y(n35) );
  XNOR2X1M U55 ( .A(edge_count[1]), .B(half_edges_n1[1]), .Y(n34) );
  CLKNAND2X2M U56 ( .A(S_DATA), .B(Enable), .Y(n11) );
  AOI21BX1M U57 ( .A0(n40), .A1(n41), .B0N(Enable), .Y(N58) );
endmodule


module deserializer_DATA_WIDTH8 ( CLK, RST, sampled_bit, Enable, edge_count, 
        Prescale, P_DATA );
  input [5:0] edge_count;
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, sampled_bit, Enable;
  wire   N1, N2, N3, N4, N5, N6, N7, n1, n10, n11, n12, n13, n14, n15, n16,
         n17, n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34;

  DFFRX1M \P_DATA_reg[6]  ( .D(n16), .CK(CLK), .RN(n3), .Q(P_DATA[6]), .QN(n28) );
  DFFRX1M \P_DATA_reg[5]  ( .D(n15), .CK(CLK), .RN(n3), .Q(P_DATA[5]), .QN(n29) );
  DFFRX1M \P_DATA_reg[4]  ( .D(n14), .CK(CLK), .RN(n3), .Q(P_DATA[4]), .QN(n30) );
  DFFRX1M \P_DATA_reg[3]  ( .D(n13), .CK(CLK), .RN(n3), .Q(P_DATA[3]), .QN(n31) );
  DFFRX1M \P_DATA_reg[2]  ( .D(n12), .CK(CLK), .RN(n3), .Q(P_DATA[2]), .QN(n32) );
  DFFRX1M \P_DATA_reg[1]  ( .D(n11), .CK(CLK), .RN(n3), .Q(P_DATA[1]), .QN(n33) );
  DFFRX1M \P_DATA_reg[7]  ( .D(n17), .CK(CLK), .RN(n3), .Q(P_DATA[7]), .QN(n27) );
  DFFRX4M \P_DATA_reg[0]  ( .D(n10), .CK(CLK), .RN(n3), .Q(P_DATA[0]) );
  INVX2M U3 ( .A(Prescale[0]), .Y(N1) );
  NOR2X4M U4 ( .A(n5), .B(Prescale[2]), .Y(n6) );
  NAND2BX2M U5 ( .AN(Prescale[1]), .B(N1), .Y(n5) );
  NOR2BX2M U6 ( .AN(edge_count[0]), .B(N1), .Y(n18) );
  NOR2BX2M U7 ( .AN(N1), .B(edge_count[0]), .Y(n19) );
  INVX4M U8 ( .A(n4), .Y(n3) );
  INVX2M U9 ( .A(RST), .Y(n4) );
  INVX4M U10 ( .A(n2), .Y(n34) );
  OAI22X1M U11 ( .A0(n34), .A1(n33), .B0(n2), .B1(n32), .Y(n11) );
  OAI22X1M U12 ( .A0(n34), .A1(n32), .B0(n2), .B1(n31), .Y(n12) );
  OAI22X1M U13 ( .A0(n34), .A1(n31), .B0(n2), .B1(n30), .Y(n13) );
  OAI22X1M U14 ( .A0(n34), .A1(n30), .B0(n2), .B1(n29), .Y(n14) );
  OAI22X1M U15 ( .A0(n34), .A1(n29), .B0(n2), .B1(n28), .Y(n15) );
  OAI22X1M U16 ( .A0(n34), .A1(n28), .B0(n2), .B1(n27), .Y(n16) );
  OAI2BB2X1M U17 ( .B0(n34), .B1(n27), .A0N(sampled_bit), .A1N(n34), .Y(n17)
         );
  OAI2BB2X1M U18 ( .B0(n2), .B1(n33), .A0N(P_DATA[0]), .A1N(n2), .Y(n10) );
  CLKBUFX6M U19 ( .A(n1), .Y(n2) );
  NAND2XLM U20 ( .A(N7), .B(Enable), .Y(n1) );
  INVX2M U21 ( .A(Prescale[3]), .Y(n9) );
  OAI2BB1X1M U22 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n5), .Y(N2) );
  AO21XLM U23 ( .A0(n5), .A1(Prescale[2]), .B0(n6), .Y(N3) );
  CLKNAND2X2M U24 ( .A(n6), .B(n9), .Y(n7) );
  OAI21X1M U25 ( .A0(n6), .A1(n9), .B0(n7), .Y(N4) );
  XNOR2X1M U26 ( .A(Prescale[4]), .B(n7), .Y(N5) );
  NOR2X1M U27 ( .A(Prescale[4]), .B(n7), .Y(n8) );
  CLKXOR2X2M U28 ( .A(Prescale[5]), .B(n8), .Y(N6) );
  OAI2B2X1M U29 ( .A1N(N2), .A0(n18), .B0(edge_count[1]), .B1(n18), .Y(n22) );
  OAI2B2X1M U30 ( .A1N(edge_count[1]), .A0(n19), .B0(N2), .B1(n19), .Y(n21) );
  XNOR2X1M U31 ( .A(N6), .B(edge_count[5]), .Y(n20) );
  NAND3X1M U32 ( .A(n22), .B(n21), .C(n20), .Y(n26) );
  CLKXOR2X2M U33 ( .A(N5), .B(edge_count[4]), .Y(n25) );
  CLKXOR2X2M U34 ( .A(N3), .B(edge_count[2]), .Y(n24) );
  CLKXOR2X2M U35 ( .A(N4), .B(edge_count[3]), .Y(n23) );
  NOR4X1M U36 ( .A(n26), .B(n25), .C(n24), .D(n23), .Y(N7) );
endmodule


module strt_chk ( CLK, RST, sampled_bit, Enable, strt_glitch );
  input CLK, RST, sampled_bit, Enable;
  output strt_glitch;
  wire   n1;

  DFFRX4M strt_glitch_reg ( .D(n1), .CK(CLK), .RN(RST), .Q(strt_glitch) );
  AO2B2XLM U2 ( .B0(sampled_bit), .B1(Enable), .A0(strt_glitch), .A1N(Enable), 
        .Y(n1) );
endmodule


module par_chk_DATA_WIDTH8 ( CLK, RST, parity_type, sampled_bit, Enable, 
        P_DATA, par_err );
  input [7:0] P_DATA;
  input CLK, RST, parity_type, sampled_bit, Enable;
  output par_err;
  wire   n10, n1, n3, n4, n5, n6, n7, n8, n9;

  DFFRQX1M par_err_reg ( .D(n8), .CK(CLK), .RN(RST), .Q(n10) );
  CLKBUFX16M U2 ( .A(n10), .Y(par_err) );
  OAI2BB2X1M U3 ( .B0(n1), .B1(n9), .A0N(par_err), .A1N(n9), .Y(n8) );
  XOR3XLM U4 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  INVX2M U5 ( .A(Enable), .Y(n9) );
  XNOR2X2M U6 ( .A(sampled_bit), .B(parity_type), .Y(n5) );
  XOR3XLM U7 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n4) );
  XNOR2X2M U8 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XOR3XLM U9 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
  XNOR2X2M U10 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
endmodule


module stp_chk ( CLK, RST, sampled_bit, Enable, stp_err );
  input CLK, RST, sampled_bit, Enable;
  output stp_err;
  wire   n4, n2, n3;

  DFFRQX1M stp_err_reg ( .D(n2), .CK(CLK), .RN(RST), .Q(n4) );
  CLKBUFX16M U2 ( .A(n4), .Y(stp_err) );
  OAI2BB2X1M U3 ( .B0(sampled_bit), .B1(n3), .A0N(stp_err), .A1N(n3), .Y(n2)
         );
  CLKINVX1M U4 ( .A(Enable), .Y(n3) );
endmodule


module UART_RX ( CLK, RST, RX_IN, parity_enable, parity_type, Prescale, P_DATA, 
        data_valid, parity_error, framing_error );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, parity_enable, parity_type;
  output data_valid, parity_error, framing_error;
  wire   strt_glitch, strt_chk_en, edge_bit_en, deser_en, par_chk_en,
         stp_chk_en, dat_samp_en, sampled_bit, n1, n2;
  wire   [3:0] bit_count;
  wire   [5:0] edge_count;

  uart_rx_fsm_DATA_WIDTH8 U0_uart_fsm ( .CLK(CLK), .RST(n1), .S_DATA(RX_IN), 
        .Prescale(Prescale), .parity_enable(parity_enable), .bit_count(
        bit_count), .edge_count(edge_count), .par_err(parity_error), .stp_err(
        framing_error), .strt_glitch(strt_glitch), .strt_chk_en(strt_chk_en), 
        .edge_bit_en(edge_bit_en), .deser_en(deser_en), .par_chk_en(par_chk_en), .stp_chk_en(stp_chk_en), .dat_samp_en(dat_samp_en), .data_valid(data_valid)
         );
  edge_bit_counter U0_edge_bit_counter ( .CLK(CLK), .RST(n1), .Enable(
        edge_bit_en), .Prescale(Prescale), .bit_count(bit_count), .edge_count(
        edge_count) );
  data_sampling U0_data_sampling ( .CLK(CLK), .RST(n1), .S_DATA(RX_IN), 
        .Prescale(Prescale), .edge_count(edge_count), .Enable(dat_samp_en), 
        .sampled_bit(sampled_bit) );
  deserializer_DATA_WIDTH8 U0_deserializer ( .CLK(CLK), .RST(n1), 
        .sampled_bit(sampled_bit), .Enable(deser_en), .edge_count(edge_count), 
        .Prescale(Prescale), .P_DATA(P_DATA) );
  strt_chk U0_strt_chk ( .CLK(CLK), .RST(n1), .sampled_bit(sampled_bit), 
        .Enable(strt_chk_en), .strt_glitch(strt_glitch) );
  par_chk_DATA_WIDTH8 U0_par_chk ( .CLK(CLK), .RST(n1), .parity_type(
        parity_type), .sampled_bit(sampled_bit), .Enable(par_chk_en), .P_DATA(
        P_DATA), .par_err(parity_error) );
  stp_chk U0_stp_chk ( .CLK(CLK), .RST(n1), .sampled_bit(sampled_bit), 
        .Enable(stp_chk_en), .stp_err(framing_error) );
  INVX4M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module UART_DATA_WIDTH8 ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, 
        TX_IN_P, TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, 
        parity_type, parity_error, framing_error );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error;
  wire   n1, n2;

  UART_TOP U0_UART_TX ( .P_DATA_M(TX_IN_P), .Data_Valid_M(TX_IN_V), .PAR_EN_M(
        parity_enable), .PAR_TYPE_M(parity_type), .CLK_M(TX_CLK), .RST_M(n1), 
        .TX_OUT_M(TX_OUT_S), .Busy_M(TX_OUT_V) );
  UART_RX U1_UART_RX ( .CLK(RX_CLK), .RST(n1), .RX_IN(RX_IN_S), 
        .parity_enable(parity_enable), .parity_type(parity_type), .Prescale(
        Prescale), .P_DATA(RX_OUT_P), .data_valid(RX_OUT_V), .parity_error(
        parity_error), .framing_error(framing_error) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module SYSTEM_CTRL_BYTE8 ( ALU_OUT, ALU_OUT_VLD, RX_P_DATA, RX_D_VLD, 
        FIFO_FULL, RdData, RdData_Valid, CLK, RST, ALU_EN, ALU_FUN, CLK_EN, 
        Address, WrEn, RdEn, WrData, TX_P_Data, TX_D_VLD, clk_div_en );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_DATA;
  input [7:0] RdData;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_Data;
  input ALU_OUT_VLD, RX_D_VLD, FIFO_FULL, RdData_Valid, CLK, RST;
  output ALU_EN, CLK_EN, WrEn, RdEn, TX_D_VLD, clk_div_en;
  wire   n94, n95, n96, n97, frame_flag, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n5, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n86, n87, n88, n89, n90, n91, n92, n93;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [3:0] Address_seq;

  OAI31X4M U16 ( .A0(n46), .A1(n87), .A2(n47), .B0(n34), .Y(n41) );
  NOR3X12M U53 ( .A(n63), .B(frame_flag), .C(n50), .Y(n53) );
  DFFRQX2M \Address_seq_reg[3]  ( .D(n81), .CK(CLK), .RN(n8), .Q(
        Address_seq[3]) );
  DFFRQX2M \Address_seq_reg[1]  ( .D(n83), .CK(CLK), .RN(n8), .Q(
        Address_seq[1]) );
  DFFRQX2M \Address_seq_reg[0]  ( .D(n84), .CK(CLK), .RN(n8), .Q(
        Address_seq[0]) );
  DFFRQX2M \Address_seq_reg[2]  ( .D(n82), .CK(CLK), .RN(n8), .Q(
        Address_seq[2]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(n8), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(n8), .Q(
        current_state[3]) );
  DFFRQX4M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(n8), .Q(
        current_state[1]) );
  DFFRQX4M frame_flag_reg ( .D(n85), .CK(CLK), .RN(n8), .Q(frame_flag) );
  DFFRQX4M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(n8), .Q(
        current_state[0]) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  NOR2X8M U5 ( .A(n89), .B(n14), .Y(ALU_FUN[3]) );
  NOR2X6M U6 ( .A(n91), .B(n14), .Y(ALU_FUN[1]) );
  NOR2X6M U7 ( .A(n92), .B(n14), .Y(ALU_FUN[0]) );
  NAND2X2M U8 ( .A(n19), .B(RX_D_VLD), .Y(n72) );
  AOI21X2M U9 ( .A0(n10), .A1(n21), .B0(n55), .Y(n51) );
  NAND3X2M U10 ( .A(n90), .B(n86), .C(RX_P_DATA[0]), .Y(n46) );
  NAND2X2M U11 ( .A(RX_P_DATA[1]), .B(RX_P_DATA[4]), .Y(n47) );
  NAND3X3M U12 ( .A(current_state[0]), .B(n35), .C(current_state[1]), .Y(n29)
         );
  BUFX6M U13 ( .A(n94), .Y(Address[3]) );
  OAI2B2X1M U14 ( .A1N(Address_seq[3]), .A0(n71), .B0(n89), .B1(n72), .Y(n94)
         );
  BUFX6M U15 ( .A(n95), .Y(Address[2]) );
  OAI2B2X1M U17 ( .A1N(Address_seq[2]), .A0(n71), .B0(n90), .B1(n72), .Y(n95)
         );
  NOR2X6M U18 ( .A(n90), .B(n14), .Y(ALU_FUN[2]) );
  NOR2X2M U19 ( .A(n93), .B(n52), .Y(WrEn) );
  NOR2X2M U20 ( .A(n22), .B(n5), .Y(n40) );
  NOR2X4M U21 ( .A(current_state[0]), .B(current_state[1]), .Y(n30) );
  INVX4M U22 ( .A(RX_D_VLD), .Y(n93) );
  INVX2M U23 ( .A(RX_P_DATA[0]), .Y(n92) );
  INVX2M U24 ( .A(RX_P_DATA[6]), .Y(n86) );
  INVX2M U25 ( .A(RX_P_DATA[5]), .Y(n87) );
  INVX2M U26 ( .A(n51), .Y(TX_D_VLD) );
  INVX4M U27 ( .A(ALU_EN), .Y(n14) );
  NOR2X4M U28 ( .A(n39), .B(n16), .Y(n52) );
  INVX4M U29 ( .A(WrEn), .Y(n15) );
  NOR2X6M U30 ( .A(n93), .B(n68), .Y(ALU_EN) );
  NAND2X2M U31 ( .A(n35), .B(n30), .Y(n68) );
  AOI21X4M U32 ( .A0(n93), .A1(n16), .B0(n73), .Y(n71) );
  NAND4BX2M U33 ( .AN(CLK_EN), .B(n67), .C(n70), .D(n76), .Y(n73) );
  AOI21X2M U34 ( .A0(n77), .A1(n93), .B0(n78), .Y(n76) );
  NAND2X2M U35 ( .A(n29), .B(n5), .Y(n77) );
  NAND2X2M U36 ( .A(n68), .B(n50), .Y(CLK_EN) );
  NAND2BX2M U37 ( .AN(n78), .B(n29), .Y(n39) );
  INVX2M U38 ( .A(n74), .Y(n16) );
  INVX2M U39 ( .A(n5), .Y(n19) );
  NAND3X2M U40 ( .A(n52), .B(n70), .C(n79), .Y(n67) );
  NOR3X2M U41 ( .A(n45), .B(CLK_EN), .C(n19), .Y(n79) );
  AND2X2M U42 ( .A(n80), .B(n30), .Y(n45) );
  NOR2X8M U43 ( .A(n69), .B(n70), .Y(n55) );
  INVX2M U44 ( .A(FIFO_FULL), .Y(n11) );
  NOR2X8M U45 ( .A(n25), .B(n50), .Y(n56) );
  NOR2X2M U46 ( .A(n92), .B(n15), .Y(WrData[0]) );
  NOR2X2M U47 ( .A(n91), .B(n15), .Y(WrData[1]) );
  NOR2X2M U48 ( .A(n90), .B(n15), .Y(WrData[2]) );
  NOR2X2M U49 ( .A(n89), .B(n15), .Y(WrData[3]) );
  NOR2X2M U50 ( .A(n88), .B(n15), .Y(WrData[4]) );
  NOR2X2M U51 ( .A(n87), .B(n15), .Y(WrData[5]) );
  NOR2X2M U52 ( .A(n86), .B(n15), .Y(WrData[6]) );
  INVX2M U54 ( .A(n50), .Y(n21) );
  INVX2M U55 ( .A(n63), .Y(n10) );
  AND2X2M U56 ( .A(n69), .B(n18), .Y(n28) );
  NOR2BX4M U57 ( .AN(n40), .B(n93), .Y(RdEn) );
  OAI221X1M U58 ( .A0(n24), .A1(n36), .B0(n93), .B1(n5), .C0(n38), .Y(
        next_state[1]) );
  INVX2M U59 ( .A(n41), .Y(n24) );
  AOI211X2M U60 ( .A0(n39), .A1(n93), .B0(n28), .C0(n40), .Y(n38) );
  OAI2BB1X2M U61 ( .A0N(n25), .A1N(n21), .B0(n14), .Y(next_state[3]) );
  INVX2M U62 ( .A(n70), .Y(n18) );
  NAND3X2M U63 ( .A(n88), .B(n86), .C(n90), .Y(n49) );
  INVX2M U64 ( .A(n36), .Y(n20) );
  INVX2M U65 ( .A(n29), .Y(n17) );
  INVX6M U66 ( .A(n9), .Y(n8) );
  INVX2M U67 ( .A(RST), .Y(n9) );
  NOR2BX8M U68 ( .AN(current_state[2]), .B(current_state[3]), .Y(n35) );
  NAND3X4M U69 ( .A(current_state[2]), .B(n30), .C(current_state[3]), .Y(n50)
         );
  NOR2X4M U70 ( .A(current_state[2]), .B(current_state[3]), .Y(n80) );
  NAND3X4M U71 ( .A(n35), .B(n23), .C(current_state[1]), .Y(n70) );
  INVX4M U72 ( .A(RX_P_DATA[1]), .Y(n91) );
  INVX4M U73 ( .A(RX_P_DATA[2]), .Y(n90) );
  NAND3X2M U74 ( .A(n35), .B(n22), .C(current_state[0]), .Y(n74) );
  INVX2M U75 ( .A(current_state[0]), .Y(n23) );
  AND3X2M U76 ( .A(n80), .B(n23), .C(current_state[1]), .Y(n78) );
  INVX2M U77 ( .A(current_state[1]), .Y(n22) );
  INVX2M U78 ( .A(RX_P_DATA[3]), .Y(n89) );
  CLKBUFX6M U79 ( .A(n37), .Y(n5) );
  NAND2X2M U80 ( .A(current_state[0]), .B(n80), .Y(n37) );
  BUFX2M U81 ( .A(n97), .Y(Address[0]) );
  OAI221X1M U82 ( .A0(n92), .A1(n72), .B0(n93), .B1(n74), .C0(n75), .Y(n97) );
  OAI21X2M U83 ( .A0(n16), .A1(n73), .B0(Address_seq[0]), .Y(n75) );
  BUFX2M U84 ( .A(n96), .Y(Address[1]) );
  OAI2B2X1M U85 ( .A1N(Address_seq[1]), .A0(n71), .B0(n91), .B1(n72), .Y(n96)
         );
  NAND2X2M U86 ( .A(RdData_Valid), .B(n11), .Y(n69) );
  AO21XLM U87 ( .A0(n5), .A1(Address_seq[3]), .B0(Address[3]), .Y(n81) );
  AO21XLM U88 ( .A0(n5), .A1(Address_seq[2]), .B0(Address[2]), .Y(n82) );
  AOI221X2M U89 ( .A0(ALU_OUT[0]), .A1(n12), .B0(ALU_OUT[8]), .B1(frame_flag), 
        .C0(n63), .Y(n66) );
  NAND3BX2M U90 ( .AN(n64), .B(n65), .C(n52), .Y(TX_P_Data[0]) );
  NAND4BX1M U91 ( .AN(n28), .B(n67), .C(n5), .D(n68), .Y(n64) );
  AOI2BB2X2M U92 ( .B0(RdData[0]), .B1(n18), .A0N(n66), .A1N(n50), .Y(n65) );
  OAI2BB1X2M U93 ( .A0N(ALU_OUT[1]), .A1N(n53), .B0(n62), .Y(TX_P_Data[1]) );
  AOI22X1M U94 ( .A0(RdData[1]), .A1(n55), .B0(ALU_OUT[9]), .B1(n56), .Y(n62)
         );
  OAI2BB1X2M U95 ( .A0N(ALU_OUT[2]), .A1N(n53), .B0(n61), .Y(TX_P_Data[2]) );
  AOI22X1M U96 ( .A0(RdData[2]), .A1(n55), .B0(ALU_OUT[10]), .B1(n56), .Y(n61)
         );
  OAI2BB1X2M U97 ( .A0N(ALU_OUT[3]), .A1N(n53), .B0(n60), .Y(TX_P_Data[3]) );
  AOI22X1M U98 ( .A0(RdData[3]), .A1(n55), .B0(ALU_OUT[11]), .B1(n56), .Y(n60)
         );
  OAI2BB1X2M U99 ( .A0N(ALU_OUT[4]), .A1N(n53), .B0(n59), .Y(TX_P_Data[4]) );
  AOI22X1M U100 ( .A0(RdData[4]), .A1(n55), .B0(ALU_OUT[12]), .B1(n56), .Y(n59) );
  OAI2BB1X2M U101 ( .A0N(ALU_OUT[5]), .A1N(n53), .B0(n58), .Y(TX_P_Data[5]) );
  AOI22X1M U102 ( .A0(RdData[5]), .A1(n55), .B0(ALU_OUT[13]), .B1(n56), .Y(n58) );
  OAI2BB1X2M U103 ( .A0N(ALU_OUT[6]), .A1N(n53), .B0(n57), .Y(TX_P_Data[6]) );
  AOI22X1M U104 ( .A0(RdData[6]), .A1(n55), .B0(ALU_OUT[14]), .B1(n56), .Y(n57) );
  OAI2BB1X2M U105 ( .A0N(ALU_OUT[7]), .A1N(n53), .B0(n54), .Y(TX_P_Data[7]) );
  AOI22X1M U106 ( .A0(RdData[7]), .A1(n55), .B0(ALU_OUT[15]), .B1(n56), .Y(n54) );
  NOR2BX2M U107 ( .AN(RX_P_DATA[7]), .B(n15), .Y(WrData[7]) );
  NAND2X2M U108 ( .A(frame_flag), .B(n10), .Y(n25) );
  NAND2X2M U109 ( .A(ALU_OUT_VLD), .B(n11), .Y(n63) );
  AO22X1M U110 ( .A0(Address[0]), .A1(n19), .B0(n5), .B1(Address_seq[0]), .Y(
        n84) );
  AO21XLM U111 ( .A0(n5), .A1(Address_seq[1]), .B0(Address[1]), .Y(n83) );
  OAI32X2M U112 ( .A0(n50), .A1(frame_flag), .A2(n51), .B0(TX_D_VLD), .B1(n12), 
        .Y(n85) );
  OAI211X2M U113 ( .A0(current_state[1]), .A1(n13), .B0(n26), .C0(n27), .Y(
        next_state[2]) );
  INVX2M U114 ( .A(n35), .Y(n13) );
  NOR3X2M U115 ( .A(n17), .B(RdEn), .C(n28), .Y(n27) );
  AOI32X1M U116 ( .A0(n30), .A1(n25), .A2(current_state[2]), .B0(n20), .B1(n31), .Y(n26) );
  INVX2M U117 ( .A(frame_flag), .Y(n12) );
  OAI31X2M U118 ( .A0(n32), .A1(n86), .A2(n33), .B0(n34), .Y(n31) );
  NAND2X2M U119 ( .A(RX_P_DATA[4]), .B(RX_P_DATA[2]), .Y(n33) );
  NAND3X2M U120 ( .A(n91), .B(n87), .C(RX_P_DATA[0]), .Y(n32) );
  NAND4X2M U121 ( .A(RX_P_DATA[2]), .B(n92), .C(RX_P_DATA[6]), .D(n48), .Y(n34) );
  NOR3X2M U122 ( .A(RX_P_DATA[1]), .B(RX_P_DATA[5]), .C(RX_P_DATA[4]), .Y(n48)
         );
  NAND4X2M U123 ( .A(RX_P_DATA[7]), .B(RX_P_DATA[3]), .C(n45), .D(RX_D_VLD), 
        .Y(n36) );
  INVX2M U124 ( .A(RX_P_DATA[4]), .Y(n88) );
  NAND3X2M U125 ( .A(n42), .B(n29), .C(n43), .Y(next_state[0]) );
  OR3X2M U126 ( .A(current_state[3]), .B(RX_D_VLD), .C(n23), .Y(n43) );
  OAI21X1M U127 ( .A0(n44), .A1(n41), .B0(n20), .Y(n42) );
  NOR4X2M U128 ( .A(n49), .B(n87), .C(RX_P_DATA[0]), .D(n91), .Y(n44) );
endmodule


module Reg_File_ADD_WIDTH4_RdWr_WIDTH8_RegF_DEPTH16 ( RdEn, WrEn, CLK, RST, 
        ADDRESS, Wr_DATA, Rd_DATA, Rd_DATA_VLD, REG0, REG1, REG2, REG3 );
  input [3:0] ADDRESS;
  input [7:0] Wr_DATA;
  output [7:0] Rd_DATA;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input RdEn, WrEn, CLK, RST;
  output Rd_DATA_VLD;
  wire   N11, N12, N13, N14, n265, n266, \REG_FILE[4][7] , \REG_FILE[4][6] ,
         \REG_FILE[4][5] , \REG_FILE[4][4] , \REG_FILE[4][3] ,
         \REG_FILE[4][2] , \REG_FILE[4][1] , \REG_FILE[4][0] ,
         \REG_FILE[5][7] , \REG_FILE[5][6] , \REG_FILE[5][5] ,
         \REG_FILE[5][4] , \REG_FILE[5][3] , \REG_FILE[5][2] ,
         \REG_FILE[5][1] , \REG_FILE[5][0] , \REG_FILE[6][7] ,
         \REG_FILE[6][6] , \REG_FILE[6][5] , \REG_FILE[6][4] ,
         \REG_FILE[6][3] , \REG_FILE[6][2] , \REG_FILE[6][1] ,
         \REG_FILE[6][0] , \REG_FILE[7][7] , \REG_FILE[7][6] ,
         \REG_FILE[7][5] , \REG_FILE[7][4] , \REG_FILE[7][3] ,
         \REG_FILE[7][2] , \REG_FILE[7][1] , \REG_FILE[7][0] ,
         \REG_FILE[8][7] , \REG_FILE[8][6] , \REG_FILE[8][5] ,
         \REG_FILE[8][4] , \REG_FILE[8][3] , \REG_FILE[8][2] ,
         \REG_FILE[8][1] , \REG_FILE[8][0] , \REG_FILE[9][7] ,
         \REG_FILE[9][6] , \REG_FILE[9][5] , \REG_FILE[9][4] ,
         \REG_FILE[9][3] , \REG_FILE[9][2] , \REG_FILE[9][1] ,
         \REG_FILE[9][0] , \REG_FILE[10][7] , \REG_FILE[10][6] ,
         \REG_FILE[10][5] , \REG_FILE[10][4] , \REG_FILE[10][3] ,
         \REG_FILE[10][2] , \REG_FILE[10][1] , \REG_FILE[10][0] ,
         \REG_FILE[11][7] , \REG_FILE[11][6] , \REG_FILE[11][5] ,
         \REG_FILE[11][4] , \REG_FILE[11][3] , \REG_FILE[11][2] ,
         \REG_FILE[11][1] , \REG_FILE[11][0] , \REG_FILE[12][7] ,
         \REG_FILE[12][6] , \REG_FILE[12][5] , \REG_FILE[12][4] ,
         \REG_FILE[12][3] , \REG_FILE[12][2] , \REG_FILE[12][1] ,
         \REG_FILE[12][0] , \REG_FILE[13][7] , \REG_FILE[13][6] ,
         \REG_FILE[13][5] , \REG_FILE[13][4] , \REG_FILE[13][3] ,
         \REG_FILE[13][2] , \REG_FILE[13][1] , \REG_FILE[13][0] ,
         \REG_FILE[14][7] , \REG_FILE[14][6] , \REG_FILE[14][5] ,
         \REG_FILE[14][4] , \REG_FILE[14][3] , \REG_FILE[14][2] ,
         \REG_FILE[14][1] , \REG_FILE[14][0] , \REG_FILE[15][7] ,
         \REG_FILE[15][6] , \REG_FILE[15][5] , \REG_FILE[15][4] ,
         \REG_FILE[15][3] , \REG_FILE[15][2] , \REG_FILE[15][1] ,
         \REG_FILE[15][0] , N36, N37, N38, N39, N40, N41, N42, N43, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264;
  assign N11 = ADDRESS[0];
  assign N12 = ADDRESS[1];
  assign N13 = ADDRESS[2];
  assign N14 = ADDRESS[3];

  DFFRHQX8M \REG_FILE_reg[1][3]  ( .D(n166), .CK(CLK), .RN(n249), .Q(REG1[3])
         );
  DFFRHQX8M \REG_FILE_reg[1][2]  ( .D(n165), .CK(CLK), .RN(n249), .Q(REG1[2])
         );
  DFFRHQX8M \REG_FILE_reg[2][6]  ( .D(n161), .CK(CLK), .RN(n249), .Q(REG2[6])
         );
  DFFRHQX8M \REG_FILE_reg[2][5]  ( .D(n160), .CK(CLK), .RN(n249), .Q(REG2[5])
         );
  DFFRHQX8M \REG_FILE_reg[2][4]  ( .D(n159), .CK(CLK), .RN(n249), .Q(REG2[4])
         );
  DFFRHQX8M \REG_FILE_reg[2][2]  ( .D(n157), .CK(CLK), .RN(n249), .Q(REG2[2])
         );
  DFFRQX2M \REG_FILE_reg[5][7]  ( .D(n138), .CK(CLK), .RN(n247), .Q(
        \REG_FILE[5][7] ) );
  DFFRQX2M \REG_FILE_reg[5][6]  ( .D(n137), .CK(CLK), .RN(n247), .Q(
        \REG_FILE[5][6] ) );
  DFFRQX2M \REG_FILE_reg[5][5]  ( .D(n136), .CK(CLK), .RN(n247), .Q(
        \REG_FILE[5][5] ) );
  DFFRQX2M \REG_FILE_reg[5][4]  ( .D(n135), .CK(CLK), .RN(n247), .Q(
        \REG_FILE[5][4] ) );
  DFFRQX2M \REG_FILE_reg[5][3]  ( .D(n134), .CK(CLK), .RN(n247), .Q(
        \REG_FILE[5][3] ) );
  DFFRQX2M \REG_FILE_reg[5][2]  ( .D(n133), .CK(CLK), .RN(n247), .Q(
        \REG_FILE[5][2] ) );
  DFFRQX2M \REG_FILE_reg[5][1]  ( .D(n132), .CK(CLK), .RN(n247), .Q(
        \REG_FILE[5][1] ) );
  DFFRQX2M \REG_FILE_reg[5][0]  ( .D(n131), .CK(CLK), .RN(n247), .Q(
        \REG_FILE[5][0] ) );
  DFFRQX2M \REG_FILE_reg[9][7]  ( .D(n106), .CK(CLK), .RN(n245), .Q(
        \REG_FILE[9][7] ) );
  DFFRQX2M \REG_FILE_reg[9][6]  ( .D(n105), .CK(CLK), .RN(n245), .Q(
        \REG_FILE[9][6] ) );
  DFFRQX2M \REG_FILE_reg[9][5]  ( .D(n104), .CK(CLK), .RN(n245), .Q(
        \REG_FILE[9][5] ) );
  DFFRQX2M \REG_FILE_reg[9][4]  ( .D(n103), .CK(CLK), .RN(n244), .Q(
        \REG_FILE[9][4] ) );
  DFFRQX2M \REG_FILE_reg[9][3]  ( .D(n102), .CK(CLK), .RN(n244), .Q(
        \REG_FILE[9][3] ) );
  DFFRQX2M \REG_FILE_reg[9][2]  ( .D(n101), .CK(CLK), .RN(n244), .Q(
        \REG_FILE[9][2] ) );
  DFFRQX2M \REG_FILE_reg[9][1]  ( .D(n100), .CK(CLK), .RN(n244), .Q(
        \REG_FILE[9][1] ) );
  DFFRQX2M \REG_FILE_reg[9][0]  ( .D(n99), .CK(CLK), .RN(n244), .Q(
        \REG_FILE[9][0] ) );
  DFFRQX2M \REG_FILE_reg[13][7]  ( .D(n74), .CK(CLK), .RN(n242), .Q(
        \REG_FILE[13][7] ) );
  DFFRQX2M \REG_FILE_reg[13][6]  ( .D(n73), .CK(CLK), .RN(n242), .Q(
        \REG_FILE[13][6] ) );
  DFFRQX2M \REG_FILE_reg[13][5]  ( .D(n72), .CK(CLK), .RN(n242), .Q(
        \REG_FILE[13][5] ) );
  DFFRQX2M \REG_FILE_reg[13][4]  ( .D(n71), .CK(CLK), .RN(n242), .Q(
        \REG_FILE[13][4] ) );
  DFFRQX2M \REG_FILE_reg[13][3]  ( .D(n70), .CK(CLK), .RN(n242), .Q(
        \REG_FILE[13][3] ) );
  DFFRQX2M \REG_FILE_reg[13][2]  ( .D(n69), .CK(CLK), .RN(n242), .Q(
        \REG_FILE[13][2] ) );
  DFFRQX2M \REG_FILE_reg[13][1]  ( .D(n68), .CK(CLK), .RN(n242), .Q(
        \REG_FILE[13][1] ) );
  DFFRQX2M \REG_FILE_reg[13][0]  ( .D(n67), .CK(CLK), .RN(n242), .Q(
        \REG_FILE[13][0] ) );
  DFFRQX2M \REG_FILE_reg[7][7]  ( .D(n122), .CK(CLK), .RN(n246), .Q(
        \REG_FILE[7][7] ) );
  DFFRQX2M \REG_FILE_reg[7][6]  ( .D(n121), .CK(CLK), .RN(n246), .Q(
        \REG_FILE[7][6] ) );
  DFFRQX2M \REG_FILE_reg[7][5]  ( .D(n120), .CK(CLK), .RN(n246), .Q(
        \REG_FILE[7][5] ) );
  DFFRQX2M \REG_FILE_reg[7][4]  ( .D(n119), .CK(CLK), .RN(n246), .Q(
        \REG_FILE[7][4] ) );
  DFFRQX2M \REG_FILE_reg[7][3]  ( .D(n118), .CK(CLK), .RN(n246), .Q(
        \REG_FILE[7][3] ) );
  DFFRQX2M \REG_FILE_reg[7][2]  ( .D(n117), .CK(CLK), .RN(n246), .Q(
        \REG_FILE[7][2] ) );
  DFFRQX2M \REG_FILE_reg[7][1]  ( .D(n116), .CK(CLK), .RN(n246), .Q(
        \REG_FILE[7][1] ) );
  DFFRQX2M \REG_FILE_reg[7][0]  ( .D(n115), .CK(CLK), .RN(n245), .Q(
        \REG_FILE[7][0] ) );
  DFFRQX2M \REG_FILE_reg[11][7]  ( .D(n90), .CK(CLK), .RN(n243), .Q(
        \REG_FILE[11][7] ) );
  DFFRQX2M \REG_FILE_reg[11][6]  ( .D(n89), .CK(CLK), .RN(n243), .Q(
        \REG_FILE[11][6] ) );
  DFFRQX2M \REG_FILE_reg[11][5]  ( .D(n88), .CK(CLK), .RN(n243), .Q(
        \REG_FILE[11][5] ) );
  DFFRQX2M \REG_FILE_reg[11][4]  ( .D(n87), .CK(CLK), .RN(n243), .Q(
        \REG_FILE[11][4] ) );
  DFFRQX2M \REG_FILE_reg[11][3]  ( .D(n86), .CK(CLK), .RN(n243), .Q(
        \REG_FILE[11][3] ) );
  DFFRQX2M \REG_FILE_reg[11][2]  ( .D(n85), .CK(CLK), .RN(n243), .Q(
        \REG_FILE[11][2] ) );
  DFFRQX2M \REG_FILE_reg[11][1]  ( .D(n84), .CK(CLK), .RN(n243), .Q(
        \REG_FILE[11][1] ) );
  DFFRQX2M \REG_FILE_reg[11][0]  ( .D(n83), .CK(CLK), .RN(n243), .Q(
        \REG_FILE[11][0] ) );
  DFFRQX2M \REG_FILE_reg[15][7]  ( .D(n58), .CK(CLK), .RN(n241), .Q(
        \REG_FILE[15][7] ) );
  DFFRQX2M \REG_FILE_reg[15][6]  ( .D(n57), .CK(CLK), .RN(n241), .Q(
        \REG_FILE[15][6] ) );
  DFFRQX2M \REG_FILE_reg[15][5]  ( .D(n56), .CK(CLK), .RN(n241), .Q(
        \REG_FILE[15][5] ) );
  DFFRQX2M \REG_FILE_reg[15][4]  ( .D(n55), .CK(CLK), .RN(n241), .Q(
        \REG_FILE[15][4] ) );
  DFFRQX2M \REG_FILE_reg[15][3]  ( .D(n54), .CK(CLK), .RN(n241), .Q(
        \REG_FILE[15][3] ) );
  DFFRQX2M \REG_FILE_reg[15][2]  ( .D(n53), .CK(CLK), .RN(n241), .Q(
        \REG_FILE[15][2] ) );
  DFFRQX2M \REG_FILE_reg[15][1]  ( .D(n52), .CK(CLK), .RN(n241), .Q(
        \REG_FILE[15][1] ) );
  DFFRQX2M \REG_FILE_reg[15][0]  ( .D(n51), .CK(CLK), .RN(n241), .Q(
        \REG_FILE[15][0] ) );
  DFFRQX2M \REG_FILE_reg[6][7]  ( .D(n130), .CK(CLK), .RN(n247), .Q(
        \REG_FILE[6][7] ) );
  DFFRQX2M \REG_FILE_reg[6][6]  ( .D(n129), .CK(CLK), .RN(n247), .Q(
        \REG_FILE[6][6] ) );
  DFFRQX2M \REG_FILE_reg[6][5]  ( .D(n128), .CK(CLK), .RN(n246), .Q(
        \REG_FILE[6][5] ) );
  DFFRQX2M \REG_FILE_reg[6][4]  ( .D(n127), .CK(CLK), .RN(n246), .Q(
        \REG_FILE[6][4] ) );
  DFFRQX2M \REG_FILE_reg[6][3]  ( .D(n126), .CK(CLK), .RN(n246), .Q(
        \REG_FILE[6][3] ) );
  DFFRQX2M \REG_FILE_reg[6][2]  ( .D(n125), .CK(CLK), .RN(n246), .Q(
        \REG_FILE[6][2] ) );
  DFFRQX2M \REG_FILE_reg[6][1]  ( .D(n124), .CK(CLK), .RN(n246), .Q(
        \REG_FILE[6][1] ) );
  DFFRQX2M \REG_FILE_reg[6][0]  ( .D(n123), .CK(CLK), .RN(n246), .Q(
        \REG_FILE[6][0] ) );
  DFFRQX2M \REG_FILE_reg[10][7]  ( .D(n98), .CK(CLK), .RN(n244), .Q(
        \REG_FILE[10][7] ) );
  DFFRQX2M \REG_FILE_reg[10][6]  ( .D(n97), .CK(CLK), .RN(n244), .Q(
        \REG_FILE[10][6] ) );
  DFFRQX2M \REG_FILE_reg[10][5]  ( .D(n96), .CK(CLK), .RN(n244), .Q(
        \REG_FILE[10][5] ) );
  DFFRQX2M \REG_FILE_reg[10][4]  ( .D(n95), .CK(CLK), .RN(n244), .Q(
        \REG_FILE[10][4] ) );
  DFFRQX2M \REG_FILE_reg[10][3]  ( .D(n94), .CK(CLK), .RN(n244), .Q(
        \REG_FILE[10][3] ) );
  DFFRQX2M \REG_FILE_reg[10][2]  ( .D(n93), .CK(CLK), .RN(n244), .Q(
        \REG_FILE[10][2] ) );
  DFFRQX2M \REG_FILE_reg[10][1]  ( .D(n92), .CK(CLK), .RN(n244), .Q(
        \REG_FILE[10][1] ) );
  DFFRQX2M \REG_FILE_reg[10][0]  ( .D(n91), .CK(CLK), .RN(n244), .Q(
        \REG_FILE[10][0] ) );
  DFFRQX2M \REG_FILE_reg[14][7]  ( .D(n66), .CK(CLK), .RN(n242), .Q(
        \REG_FILE[14][7] ) );
  DFFRQX2M \REG_FILE_reg[14][6]  ( .D(n65), .CK(CLK), .RN(n242), .Q(
        \REG_FILE[14][6] ) );
  DFFRQX2M \REG_FILE_reg[14][5]  ( .D(n64), .CK(CLK), .RN(n241), .Q(
        \REG_FILE[14][5] ) );
  DFFRQX2M \REG_FILE_reg[14][4]  ( .D(n63), .CK(CLK), .RN(n241), .Q(
        \REG_FILE[14][4] ) );
  DFFRQX2M \REG_FILE_reg[14][3]  ( .D(n62), .CK(CLK), .RN(n241), .Q(
        \REG_FILE[14][3] ) );
  DFFRQX2M \REG_FILE_reg[14][2]  ( .D(n61), .CK(CLK), .RN(n241), .Q(
        \REG_FILE[14][2] ) );
  DFFRQX2M \REG_FILE_reg[14][1]  ( .D(n60), .CK(CLK), .RN(n241), .Q(
        \REG_FILE[14][1] ) );
  DFFRQX2M \REG_FILE_reg[14][0]  ( .D(n59), .CK(CLK), .RN(n241), .Q(
        \REG_FILE[14][0] ) );
  DFFRQX2M \REG_FILE_reg[4][7]  ( .D(n146), .CK(CLK), .RN(n248), .Q(
        \REG_FILE[4][7] ) );
  DFFRQX2M \REG_FILE_reg[4][6]  ( .D(n145), .CK(CLK), .RN(n248), .Q(
        \REG_FILE[4][6] ) );
  DFFRQX2M \REG_FILE_reg[4][5]  ( .D(n144), .CK(CLK), .RN(n248), .Q(
        \REG_FILE[4][5] ) );
  DFFRQX2M \REG_FILE_reg[4][4]  ( .D(n143), .CK(CLK), .RN(n248), .Q(
        \REG_FILE[4][4] ) );
  DFFRQX2M \REG_FILE_reg[4][3]  ( .D(n142), .CK(CLK), .RN(n248), .Q(
        \REG_FILE[4][3] ) );
  DFFRQX2M \REG_FILE_reg[4][2]  ( .D(n141), .CK(CLK), .RN(n247), .Q(
        \REG_FILE[4][2] ) );
  DFFRQX2M \REG_FILE_reg[4][1]  ( .D(n140), .CK(CLK), .RN(n247), .Q(
        \REG_FILE[4][1] ) );
  DFFRQX2M \REG_FILE_reg[4][0]  ( .D(n139), .CK(CLK), .RN(n247), .Q(
        \REG_FILE[4][0] ) );
  DFFRQX2M \REG_FILE_reg[8][7]  ( .D(n114), .CK(CLK), .RN(n245), .Q(
        \REG_FILE[8][7] ) );
  DFFRQX2M \REG_FILE_reg[8][6]  ( .D(n113), .CK(CLK), .RN(n245), .Q(
        \REG_FILE[8][6] ) );
  DFFRQX2M \REG_FILE_reg[8][5]  ( .D(n112), .CK(CLK), .RN(n245), .Q(
        \REG_FILE[8][5] ) );
  DFFRQX2M \REG_FILE_reg[8][4]  ( .D(n111), .CK(CLK), .RN(n245), .Q(
        \REG_FILE[8][4] ) );
  DFFRQX2M \REG_FILE_reg[8][3]  ( .D(n110), .CK(CLK), .RN(n245), .Q(
        \REG_FILE[8][3] ) );
  DFFRQX2M \REG_FILE_reg[8][2]  ( .D(n109), .CK(CLK), .RN(n245), .Q(
        \REG_FILE[8][2] ) );
  DFFRQX2M \REG_FILE_reg[8][1]  ( .D(n108), .CK(CLK), .RN(n245), .Q(
        \REG_FILE[8][1] ) );
  DFFRQX2M \REG_FILE_reg[8][0]  ( .D(n107), .CK(CLK), .RN(n245), .Q(
        \REG_FILE[8][0] ) );
  DFFRQX2M \REG_FILE_reg[12][7]  ( .D(n82), .CK(CLK), .RN(n243), .Q(
        \REG_FILE[12][7] ) );
  DFFRQX2M \REG_FILE_reg[12][6]  ( .D(n81), .CK(CLK), .RN(n243), .Q(
        \REG_FILE[12][6] ) );
  DFFRQX2M \REG_FILE_reg[12][5]  ( .D(n80), .CK(CLK), .RN(n243), .Q(
        \REG_FILE[12][5] ) );
  DFFRQX2M \REG_FILE_reg[12][4]  ( .D(n79), .CK(CLK), .RN(n243), .Q(
        \REG_FILE[12][4] ) );
  DFFRQX2M \REG_FILE_reg[12][3]  ( .D(n78), .CK(CLK), .RN(n243), .Q(
        \REG_FILE[12][3] ) );
  DFFRQX2M \REG_FILE_reg[12][2]  ( .D(n77), .CK(CLK), .RN(n242), .Q(
        \REG_FILE[12][2] ) );
  DFFRQX2M \REG_FILE_reg[12][1]  ( .D(n76), .CK(CLK), .RN(n242), .Q(
        \REG_FILE[12][1] ) );
  DFFRQX2M \REG_FILE_reg[12][0]  ( .D(n75), .CK(CLK), .RN(n242), .Q(
        \REG_FILE[12][0] ) );
  DFFRQX2M \Rd_DATA_reg[0]  ( .D(n43), .CK(CLK), .RN(n250), .Q(Rd_DATA[0]) );
  DFFRQX2M \REG_FILE_reg[3][0]  ( .D(n147), .CK(CLK), .RN(n248), .Q(REG3[0])
         );
  DFFRQX2M \REG_FILE_reg[2][1]  ( .D(n156), .CK(CLK), .RN(n248), .Q(REG2[1])
         );
  DFFRQX2M \Rd_DATA_reg[7]  ( .D(n50), .CK(CLK), .RN(n245), .Q(Rd_DATA[7]) );
  DFFRQX2M \Rd_DATA_reg[6]  ( .D(n49), .CK(CLK), .RN(n245), .Q(Rd_DATA[6]) );
  DFFRQX2M \Rd_DATA_reg[5]  ( .D(n48), .CK(CLK), .RN(n247), .Q(Rd_DATA[5]) );
  DFFRQX2M \Rd_DATA_reg[4]  ( .D(n47), .CK(CLK), .RN(n247), .Q(Rd_DATA[4]) );
  DFFRQX2M \Rd_DATA_reg[3]  ( .D(n46), .CK(CLK), .RN(n253), .Q(Rd_DATA[3]) );
  DFFRQX2M \Rd_DATA_reg[2]  ( .D(n45), .CK(CLK), .RN(RST), .Q(Rd_DATA[2]) );
  DFFRQX2M \Rd_DATA_reg[1]  ( .D(n44), .CK(CLK), .RN(RST), .Q(Rd_DATA[1]) );
  DFFSQX4M \REG_FILE_reg[3][5]  ( .D(n152), .CK(CLK), .SN(n245), .Q(REG3[5])
         );
  DFFSQX4M \REG_FILE_reg[2][0]  ( .D(n155), .CK(CLK), .SN(n242), .Q(REG2[0])
         );
  DFFRQX2M Rd_DATA_VLD_reg ( .D(n42), .CK(CLK), .RN(n245), .Q(Rd_DATA_VLD) );
  DFFRQX2M \REG_FILE_reg[0][2]  ( .D(n173), .CK(CLK), .RN(n250), .Q(REG0[2])
         );
  DFFRQX2M \REG_FILE_reg[0][0]  ( .D(n171), .CK(CLK), .RN(n250), .Q(REG0[0])
         );
  DFFRQX2M \REG_FILE_reg[0][1]  ( .D(n172), .CK(CLK), .RN(n250), .Q(REG0[1])
         );
  DFFRHQX8M \REG_FILE_reg[0][5]  ( .D(n176), .CK(CLK), .RN(n250), .Q(REG0[5])
         );
  DFFRHQX8M \REG_FILE_reg[0][7]  ( .D(n178), .CK(CLK), .RN(n247), .Q(REG0[7])
         );
  DFFRHQX8M \REG_FILE_reg[1][6]  ( .D(n169), .CK(CLK), .RN(n249), .Q(REG1[6])
         );
  DFFRQX2M \REG_FILE_reg[0][3]  ( .D(n174), .CK(CLK), .RN(n250), .Q(REG0[3])
         );
  DFFRQX2M \REG_FILE_reg[0][4]  ( .D(n175), .CK(CLK), .RN(n250), .Q(REG0[4])
         );
  DFFRQX2M \REG_FILE_reg[2][3]  ( .D(n158), .CK(CLK), .RN(n249), .Q(n266) );
  DFFSHQX8M \REG_FILE_reg[2][7]  ( .D(n162), .CK(CLK), .SN(RST), .Q(REG2[7])
         );
  DFFRQX4M \REG_FILE_reg[3][1]  ( .D(n148), .CK(CLK), .RN(n248), .Q(REG3[1])
         );
  DFFRQX4M \REG_FILE_reg[3][7]  ( .D(n154), .CK(CLK), .RN(n248), .Q(REG3[7])
         );
  DFFRQX4M \REG_FILE_reg[3][4]  ( .D(n151), .CK(CLK), .RN(n248), .Q(REG3[4])
         );
  DFFRQX4M \REG_FILE_reg[3][3]  ( .D(n150), .CK(CLK), .RN(n248), .Q(REG3[3])
         );
  DFFRQX4M \REG_FILE_reg[3][2]  ( .D(n149), .CK(CLK), .RN(n248), .Q(REG3[2])
         );
  DFFRHQX2M \REG_FILE_reg[1][0]  ( .D(n163), .CK(CLK), .RN(n249), .Q(n265) );
  DFFRQX4M \REG_FILE_reg[0][6]  ( .D(n177), .CK(CLK), .RN(n250), .Q(REG0[6])
         );
  DFFRHQX4M \REG_FILE_reg[1][7]  ( .D(n170), .CK(CLK), .RN(n249), .Q(REG1[7])
         );
  DFFRQX4M \REG_FILE_reg[3][6]  ( .D(n153), .CK(CLK), .RN(n248), .Q(REG3[6])
         );
  DFFRHQX8M \REG_FILE_reg[1][5]  ( .D(n168), .CK(CLK), .RN(n249), .Q(REG1[5])
         );
  DFFRHQX8M \REG_FILE_reg[1][4]  ( .D(n167), .CK(CLK), .RN(n249), .Q(REG1[4])
         );
  DFFRHQX4M \REG_FILE_reg[1][1]  ( .D(n164), .CK(CLK), .RN(n249), .Q(REG1[1])
         );
  CLKBUFX40M U3 ( .A(n265), .Y(REG1[0]) );
  CLKINVX1M U4 ( .A(N11), .Y(n238) );
  BUFX10M U5 ( .A(n266), .Y(REG2[3]) );
  CLKINVX1M U6 ( .A(N13), .Y(n254) );
  NOR2X4M U7 ( .A(n254), .B(n239), .Y(n22) );
  NOR2X4M U8 ( .A(n254), .B(n240), .Y(n17) );
  AND2X2M U9 ( .A(n40), .B(n202), .Y(n32) );
  AND2X2M U10 ( .A(n40), .B(n238), .Y(n34) );
  AND2X2M U11 ( .A(n29), .B(n238), .Y(n20) );
  AND2X2M U12 ( .A(n29), .B(n202), .Y(n18) );
  BUFX4M U13 ( .A(n15), .Y(n237) );
  INVX2M U14 ( .A(N12), .Y(n240) );
  NOR2X4M U15 ( .A(n239), .B(N13), .Y(n28) );
  NOR2X4M U16 ( .A(n240), .B(N13), .Y(n25) );
  MX4XLM U17 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n202), 
        .S1(n201), .Y(n6) );
  MX4XLM U18 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n203), 
        .S1(n200), .Y(n179) );
  MX4XLM U19 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n203), 
        .S1(n201), .Y(n187) );
  MX4XLM U20 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n204), 
        .S1(n201), .Y(n191) );
  MX4XLM U21 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n204), 
        .S1(n201), .Y(n195) );
  MX4XLM U22 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n204), 
        .S1(n201), .Y(n199) );
  MX4XLM U23 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n202), 
        .S1(n200), .Y(n10) );
  INVX8M U24 ( .A(Wr_DATA[7]), .Y(n257) );
  CLKBUFX8M U25 ( .A(N11), .Y(n203) );
  CLKBUFX8M U26 ( .A(n239), .Y(n200) );
  CLKBUFX6M U27 ( .A(N11), .Y(n202) );
  CLKBUFX8M U28 ( .A(n239), .Y(n201) );
  BUFX4M U29 ( .A(n21), .Y(n232) );
  BUFX4M U30 ( .A(n23), .Y(n230) );
  BUFX4M U31 ( .A(n19), .Y(n234) );
  BUFX4M U32 ( .A(n31), .Y(n220) );
  BUFX4M U33 ( .A(n33), .Y(n218) );
  BUFX4M U34 ( .A(n35), .Y(n216) );
  BUFX4M U35 ( .A(n36), .Y(n214) );
  BUFX4M U36 ( .A(n16), .Y(n236) );
  BUFX4M U37 ( .A(n21), .Y(n231) );
  BUFX4M U38 ( .A(n23), .Y(n229) );
  BUFX4M U39 ( .A(n19), .Y(n233) );
  BUFX4M U40 ( .A(n31), .Y(n219) );
  BUFX4M U41 ( .A(n33), .Y(n217) );
  BUFX4M U42 ( .A(n35), .Y(n215) );
  BUFX4M U43 ( .A(n36), .Y(n213) );
  BUFX4M U44 ( .A(n16), .Y(n235) );
  CLKBUFX8M U45 ( .A(N11), .Y(n204) );
  CLKBUFX8M U46 ( .A(n252), .Y(n242) );
  CLKBUFX8M U47 ( .A(n252), .Y(n243) );
  CLKBUFX8M U48 ( .A(n252), .Y(n244) );
  CLKBUFX8M U49 ( .A(n253), .Y(n245) );
  CLKBUFX8M U50 ( .A(n251), .Y(n246) );
  CLKBUFX8M U51 ( .A(RST), .Y(n247) );
  CLKBUFX8M U52 ( .A(n251), .Y(n248) );
  BUFX6M U53 ( .A(n251), .Y(n249) );
  CLKBUFX8M U54 ( .A(n252), .Y(n241) );
  BUFX4M U55 ( .A(n251), .Y(n250) );
  NAND2X2M U56 ( .A(n17), .B(n18), .Y(n16) );
  NAND2X2M U57 ( .A(n22), .B(n18), .Y(n21) );
  NAND2X2M U58 ( .A(n22), .B(n20), .Y(n23) );
  BUFX4M U59 ( .A(n37), .Y(n212) );
  BUFX4M U60 ( .A(n38), .Y(n210) );
  BUFX4M U61 ( .A(n39), .Y(n208) );
  BUFX4M U62 ( .A(n41), .Y(n206) );
  BUFX4M U63 ( .A(n24), .Y(n228) );
  BUFX4M U64 ( .A(n26), .Y(n226) );
  BUFX4M U65 ( .A(n27), .Y(n224) );
  BUFX4M U66 ( .A(n30), .Y(n222) );
  NAND2X2M U67 ( .A(n20), .B(n17), .Y(n19) );
  NAND2X2M U68 ( .A(n32), .B(n17), .Y(n31) );
  NAND2X2M U69 ( .A(n34), .B(n17), .Y(n33) );
  NAND2X2M U70 ( .A(n32), .B(n22), .Y(n35) );
  NAND2X2M U71 ( .A(n34), .B(n22), .Y(n36) );
  BUFX4M U72 ( .A(n37), .Y(n211) );
  BUFX4M U73 ( .A(n38), .Y(n209) );
  BUFX4M U74 ( .A(n39), .Y(n207) );
  BUFX4M U75 ( .A(n41), .Y(n205) );
  BUFX4M U76 ( .A(n24), .Y(n227) );
  BUFX4M U77 ( .A(n26), .Y(n225) );
  BUFX4M U78 ( .A(n27), .Y(n223) );
  BUFX4M U79 ( .A(n30), .Y(n221) );
  INVX4M U80 ( .A(n237), .Y(n255) );
  BUFX2M U81 ( .A(n253), .Y(n252) );
  BUFX2M U82 ( .A(n253), .Y(n251) );
  NAND2X2M U83 ( .A(n32), .B(n25), .Y(n37) );
  NAND2X2M U84 ( .A(n34), .B(n25), .Y(n38) );
  NAND2X2M U85 ( .A(n32), .B(n28), .Y(n39) );
  NAND2X2M U86 ( .A(n34), .B(n28), .Y(n41) );
  NAND2X2M U87 ( .A(n25), .B(n18), .Y(n24) );
  NAND2X2M U88 ( .A(n25), .B(n20), .Y(n26) );
  NAND2X2M U89 ( .A(n28), .B(n18), .Y(n27) );
  NAND2X2M U90 ( .A(n28), .B(n20), .Y(n30) );
  INVX2M U91 ( .A(n240), .Y(n239) );
  NOR2X4M U92 ( .A(n256), .B(RdEn), .Y(n14) );
  INVX2M U93 ( .A(WrEn), .Y(n256) );
  NAND2X2M U94 ( .A(RdEn), .B(n256), .Y(n15) );
  NOR2BX2M U95 ( .AN(n14), .B(N14), .Y(n40) );
  AND2X1M U96 ( .A(N14), .B(n14), .Y(n29) );
  INVX8M U97 ( .A(Wr_DATA[0]), .Y(n264) );
  INVX8M U98 ( .A(Wr_DATA[1]), .Y(n263) );
  INVX8M U99 ( .A(Wr_DATA[2]), .Y(n262) );
  INVX8M U100 ( .A(Wr_DATA[3]), .Y(n261) );
  INVX8M U101 ( .A(Wr_DATA[4]), .Y(n260) );
  INVX8M U102 ( .A(Wr_DATA[5]), .Y(n259) );
  INVX8M U103 ( .A(Wr_DATA[6]), .Y(n258) );
  BUFX2M U104 ( .A(RST), .Y(n253) );
  OAI2BB2X1M U105 ( .B0(n236), .B1(n264), .A0N(\REG_FILE[15][0] ), .A1N(n236), 
        .Y(n51) );
  OAI2BB2X1M U106 ( .B0(n235), .B1(n263), .A0N(\REG_FILE[15][1] ), .A1N(n236), 
        .Y(n52) );
  OAI2BB2X1M U107 ( .B0(n235), .B1(n262), .A0N(\REG_FILE[15][2] ), .A1N(n236), 
        .Y(n53) );
  OAI2BB2X1M U108 ( .B0(n235), .B1(n261), .A0N(\REG_FILE[15][3] ), .A1N(n236), 
        .Y(n54) );
  OAI2BB2X1M U109 ( .B0(n235), .B1(n260), .A0N(\REG_FILE[15][4] ), .A1N(n236), 
        .Y(n55) );
  OAI2BB2X1M U110 ( .B0(n235), .B1(n259), .A0N(\REG_FILE[15][5] ), .A1N(n236), 
        .Y(n56) );
  OAI2BB2X1M U111 ( .B0(n235), .B1(n258), .A0N(\REG_FILE[15][6] ), .A1N(n236), 
        .Y(n57) );
  OAI2BB2X1M U112 ( .B0(n264), .B1(n234), .A0N(\REG_FILE[14][0] ), .A1N(n234), 
        .Y(n59) );
  OAI2BB2X1M U113 ( .B0(n263), .B1(n233), .A0N(\REG_FILE[14][1] ), .A1N(n234), 
        .Y(n60) );
  OAI2BB2X1M U114 ( .B0(n262), .B1(n233), .A0N(\REG_FILE[14][2] ), .A1N(n234), 
        .Y(n61) );
  OAI2BB2X1M U115 ( .B0(n261), .B1(n233), .A0N(\REG_FILE[14][3] ), .A1N(n234), 
        .Y(n62) );
  OAI2BB2X1M U116 ( .B0(n260), .B1(n233), .A0N(\REG_FILE[14][4] ), .A1N(n234), 
        .Y(n63) );
  OAI2BB2X1M U117 ( .B0(n259), .B1(n233), .A0N(\REG_FILE[14][5] ), .A1N(n234), 
        .Y(n64) );
  OAI2BB2X1M U118 ( .B0(n258), .B1(n233), .A0N(\REG_FILE[14][6] ), .A1N(n234), 
        .Y(n65) );
  OAI2BB2X1M U119 ( .B0(n264), .B1(n232), .A0N(\REG_FILE[13][0] ), .A1N(n232), 
        .Y(n67) );
  OAI2BB2X1M U120 ( .B0(n263), .B1(n231), .A0N(\REG_FILE[13][1] ), .A1N(n232), 
        .Y(n68) );
  OAI2BB2X1M U121 ( .B0(n262), .B1(n231), .A0N(\REG_FILE[13][2] ), .A1N(n232), 
        .Y(n69) );
  OAI2BB2X1M U122 ( .B0(n261), .B1(n231), .A0N(\REG_FILE[13][3] ), .A1N(n232), 
        .Y(n70) );
  OAI2BB2X1M U123 ( .B0(n260), .B1(n231), .A0N(\REG_FILE[13][4] ), .A1N(n232), 
        .Y(n71) );
  OAI2BB2X1M U124 ( .B0(n259), .B1(n231), .A0N(\REG_FILE[13][5] ), .A1N(n232), 
        .Y(n72) );
  OAI2BB2X1M U125 ( .B0(n258), .B1(n231), .A0N(\REG_FILE[13][6] ), .A1N(n232), 
        .Y(n73) );
  OAI2BB2X1M U126 ( .B0(n264), .B1(n230), .A0N(\REG_FILE[12][0] ), .A1N(n230), 
        .Y(n75) );
  OAI2BB2X1M U127 ( .B0(n263), .B1(n229), .A0N(\REG_FILE[12][1] ), .A1N(n230), 
        .Y(n76) );
  OAI2BB2X1M U128 ( .B0(n262), .B1(n229), .A0N(\REG_FILE[12][2] ), .A1N(n230), 
        .Y(n77) );
  OAI2BB2X1M U129 ( .B0(n261), .B1(n229), .A0N(\REG_FILE[12][3] ), .A1N(n230), 
        .Y(n78) );
  OAI2BB2X1M U130 ( .B0(n260), .B1(n229), .A0N(\REG_FILE[12][4] ), .A1N(n230), 
        .Y(n79) );
  OAI2BB2X1M U131 ( .B0(n259), .B1(n229), .A0N(\REG_FILE[12][5] ), .A1N(n230), 
        .Y(n80) );
  OAI2BB2X1M U132 ( .B0(n258), .B1(n229), .A0N(\REG_FILE[12][6] ), .A1N(n230), 
        .Y(n81) );
  OAI2BB2X1M U133 ( .B0(n264), .B1(n228), .A0N(\REG_FILE[11][0] ), .A1N(n228), 
        .Y(n83) );
  OAI2BB2X1M U134 ( .B0(n263), .B1(n227), .A0N(\REG_FILE[11][1] ), .A1N(n228), 
        .Y(n84) );
  OAI2BB2X1M U135 ( .B0(n262), .B1(n227), .A0N(\REG_FILE[11][2] ), .A1N(n228), 
        .Y(n85) );
  OAI2BB2X1M U136 ( .B0(n261), .B1(n227), .A0N(\REG_FILE[11][3] ), .A1N(n228), 
        .Y(n86) );
  OAI2BB2X1M U137 ( .B0(n260), .B1(n227), .A0N(\REG_FILE[11][4] ), .A1N(n228), 
        .Y(n87) );
  OAI2BB2X1M U138 ( .B0(n259), .B1(n227), .A0N(\REG_FILE[11][5] ), .A1N(n228), 
        .Y(n88) );
  OAI2BB2X1M U139 ( .B0(n258), .B1(n227), .A0N(\REG_FILE[11][6] ), .A1N(n228), 
        .Y(n89) );
  OAI2BB2X1M U140 ( .B0(n264), .B1(n226), .A0N(\REG_FILE[10][0] ), .A1N(n226), 
        .Y(n91) );
  OAI2BB2X1M U141 ( .B0(n263), .B1(n225), .A0N(\REG_FILE[10][1] ), .A1N(n226), 
        .Y(n92) );
  OAI2BB2X1M U142 ( .B0(n262), .B1(n225), .A0N(\REG_FILE[10][2] ), .A1N(n226), 
        .Y(n93) );
  OAI2BB2X1M U143 ( .B0(n261), .B1(n225), .A0N(\REG_FILE[10][3] ), .A1N(n226), 
        .Y(n94) );
  OAI2BB2X1M U144 ( .B0(n260), .B1(n225), .A0N(\REG_FILE[10][4] ), .A1N(n226), 
        .Y(n95) );
  OAI2BB2X1M U145 ( .B0(n259), .B1(n225), .A0N(\REG_FILE[10][5] ), .A1N(n226), 
        .Y(n96) );
  OAI2BB2X1M U146 ( .B0(n258), .B1(n225), .A0N(\REG_FILE[10][6] ), .A1N(n226), 
        .Y(n97) );
  OAI2BB2X1M U147 ( .B0(n264), .B1(n224), .A0N(\REG_FILE[9][0] ), .A1N(n224), 
        .Y(n99) );
  OAI2BB2X1M U148 ( .B0(n263), .B1(n223), .A0N(\REG_FILE[9][1] ), .A1N(n224), 
        .Y(n100) );
  OAI2BB2X1M U149 ( .B0(n262), .B1(n223), .A0N(\REG_FILE[9][2] ), .A1N(n224), 
        .Y(n101) );
  OAI2BB2X1M U150 ( .B0(n261), .B1(n223), .A0N(\REG_FILE[9][3] ), .A1N(n224), 
        .Y(n102) );
  OAI2BB2X1M U151 ( .B0(n260), .B1(n223), .A0N(\REG_FILE[9][4] ), .A1N(n224), 
        .Y(n103) );
  OAI2BB2X1M U152 ( .B0(n259), .B1(n223), .A0N(\REG_FILE[9][5] ), .A1N(n224), 
        .Y(n104) );
  OAI2BB2X1M U153 ( .B0(n258), .B1(n223), .A0N(\REG_FILE[9][6] ), .A1N(n224), 
        .Y(n105) );
  OAI2BB2X1M U154 ( .B0(n264), .B1(n222), .A0N(\REG_FILE[8][0] ), .A1N(n222), 
        .Y(n107) );
  OAI2BB2X1M U155 ( .B0(n263), .B1(n221), .A0N(\REG_FILE[8][1] ), .A1N(n222), 
        .Y(n108) );
  OAI2BB2X1M U156 ( .B0(n262), .B1(n221), .A0N(\REG_FILE[8][2] ), .A1N(n222), 
        .Y(n109) );
  OAI2BB2X1M U157 ( .B0(n261), .B1(n221), .A0N(\REG_FILE[8][3] ), .A1N(n222), 
        .Y(n110) );
  OAI2BB2X1M U158 ( .B0(n260), .B1(n221), .A0N(\REG_FILE[8][4] ), .A1N(n222), 
        .Y(n111) );
  OAI2BB2X1M U159 ( .B0(n259), .B1(n221), .A0N(\REG_FILE[8][5] ), .A1N(n222), 
        .Y(n112) );
  OAI2BB2X1M U160 ( .B0(n258), .B1(n221), .A0N(\REG_FILE[8][6] ), .A1N(n222), 
        .Y(n113) );
  OAI2BB2X1M U161 ( .B0(n264), .B1(n220), .A0N(\REG_FILE[7][0] ), .A1N(n220), 
        .Y(n115) );
  OAI2BB2X1M U162 ( .B0(n263), .B1(n219), .A0N(\REG_FILE[7][1] ), .A1N(n220), 
        .Y(n116) );
  OAI2BB2X1M U163 ( .B0(n262), .B1(n219), .A0N(\REG_FILE[7][2] ), .A1N(n220), 
        .Y(n117) );
  OAI2BB2X1M U164 ( .B0(n261), .B1(n219), .A0N(\REG_FILE[7][3] ), .A1N(n220), 
        .Y(n118) );
  OAI2BB2X1M U165 ( .B0(n260), .B1(n219), .A0N(\REG_FILE[7][4] ), .A1N(n220), 
        .Y(n119) );
  OAI2BB2X1M U166 ( .B0(n259), .B1(n219), .A0N(\REG_FILE[7][5] ), .A1N(n220), 
        .Y(n120) );
  OAI2BB2X1M U167 ( .B0(n258), .B1(n219), .A0N(\REG_FILE[7][6] ), .A1N(n220), 
        .Y(n121) );
  OAI2BB2X1M U168 ( .B0(n264), .B1(n218), .A0N(\REG_FILE[6][0] ), .A1N(n218), 
        .Y(n123) );
  OAI2BB2X1M U169 ( .B0(n263), .B1(n217), .A0N(\REG_FILE[6][1] ), .A1N(n218), 
        .Y(n124) );
  OAI2BB2X1M U170 ( .B0(n262), .B1(n217), .A0N(\REG_FILE[6][2] ), .A1N(n218), 
        .Y(n125) );
  OAI2BB2X1M U171 ( .B0(n261), .B1(n217), .A0N(\REG_FILE[6][3] ), .A1N(n218), 
        .Y(n126) );
  OAI2BB2X1M U172 ( .B0(n260), .B1(n217), .A0N(\REG_FILE[6][4] ), .A1N(n218), 
        .Y(n127) );
  OAI2BB2X1M U173 ( .B0(n259), .B1(n217), .A0N(\REG_FILE[6][5] ), .A1N(n218), 
        .Y(n128) );
  OAI2BB2X1M U174 ( .B0(n258), .B1(n217), .A0N(\REG_FILE[6][6] ), .A1N(n218), 
        .Y(n129) );
  OAI2BB2X1M U175 ( .B0(n264), .B1(n216), .A0N(\REG_FILE[5][0] ), .A1N(n216), 
        .Y(n131) );
  OAI2BB2X1M U176 ( .B0(n263), .B1(n215), .A0N(\REG_FILE[5][1] ), .A1N(n216), 
        .Y(n132) );
  OAI2BB2X1M U177 ( .B0(n262), .B1(n215), .A0N(\REG_FILE[5][2] ), .A1N(n216), 
        .Y(n133) );
  OAI2BB2X1M U178 ( .B0(n261), .B1(n215), .A0N(\REG_FILE[5][3] ), .A1N(n216), 
        .Y(n134) );
  OAI2BB2X1M U179 ( .B0(n260), .B1(n215), .A0N(\REG_FILE[5][4] ), .A1N(n216), 
        .Y(n135) );
  OAI2BB2X1M U180 ( .B0(n259), .B1(n215), .A0N(\REG_FILE[5][5] ), .A1N(n216), 
        .Y(n136) );
  OAI2BB2X1M U181 ( .B0(n258), .B1(n215), .A0N(\REG_FILE[5][6] ), .A1N(n216), 
        .Y(n137) );
  OAI2BB2X1M U182 ( .B0(n264), .B1(n214), .A0N(\REG_FILE[4][0] ), .A1N(n214), 
        .Y(n139) );
  OAI2BB2X1M U183 ( .B0(n263), .B1(n213), .A0N(\REG_FILE[4][1] ), .A1N(n214), 
        .Y(n140) );
  OAI2BB2X1M U184 ( .B0(n262), .B1(n213), .A0N(\REG_FILE[4][2] ), .A1N(n214), 
        .Y(n141) );
  OAI2BB2X1M U185 ( .B0(n261), .B1(n213), .A0N(\REG_FILE[4][3] ), .A1N(n214), 
        .Y(n142) );
  OAI2BB2X1M U186 ( .B0(n260), .B1(n213), .A0N(\REG_FILE[4][4] ), .A1N(n214), 
        .Y(n143) );
  OAI2BB2X1M U187 ( .B0(n259), .B1(n213), .A0N(\REG_FILE[4][5] ), .A1N(n214), 
        .Y(n144) );
  OAI2BB2X1M U188 ( .B0(n258), .B1(n213), .A0N(\REG_FILE[4][6] ), .A1N(n214), 
        .Y(n145) );
  OAI2BB2X1M U189 ( .B0(n264), .B1(n212), .A0N(REG3[0]), .A1N(n212), .Y(n147)
         );
  OAI2BB2X1M U190 ( .B0(n263), .B1(n211), .A0N(REG3[1]), .A1N(n212), .Y(n148)
         );
  OAI2BB2X1M U191 ( .B0(n262), .B1(n211), .A0N(REG3[2]), .A1N(n212), .Y(n149)
         );
  OAI2BB2X1M U192 ( .B0(n261), .B1(n211), .A0N(REG3[3]), .A1N(n212), .Y(n150)
         );
  OAI2BB2X1M U193 ( .B0(n260), .B1(n211), .A0N(REG3[4]), .A1N(n212), .Y(n151)
         );
  OAI2BB2X1M U194 ( .B0(n258), .B1(n211), .A0N(REG3[6]), .A1N(n212), .Y(n153)
         );
  OAI2BB2X1M U195 ( .B0(n263), .B1(n209), .A0N(REG2[1]), .A1N(n210), .Y(n156)
         );
  OAI2BB2X1M U196 ( .B0(n262), .B1(n209), .A0N(REG2[2]), .A1N(n210), .Y(n157)
         );
  OAI2BB2X1M U197 ( .B0(n261), .B1(n209), .A0N(REG2[3]), .A1N(n210), .Y(n158)
         );
  OAI2BB2X1M U198 ( .B0(n260), .B1(n209), .A0N(REG2[4]), .A1N(n210), .Y(n159)
         );
  OAI2BB2X1M U199 ( .B0(n259), .B1(n209), .A0N(REG2[5]), .A1N(n210), .Y(n160)
         );
  OAI2BB2X1M U200 ( .B0(n258), .B1(n209), .A0N(REG2[6]), .A1N(n210), .Y(n161)
         );
  OAI2BB2X1M U201 ( .B0(n264), .B1(n208), .A0N(REG1[0]), .A1N(n208), .Y(n163)
         );
  OAI2BB2X1M U202 ( .B0(n263), .B1(n207), .A0N(REG1[1]), .A1N(n208), .Y(n164)
         );
  OAI2BB2X1M U203 ( .B0(n262), .B1(n207), .A0N(REG1[2]), .A1N(n208), .Y(n165)
         );
  OAI2BB2X1M U204 ( .B0(n261), .B1(n207), .A0N(REG1[3]), .A1N(n208), .Y(n166)
         );
  OAI2BB2X1M U205 ( .B0(n260), .B1(n207), .A0N(REG1[4]), .A1N(n208), .Y(n167)
         );
  OAI2BB2X1M U206 ( .B0(n259), .B1(n207), .A0N(REG1[5]), .A1N(n208), .Y(n168)
         );
  OAI2BB2X1M U207 ( .B0(n258), .B1(n207), .A0N(REG1[6]), .A1N(n208), .Y(n169)
         );
  OAI2BB2X1M U208 ( .B0(n264), .B1(n206), .A0N(REG0[0]), .A1N(n206), .Y(n171)
         );
  OAI2BB2X1M U209 ( .B0(n263), .B1(n205), .A0N(REG0[1]), .A1N(n206), .Y(n172)
         );
  OAI2BB2X1M U210 ( .B0(n262), .B1(n205), .A0N(REG0[2]), .A1N(n206), .Y(n173)
         );
  OAI2BB2X1M U211 ( .B0(n261), .B1(n205), .A0N(REG0[3]), .A1N(n206), .Y(n174)
         );
  OAI2BB2X1M U212 ( .B0(n260), .B1(n205), .A0N(REG0[4]), .A1N(n206), .Y(n175)
         );
  OAI2BB2X1M U213 ( .B0(n259), .B1(n205), .A0N(REG0[5]), .A1N(n206), .Y(n176)
         );
  OAI2BB2X1M U214 ( .B0(n258), .B1(n205), .A0N(REG0[6]), .A1N(n206), .Y(n177)
         );
  OAI2BB2X1M U215 ( .B0(n235), .B1(n257), .A0N(\REG_FILE[15][7] ), .A1N(n236), 
        .Y(n58) );
  OAI2BB2X1M U216 ( .B0(n257), .B1(n233), .A0N(\REG_FILE[14][7] ), .A1N(n234), 
        .Y(n66) );
  OAI2BB2X1M U217 ( .B0(n257), .B1(n231), .A0N(\REG_FILE[13][7] ), .A1N(n232), 
        .Y(n74) );
  OAI2BB2X1M U218 ( .B0(n257), .B1(n229), .A0N(\REG_FILE[12][7] ), .A1N(n230), 
        .Y(n82) );
  OAI2BB2X1M U219 ( .B0(n257), .B1(n227), .A0N(\REG_FILE[11][7] ), .A1N(n228), 
        .Y(n90) );
  OAI2BB2X1M U220 ( .B0(n257), .B1(n225), .A0N(\REG_FILE[10][7] ), .A1N(n226), 
        .Y(n98) );
  OAI2BB2X1M U221 ( .B0(n257), .B1(n223), .A0N(\REG_FILE[9][7] ), .A1N(n224), 
        .Y(n106) );
  OAI2BB2X1M U222 ( .B0(n257), .B1(n221), .A0N(\REG_FILE[8][7] ), .A1N(n222), 
        .Y(n114) );
  OAI2BB2X1M U223 ( .B0(n257), .B1(n219), .A0N(\REG_FILE[7][7] ), .A1N(n220), 
        .Y(n122) );
  OAI2BB2X1M U224 ( .B0(n257), .B1(n217), .A0N(\REG_FILE[6][7] ), .A1N(n218), 
        .Y(n130) );
  OAI2BB2X1M U225 ( .B0(n257), .B1(n215), .A0N(\REG_FILE[5][7] ), .A1N(n216), 
        .Y(n138) );
  OAI2BB2X1M U226 ( .B0(n257), .B1(n213), .A0N(\REG_FILE[4][7] ), .A1N(n214), 
        .Y(n146) );
  OAI2BB2X1M U227 ( .B0(n257), .B1(n211), .A0N(REG3[7]), .A1N(n212), .Y(n154)
         );
  OAI2BB2X1M U228 ( .B0(n257), .B1(n207), .A0N(REG1[7]), .A1N(n208), .Y(n170)
         );
  OAI2BB2X1M U229 ( .B0(n257), .B1(n205), .A0N(REG0[7]), .A1N(n206), .Y(n178)
         );
  OAI2BB2X1M U230 ( .B0(n259), .B1(n211), .A0N(REG3[5]), .A1N(n212), .Y(n152)
         );
  OAI2BB2X1M U231 ( .B0(n264), .B1(n210), .A0N(REG2[0]), .A1N(n210), .Y(n155)
         );
  OAI2BB2X1M U232 ( .B0(n257), .B1(n209), .A0N(REG2[7]), .A1N(n210), .Y(n162)
         );
  MX4X1M U233 ( .A(\REG_FILE[4][2] ), .B(\REG_FILE[5][2] ), .C(
        \REG_FILE[6][2] ), .D(\REG_FILE[7][2] ), .S0(n203), .S1(n200), .Y(n13)
         );
  MX4X1M U234 ( .A(\REG_FILE[4][3] ), .B(\REG_FILE[5][3] ), .C(
        \REG_FILE[6][3] ), .D(\REG_FILE[7][3] ), .S0(n203), .S1(n200), .Y(n182) );
  MX4X1M U235 ( .A(\REG_FILE[4][4] ), .B(\REG_FILE[5][4] ), .C(
        \REG_FILE[6][4] ), .D(\REG_FILE[7][4] ), .S0(n203), .S1(n200), .Y(n186) );
  MX4X1M U236 ( .A(\REG_FILE[4][5] ), .B(\REG_FILE[5][5] ), .C(
        \REG_FILE[6][5] ), .D(\REG_FILE[7][5] ), .S0(n204), .S1(n201), .Y(n190) );
  MX4X1M U237 ( .A(\REG_FILE[4][6] ), .B(\REG_FILE[5][6] ), .C(
        \REG_FILE[6][6] ), .D(\REG_FILE[7][6] ), .S0(n204), .S1(n201), .Y(n194) );
  MX4X1M U238 ( .A(\REG_FILE[4][7] ), .B(\REG_FILE[5][7] ), .C(
        \REG_FILE[6][7] ), .D(\REG_FILE[7][7] ), .S0(n204), .S1(n201), .Y(n198) );
  MX4X1M U239 ( .A(\REG_FILE[12][2] ), .B(\REG_FILE[13][2] ), .C(
        \REG_FILE[14][2] ), .D(\REG_FILE[15][2] ), .S0(n203), .S1(n200), .Y(
        n11) );
  MX4X1M U240 ( .A(\REG_FILE[12][3] ), .B(\REG_FILE[13][3] ), .C(
        \REG_FILE[14][3] ), .D(\REG_FILE[15][3] ), .S0(n203), .S1(n200), .Y(
        n180) );
  MX4X1M U241 ( .A(\REG_FILE[12][4] ), .B(\REG_FILE[13][4] ), .C(
        \REG_FILE[14][4] ), .D(\REG_FILE[15][4] ), .S0(n203), .S1(n200), .Y(
        n184) );
  MX4X1M U242 ( .A(\REG_FILE[12][5] ), .B(\REG_FILE[13][5] ), .C(
        \REG_FILE[14][5] ), .D(\REG_FILE[15][5] ), .S0(n204), .S1(n201), .Y(
        n188) );
  MX4X1M U243 ( .A(\REG_FILE[12][6] ), .B(\REG_FILE[13][6] ), .C(
        \REG_FILE[14][6] ), .D(\REG_FILE[15][6] ), .S0(n204), .S1(n201), .Y(
        n192) );
  MX4X1M U244 ( .A(\REG_FILE[12][7] ), .B(\REG_FILE[13][7] ), .C(
        \REG_FILE[14][7] ), .D(\REG_FILE[15][7] ), .S0(n204), .S1(n201), .Y(
        n196) );
  MX4X1M U245 ( .A(\REG_FILE[4][1] ), .B(\REG_FILE[5][1] ), .C(
        \REG_FILE[6][1] ), .D(\REG_FILE[7][1] ), .S0(n202), .S1(n200), .Y(n9)
         );
  AO22X1M U246 ( .A0(N42), .A1(n255), .B0(Rd_DATA[1]), .B1(n237), .Y(n44) );
  MX4XLM U247 ( .A(n10), .B(n8), .C(n9), .D(n7), .S0(N14), .S1(N13), .Y(N42)
         );
  MX4X1M U248 ( .A(\REG_FILE[8][1] ), .B(\REG_FILE[9][1] ), .C(
        \REG_FILE[10][1] ), .D(\REG_FILE[11][1] ), .S0(n202), .S1(N12), .Y(n8)
         );
  MX4X1M U249 ( .A(\REG_FILE[12][1] ), .B(\REG_FILE[13][1] ), .C(
        \REG_FILE[14][1] ), .D(\REG_FILE[15][1] ), .S0(n202), .S1(n200), .Y(n7) );
  AO22X1M U250 ( .A0(N41), .A1(n255), .B0(Rd_DATA[2]), .B1(n237), .Y(n45) );
  MX4XLM U251 ( .A(n179), .B(n12), .C(n13), .D(n11), .S0(N14), .S1(N13), .Y(
        N41) );
  MX4X1M U252 ( .A(\REG_FILE[8][2] ), .B(\REG_FILE[9][2] ), .C(
        \REG_FILE[10][2] ), .D(\REG_FILE[11][2] ), .S0(n203), .S1(n200), .Y(
        n12) );
  AO22X1M U253 ( .A0(N40), .A1(n255), .B0(Rd_DATA[3]), .B1(n237), .Y(n46) );
  MX4XLM U254 ( .A(n183), .B(n181), .C(n182), .D(n180), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4XLM U255 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n203), 
        .S1(n200), .Y(n183) );
  MX4X1M U256 ( .A(\REG_FILE[8][3] ), .B(\REG_FILE[9][3] ), .C(
        \REG_FILE[10][3] ), .D(\REG_FILE[11][3] ), .S0(n203), .S1(n200), .Y(
        n181) );
  AO22X1M U257 ( .A0(N39), .A1(n255), .B0(Rd_DATA[4]), .B1(n237), .Y(n47) );
  MX4XLM U258 ( .A(n187), .B(n185), .C(n186), .D(n184), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U259 ( .A(\REG_FILE[8][4] ), .B(\REG_FILE[9][4] ), .C(
        \REG_FILE[10][4] ), .D(\REG_FILE[11][4] ), .S0(n203), .S1(n200), .Y(
        n185) );
  AO22X1M U260 ( .A0(N38), .A1(n255), .B0(Rd_DATA[5]), .B1(n237), .Y(n48) );
  MX4XLM U261 ( .A(n191), .B(n189), .C(n190), .D(n188), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U262 ( .A(\REG_FILE[8][5] ), .B(\REG_FILE[9][5] ), .C(
        \REG_FILE[10][5] ), .D(\REG_FILE[11][5] ), .S0(n204), .S1(n201), .Y(
        n189) );
  AO22X1M U263 ( .A0(N37), .A1(n255), .B0(Rd_DATA[6]), .B1(n237), .Y(n49) );
  MX4XLM U264 ( .A(n195), .B(n193), .C(n194), .D(n192), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U265 ( .A(\REG_FILE[8][6] ), .B(\REG_FILE[9][6] ), .C(
        \REG_FILE[10][6] ), .D(\REG_FILE[11][6] ), .S0(n204), .S1(n201), .Y(
        n193) );
  AO22X1M U266 ( .A0(N36), .A1(n255), .B0(Rd_DATA[7]), .B1(n237), .Y(n50) );
  MX4XLM U267 ( .A(n199), .B(n197), .C(n198), .D(n196), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U268 ( .A(\REG_FILE[8][7] ), .B(\REG_FILE[9][7] ), .C(
        \REG_FILE[10][7] ), .D(\REG_FILE[11][7] ), .S0(n204), .S1(n201), .Y(
        n197) );
  MX4X1M U269 ( .A(\REG_FILE[4][0] ), .B(\REG_FILE[5][0] ), .C(
        \REG_FILE[6][0] ), .D(\REG_FILE[7][0] ), .S0(n202), .S1(N12), .Y(n5)
         );
  MX4X1M U270 ( .A(\REG_FILE[12][0] ), .B(\REG_FILE[13][0] ), .C(
        \REG_FILE[14][0] ), .D(\REG_FILE[15][0] ), .S0(n202), .S1(n200), .Y(n3) );
  AO22X1M U271 ( .A0(N43), .A1(n255), .B0(Rd_DATA[0]), .B1(n237), .Y(n43) );
  MX4XLM U272 ( .A(n6), .B(n4), .C(n5), .D(n3), .S0(N14), .S1(N13), .Y(N43) );
  MX4X1M U273 ( .A(\REG_FILE[8][0] ), .B(\REG_FILE[9][0] ), .C(
        \REG_FILE[10][0] ), .D(\REG_FILE[11][0] ), .S0(n202), .S1(N12), .Y(n4)
         );
  AO21XLM U274 ( .A0(Rd_DATA_VLD), .A1(n14), .B0(n255), .Y(n42) );
endmodule


module ALU_OUT_WD16_DATA_WD8_FUN_WD4_DW_div_uns_0 ( a, b, quotient, remainder, 
        divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n27, n28, n29, \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] ,
         \u_div/SumTmp[1][2] , \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] ,
         \u_div/SumTmp[1][5] , \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] ,
         \u_div/SumTmp[2][1] , \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] ,
         \u_div/SumTmp[2][4] , \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] ,
         \u_div/SumTmp[3][1] , \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] ,
         \u_div/SumTmp[3][4] , \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] ,
         \u_div/SumTmp[4][2] , \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] ,
         \u_div/SumTmp[5][1] , \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] ,
         \u_div/SumTmp[6][1] , \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] ,
         \u_div/CryTmp[0][2] , \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] ,
         \u_div/CryTmp[0][5] , \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] ,
         \u_div/CryTmp[1][1] , \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] ,
         \u_div/CryTmp[1][4] , \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] ,
         \u_div/CryTmp[1][7] , \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] ,
         \u_div/CryTmp[2][3] , \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] ,
         \u_div/CryTmp[2][6] , \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] ,
         \u_div/CryTmp[3][3] , \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] ,
         \u_div/CryTmp[4][1] , \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] ,
         \u_div/CryTmp[4][4] , \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] ,
         \u_div/CryTmp[5][3] , \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] ,
         \u_div/CryTmp[7][1] , \u_div/PartRem[1][1] , \u_div/PartRem[1][2] ,
         \u_div/PartRem[1][3] , \u_div/PartRem[1][4] , \u_div/PartRem[1][5] ,
         \u_div/PartRem[1][6] , \u_div/PartRem[1][7] , \u_div/PartRem[2][1] ,
         \u_div/PartRem[2][2] , \u_div/PartRem[2][3] , \u_div/PartRem[2][4] ,
         \u_div/PartRem[2][5] , \u_div/PartRem[2][6] , \u_div/PartRem[3][1] ,
         \u_div/PartRem[3][2] , \u_div/PartRem[3][3] , \u_div/PartRem[3][4] ,
         \u_div/PartRem[3][5] , \u_div/PartRem[4][1] , \u_div/PartRem[4][2] ,
         \u_div/PartRem[4][3] , \u_div/PartRem[4][4] , \u_div/PartRem[5][1] ,
         \u_div/PartRem[5][2] , \u_div/PartRem[5][3] , \u_div/PartRem[6][1] ,
         \u_div/PartRem[6][2] , \u_div/PartRem[7][1] , n2, n3, n4, n5, n6, n7,
         n8, n9, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26;

  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n20), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n22), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n22), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n22), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n20), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n20), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n17), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n17), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n21), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n20), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n22), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n18), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n21), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n21), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n19), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n19), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n19), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n20), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n22), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n21), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/CryTmp[0][1] ), .B(n22), .CI(
        \u_div/PartRem[1][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n16), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n22), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_2  ( .A(n2), .B(n21), .CI(
        \u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n21), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n19), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n18), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n18), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  AND3X6M U1 ( .A(n26), .B(n18), .C(\u_div/CryTmp[3][5] ), .Y(n29) );
  INVX10M U2 ( .A(b[5]), .Y(n18) );
  AND2X12M U3 ( .A(\u_div/CryTmp[5][3] ), .B(n24), .Y(n27) );
  NAND2X12M U4 ( .A(n24), .B(n5), .Y(n13) );
  NAND2X12M U5 ( .A(n24), .B(n7), .Y(n6) );
  CLKAND2X16M U6 ( .A(n25), .B(n20), .Y(n24) );
  BUFX16M U7 ( .A(\u_div/PartRem[2][2] ), .Y(n2) );
  BUFX32M U8 ( .A(n29), .Y(quotient[3]) );
  MX2X8M U9 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  MX2XLM U10 ( .A(n2), .B(\u_div/SumTmp[1][2] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][3] ) );
  MX2XLM U11 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  MX2X12M U12 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  BUFX32M U13 ( .A(n8), .Y(n4) );
  CLKINVX20M U14 ( .A(n23), .Y(n8) );
  MX2X8M U15 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  AND2X12M U16 ( .A(\u_div/CryTmp[1][7] ), .B(n16), .Y(quotient[1]) );
  INVX8M U17 ( .A(n4), .Y(n9) );
  AND3X6M U18 ( .A(\u_div/CryTmp[7][1] ), .B(n21), .C(n22), .Y(n7) );
  BUFX14M U19 ( .A(n28), .Y(quotient[4]) );
  MX2X1M U20 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X4M U21 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  MX2X2M U22 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2X2M U23 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  MX2X2M U24 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  MX2X1M U25 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  INVX10M U26 ( .A(b[4]), .Y(n19) );
  AND2X8M U27 ( .A(\u_div/SumTmp[7][0] ), .B(n7), .Y(n5) );
  XNOR2X2M U28 ( .A(n23), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  INVX4M U29 ( .A(n4), .Y(n3) );
  INVXLM U30 ( .A(n6), .Y(quotient[7]) );
  NAND2X12M U31 ( .A(a[7]), .B(n6), .Y(n12) );
  NAND2X12M U32 ( .A(n12), .B(n13), .Y(\u_div/PartRem[7][1] ) );
  MX2X4M U33 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  BUFX10M U34 ( .A(n27), .Y(quotient[5]) );
  AND2X8M U35 ( .A(\u_div/CryTmp[4][4] ), .B(n25), .Y(n28) );
  INVX32M U36 ( .A(b[0]), .Y(n23) );
  AND2X8M U37 ( .A(\u_div/CryTmp[6][2] ), .B(n14), .Y(quotient[6]) );
  INVX32M U38 ( .A(b[1]), .Y(n22) );
  NOR2X12M U39 ( .A(b[6]), .B(b[7]), .Y(n26) );
  INVX32M U40 ( .A(b[3]), .Y(n20) );
  MX2X1M U41 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  AND2X1M U42 ( .A(n24), .B(n21), .Y(n14) );
  MX2X1M U43 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2X1M U44 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  XNOR2X1M U45 ( .A(n9), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X1M U46 ( .A(n3), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X1M U47 ( .A(n3), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X1M U48 ( .A(n3), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X1M U49 ( .A(n9), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  OR2X1M U50 ( .A(a[5]), .B(n9), .Y(\u_div/CryTmp[5][1] ) );
  OR2X1M U51 ( .A(a[3]), .B(n3), .Y(\u_div/CryTmp[3][1] ) );
  OR2X1M U52 ( .A(a[2]), .B(n3), .Y(\u_div/CryTmp[2][1] ) );
  OR2X1M U53 ( .A(a[1]), .B(n3), .Y(\u_div/CryTmp[1][1] ) );
  XNOR2X1M U54 ( .A(n3), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  OR2X1M U55 ( .A(a[6]), .B(n9), .Y(\u_div/CryTmp[6][1] ) );
  INVXLM U56 ( .A(n3), .Y(n15) );
  INVX32M U57 ( .A(b[2]), .Y(n21) );
  AND3X12M U58 ( .A(n26), .B(n19), .C(n18), .Y(n25) );
  AND2X12M U59 ( .A(\u_div/CryTmp[2][6] ), .B(n26), .Y(quotient[2]) );
  MX2X2M U60 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  OR2X2M U61 ( .A(a[7]), .B(n23), .Y(\u_div/CryTmp[7][1] ) );
  OR2X2M U62 ( .A(a[4]), .B(n3), .Y(\u_div/CryTmp[4][1] ) );
  NAND2BX2M U63 ( .AN(a[0]), .B(n15), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U64 ( .A(b[6]), .Y(n17) );
  INVX2M U65 ( .A(b[7]), .Y(n16) );
  MX2X1M U66 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  MX2X1M U67 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  MX2X1M U68 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  MX2X1M U69 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  MX2X1M U70 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  MX2X1M U71 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  MX2X1M U72 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  MX2X1M U73 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  MX2X1M U74 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  MX2X1M U75 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2X1M U76 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
endmodule


module ALU_OUT_WD16_DATA_WD8_FUN_WD4_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [9:0] carry;

  ADDFX2M U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n1), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  INVXLM U1 ( .A(B[2]), .Y(n6) );
  INVXLM U2 ( .A(B[3]), .Y(n5) );
  CLKINVX1M U3 ( .A(B[0]), .Y(n8) );
  INVX2M U4 ( .A(B[4]), .Y(n4) );
  INVX2M U5 ( .A(B[5]), .Y(n3) );
  INVX2M U6 ( .A(B[6]), .Y(n2) );
  INVX2M U7 ( .A(B[1]), .Y(n7) );
  OR2X2M U8 ( .A(A[0]), .B(n8), .Y(carry[1]) );
  INVX2M U9 ( .A(B[7]), .Y(n1) );
  XNOR2X2M U10 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1M U11 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_OUT_WD16_DATA_WD8_FUN_WD4_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  AND2X1M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_OUT_WD16_DATA_WD8_FUN_WD4_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26;

  OAI21BX4M U2 ( .A0(n19), .A1(n20), .B0N(n21), .Y(n17) );
  AOI2BB1X2M U3 ( .A0N(n8), .A1N(n11), .B0(n10), .Y(n24) );
  OAI2BB1XLM U4 ( .A0N(n17), .A1N(A[12]), .B0(n18), .Y(n16) );
  NOR2X2M U5 ( .A(B[11]), .B(A[11]), .Y(n19) );
  NOR2X2M U6 ( .A(B[8]), .B(A[8]), .Y(n14) );
  NOR2X2M U7 ( .A(B[9]), .B(A[9]), .Y(n11) );
  NOR2X2M U8 ( .A(B[10]), .B(A[10]), .Y(n23) );
  NAND2X2M U9 ( .A(A[7]), .B(B[7]), .Y(n13) );
  INVX2M U10 ( .A(A[6]), .Y(n7) );
  CLKXOR2X2M U11 ( .A(B[13]), .B(n16), .Y(SUM[13]) );
  INVX2M U12 ( .A(n7), .Y(SUM[6]) );
  CLKXOR2X2M U13 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  BUFX2M U14 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U15 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U16 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U17 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U18 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U19 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U20 ( .A(n8), .B(n9), .Y(SUM[9]) );
  NOR2X1M U21 ( .A(n10), .B(n11), .Y(n9) );
  CLKXOR2X2M U22 ( .A(n12), .B(n13), .Y(SUM[8]) );
  NAND2BX1M U23 ( .AN(n14), .B(n15), .Y(n12) );
  OAI21X1M U24 ( .A0(A[12]), .A1(n17), .B0(B[12]), .Y(n18) );
  XOR3XLM U25 ( .A(B[12]), .B(A[12]), .C(n17), .Y(SUM[12]) );
  XNOR2X1M U26 ( .A(n20), .B(n22), .Y(SUM[11]) );
  NOR2X1M U27 ( .A(n21), .B(n19), .Y(n22) );
  AND2X1M U28 ( .A(B[11]), .B(A[11]), .Y(n21) );
  OA21X1M U29 ( .A0(n23), .A1(n24), .B0(n25), .Y(n20) );
  CLKXOR2X2M U30 ( .A(n26), .B(n24), .Y(SUM[10]) );
  AND2X1M U31 ( .A(B[9]), .B(A[9]), .Y(n10) );
  OA21X1M U32 ( .A0(n13), .A1(n14), .B0(n15), .Y(n8) );
  CLKNAND2X2M U33 ( .A(B[8]), .B(A[8]), .Y(n15) );
  NAND2BX1M U34 ( .AN(n23), .B(n25), .Y(n26) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n25) );
endmodule


module ALU_OUT_WD16_DATA_WD8_FUN_WD4_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32;

  ALU_OUT_WD16_DATA_WD8_FUN_WD4_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , 
        \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , 
        \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n12, n11, n16, n15, n13, 
        n14, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n7), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n4), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n6), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n5), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  NOR2X2M U10 ( .A(n28), .B(n24), .Y(\ab[0][4] ) );
  NOR2X2M U11 ( .A(n25), .B(n24), .Y(\ab[0][7] ) );
  NOR2X2M U12 ( .A(n27), .B(n24), .Y(\ab[0][5] ) );
  NOR2X2M U13 ( .A(n26), .B(n24), .Y(\ab[0][6] ) );
  NOR2X2M U14 ( .A(n31), .B(n24), .Y(\ab[0][1] ) );
  NOR2X2M U15 ( .A(n26), .B(n23), .Y(\ab[1][6] ) );
  NOR2X2M U16 ( .A(n28), .B(n23), .Y(\ab[1][4] ) );
  NOR2X2M U17 ( .A(n27), .B(n23), .Y(\ab[1][5] ) );
  NOR2X2M U18 ( .A(n31), .B(n23), .Y(\ab[1][1] ) );
  NOR2X2M U19 ( .A(n17), .B(n25), .Y(\ab[7][7] ) );
  CLKXOR2X2M U20 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  NOR2X2M U21 ( .A(n29), .B(n24), .Y(\ab[0][3] ) );
  NOR2X2M U22 ( .A(n29), .B(n23), .Y(\ab[1][3] ) );
  NOR2X2M U23 ( .A(n30), .B(n23), .Y(\ab[1][2] ) );
  NOR2X2M U24 ( .A(n30), .B(n24), .Y(\ab[0][2] ) );
  NOR2X2M U25 ( .A(n32), .B(n23), .Y(\ab[1][0] ) );
  CLKINVX4M U26 ( .A(A[4]), .Y(n20) );
  CLKINVX4M U27 ( .A(A[5]), .Y(n19) );
  CLKINVX4M U28 ( .A(A[7]), .Y(n17) );
  CLKINVX4M U29 ( .A(B[3]), .Y(n29) );
  CLKINVX4M U30 ( .A(B[2]), .Y(n30) );
  CLKINVX4M U31 ( .A(B[0]), .Y(n32) );
  CLKXOR2X2M U32 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U33 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  AND2X2M U34 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n11) );
  CLKXOR2X2M U35 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  AND2X2M U36 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n12) );
  AND2X2M U37 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n13) );
  CLKXOR2X2M U38 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  XOR2X1M U39 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  CLKXOR2X2M U40 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U41 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  INVX4M U42 ( .A(A[1]), .Y(n23) );
  AND2X2M U43 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n14) );
  XOR2X1M U44 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1M U45 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  AND2X2M U46 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  INVX4M U47 ( .A(A[2]), .Y(n22) );
  INVX4M U48 ( .A(A[3]), .Y(n21) );
  INVX4M U49 ( .A(A[6]), .Y(n18) );
  AND2X2M U50 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n16) );
  CLKXOR2X2M U51 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  XOR2X1M U52 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1M U53 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  INVX4M U54 ( .A(B[6]), .Y(n26) );
  INVX4M U55 ( .A(B[7]), .Y(n25) );
  INVX4M U56 ( .A(B[4]), .Y(n28) );
  INVX4M U57 ( .A(B[5]), .Y(n27) );
  INVX4M U58 ( .A(A[0]), .Y(n24) );
  XOR2X1M U59 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  INVX4M U60 ( .A(B[1]), .Y(n31) );
  NOR2X1M U62 ( .A(n17), .B(n26), .Y(\ab[7][6] ) );
  NOR2X1M U63 ( .A(n17), .B(n27), .Y(\ab[7][5] ) );
  NOR2X1M U64 ( .A(n17), .B(n28), .Y(\ab[7][4] ) );
  NOR2X1M U65 ( .A(n17), .B(n29), .Y(\ab[7][3] ) );
  NOR2X1M U66 ( .A(n17), .B(n30), .Y(\ab[7][2] ) );
  NOR2X1M U67 ( .A(n17), .B(n31), .Y(\ab[7][1] ) );
  NOR2X1M U68 ( .A(n17), .B(n32), .Y(\ab[7][0] ) );
  NOR2X1M U69 ( .A(n25), .B(n18), .Y(\ab[6][7] ) );
  NOR2X1M U70 ( .A(n26), .B(n18), .Y(\ab[6][6] ) );
  NOR2X1M U71 ( .A(n27), .B(n18), .Y(\ab[6][5] ) );
  NOR2X1M U72 ( .A(n28), .B(n18), .Y(\ab[6][4] ) );
  NOR2X1M U73 ( .A(n29), .B(n18), .Y(\ab[6][3] ) );
  NOR2X1M U74 ( .A(n30), .B(n18), .Y(\ab[6][2] ) );
  NOR2X1M U75 ( .A(n31), .B(n18), .Y(\ab[6][1] ) );
  NOR2X1M U76 ( .A(n32), .B(n18), .Y(\ab[6][0] ) );
  NOR2X1M U77 ( .A(n25), .B(n19), .Y(\ab[5][7] ) );
  NOR2X1M U78 ( .A(n26), .B(n19), .Y(\ab[5][6] ) );
  NOR2X1M U79 ( .A(n27), .B(n19), .Y(\ab[5][5] ) );
  NOR2X1M U80 ( .A(n28), .B(n19), .Y(\ab[5][4] ) );
  NOR2X1M U81 ( .A(n29), .B(n19), .Y(\ab[5][3] ) );
  NOR2X1M U82 ( .A(n30), .B(n19), .Y(\ab[5][2] ) );
  NOR2X1M U83 ( .A(n31), .B(n19), .Y(\ab[5][1] ) );
  NOR2X1M U84 ( .A(n32), .B(n19), .Y(\ab[5][0] ) );
  NOR2X1M U85 ( .A(n25), .B(n20), .Y(\ab[4][7] ) );
  NOR2X1M U86 ( .A(n26), .B(n20), .Y(\ab[4][6] ) );
  NOR2X1M U87 ( .A(n27), .B(n20), .Y(\ab[4][5] ) );
  NOR2X1M U88 ( .A(n28), .B(n20), .Y(\ab[4][4] ) );
  NOR2X1M U89 ( .A(n29), .B(n20), .Y(\ab[4][3] ) );
  NOR2X1M U90 ( .A(n30), .B(n20), .Y(\ab[4][2] ) );
  NOR2X1M U91 ( .A(n31), .B(n20), .Y(\ab[4][1] ) );
  NOR2X1M U92 ( .A(n32), .B(n20), .Y(\ab[4][0] ) );
  NOR2X1M U93 ( .A(n25), .B(n21), .Y(\ab[3][7] ) );
  NOR2X1M U94 ( .A(n26), .B(n21), .Y(\ab[3][6] ) );
  NOR2X1M U95 ( .A(n27), .B(n21), .Y(\ab[3][5] ) );
  NOR2X1M U96 ( .A(n28), .B(n21), .Y(\ab[3][4] ) );
  NOR2X1M U97 ( .A(n29), .B(n21), .Y(\ab[3][3] ) );
  NOR2X1M U98 ( .A(n30), .B(n21), .Y(\ab[3][2] ) );
  NOR2X1M U99 ( .A(n31), .B(n21), .Y(\ab[3][1] ) );
  NOR2X1M U100 ( .A(n32), .B(n21), .Y(\ab[3][0] ) );
  NOR2X1M U101 ( .A(n25), .B(n22), .Y(\ab[2][7] ) );
  NOR2X1M U102 ( .A(n26), .B(n22), .Y(\ab[2][6] ) );
  NOR2X1M U103 ( .A(n27), .B(n22), .Y(\ab[2][5] ) );
  NOR2X1M U104 ( .A(n28), .B(n22), .Y(\ab[2][4] ) );
  NOR2X1M U105 ( .A(n29), .B(n22), .Y(\ab[2][3] ) );
  NOR2X1M U106 ( .A(n30), .B(n22), .Y(\ab[2][2] ) );
  NOR2X1M U107 ( .A(n31), .B(n22), .Y(\ab[2][1] ) );
  NOR2X1M U108 ( .A(n32), .B(n22), .Y(\ab[2][0] ) );
  NOR2X1M U109 ( .A(n25), .B(n23), .Y(\ab[1][7] ) );
  NOR2X1M U110 ( .A(n32), .B(n24), .Y(PRODUCT[0]) );
endmodule


module ALU_OUT_WD16_DATA_WD8_FUN_WD4 ( A, B, ALU_FUN, CLK, RST, ENABLE, 
        ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, ENABLE;
  output OUT_VALID;
  wire   N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N126,
         N127, N128, N129, N130, N131, N132, N133, N166, N168, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206;

  ALU_OUT_WD16_DATA_WD8_FUN_WD4_DW_div_uns_0 div_29 ( .a({A[7:6], n25, n22, 
        n19, n16, n13, n11}), .b({n10, n3, n8, n7, B[3:2], n6, B[0]}), 
        .quotient({N133, N132, N131, N130, N129, N128, N127, N126}) );
  ALU_OUT_WD16_DATA_WD8_FUN_WD4_DW01_sub_0 sub_21 ( .A({1'b0, n29, A[6], n25, 
        n22, n19, n16, n13, n11}), .B({1'b0, n10, n4, n8, n7, B[3:2], n6, B[0]}), .CI(1'b0), .DIFF({N107, N106, N105, N104, N103, N102, N101, N100, N99}) );
  ALU_OUT_WD16_DATA_WD8_FUN_WD4_DW01_add_0 add_18 ( .A({1'b0, A[7:6], n25, n22, 
        n19, n16, n13, n11}), .B({1'b0, n10, n5, n8, n7, B[3:2], n6, B[0]}), 
        .CI(1'b0), .SUM({N98, N97, N96, N95, N94, N93, N92, N91, N90}) );
  ALU_OUT_WD16_DATA_WD8_FUN_WD4_DW02_mult_0 mult_24 ( .A({n29, n27, n25, n22, 
        n19, n16, n13, n11}), .B({n10, n4, n8, n7, B[3:2], n6, B[0]}), .TC(
        1'b0), .PRODUCT({N123, N122, N121, N120, N119, N118, N117, N116, N115, 
        N114, N113, N112, N111, N110, N109, N108}) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(n146), .CK(CLK), .RN(n35), .Q(ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(n145), .CK(CLK), .RN(n35), .Q(ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(n144), .CK(CLK), .RN(n35), .Q(ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(n143), .CK(CLK), .RN(n36), .Q(ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(n142), .CK(CLK), .RN(n36), .Q(ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(n141), .CK(CLK), .RN(n36), .Q(ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(n140), .CK(CLK), .RN(n36), .Q(ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(n177), .CK(CLK), .RN(n35), .Q(ALU_OUT[15])
         );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(n178), .CK(CLK), .RN(n35), .Q(ALU_OUT[14])
         );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(n179), .CK(CLK), .RN(n35), .Q(ALU_OUT[13])
         );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(n180), .CK(CLK), .RN(n35), .Q(ALU_OUT[12])
         );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(n181), .CK(CLK), .RN(n35), .Q(ALU_OUT[11])
         );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(n182), .CK(CLK), .RN(n35), .Q(ALU_OUT[10])
         );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(n183), .CK(CLK), .RN(n35), .Q(ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(n147), .CK(CLK), .RN(n35), .Q(ALU_OUT[8]) );
  DFFRQX2M OUT_VALID_reg ( .D(n148), .CK(CLK), .RN(n35), .Q(OUT_VALID) );
  DFFRQX1M \ALU_OUT_reg[0]  ( .D(n139), .CK(CLK), .RN(n36), .Q(ALU_OUT[0]) );
  CLKINVX2M U3 ( .A(B[0]), .Y(n167) );
  BUFX32M U4 ( .A(n9), .Y(n3) );
  BUFX2M U5 ( .A(n9), .Y(n4) );
  BUFX2M U8 ( .A(n9), .Y(n5) );
  BUFX32M U9 ( .A(B[6]), .Y(n9) );
  CLKBUFX20M U10 ( .A(B[1]), .Y(n6) );
  BUFX32M U11 ( .A(B[4]), .Y(n7) );
  BUFX32M U12 ( .A(B[5]), .Y(n8) );
  OAI2BB1X2M U13 ( .A0N(n119), .A1N(n129), .B0(n125), .Y(n61) );
  INVX2M U14 ( .A(A[6]), .Y(n26) );
  OAI2BB2X1M U15 ( .B0(n63), .B1(n32), .A0N(ALU_OUT[1]), .A1N(n33), .Y(n140)
         );
  INVX2M U16 ( .A(A[5]), .Y(n24) );
  INVX1M U17 ( .A(A[7]), .Y(n28) );
  AOI2B1X1M U18 ( .A1N(n165), .A0(n164), .B0(n163), .Y(n166) );
  INVX2M U19 ( .A(n166), .Y(n176) );
  INVX2M U20 ( .A(B[3]), .Y(n169) );
  INVX2M U21 ( .A(B[2]), .Y(n168) );
  AOI222X2M U22 ( .A0(B[3]), .A1(n89), .B0(N129), .B1(n54), .C0(n90), .C1(n169), .Y(n88) );
  XNOR2X4M U23 ( .A(n27), .B(n5), .Y(n160) );
  AOI222X2M U24 ( .A0(B[2]), .A1(n82), .B0(N128), .B1(n54), .C0(n83), .C1(n168), .Y(n81) );
  AOI222X2M U25 ( .A0(n8), .A1(n103), .B0(N131), .B1(n54), .C0(n104), .C1(n192), .Y(n102) );
  AOI211X2M U26 ( .A0(n151), .A1(n172), .B0(n150), .C0(n149), .Y(n152) );
  NAND2BX2M U27 ( .AN(n41), .B(n155), .Y(n150) );
  OAI21X2M U28 ( .A0(n163), .A1(n45), .B0(n164), .Y(N168) );
  AOI222X2M U29 ( .A0(n7), .A1(n96), .B0(N130), .B1(n54), .C0(n97), .C1(n193), 
        .Y(n95) );
  OAI31X2M U30 ( .A0(n153), .A1(n41), .A2(n40), .B0(n154), .Y(n43) );
  AOI211X2M U31 ( .A0(n14), .A1(n171), .B0(n150), .C0(n39), .Y(n40) );
  AOI222X2M U32 ( .A0(n4), .A1(n110), .B0(N132), .B1(n54), .C0(n111), .C1(n170), .Y(n109) );
  AOI211X4M U33 ( .A0(N126), .A1(n54), .B0(n55), .C0(n56), .Y(n48) );
  BUFX32M U34 ( .A(B[7]), .Y(n10) );
  NOR2X2M U35 ( .A(n168), .B(n17), .Y(n41) );
  NOR2X2M U36 ( .A(n167), .B(n11), .Y(n38) );
  NOR2X2M U37 ( .A(n169), .B(n20), .Y(n153) );
  OAI2BB2X1M U38 ( .B0(n77), .B1(n32), .A0N(ALU_OUT[2]), .A1N(n33), .Y(n141)
         );
  INVX2M U39 ( .A(A[4]), .Y(n21) );
  INVX2M U40 ( .A(A[3]), .Y(n18) );
  NAND2X4M U41 ( .A(n124), .B(n129), .Y(n68) );
  NAND2X4M U42 ( .A(n119), .B(n76), .Y(n69) );
  NOR2X4M U43 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  NOR2X4M U44 ( .A(n206), .B(ALU_FUN[3]), .Y(n119) );
  NOR2X4M U45 ( .A(ALU_FUN[3]), .B(ALU_FUN[0]), .Y(n124) );
  NOR2X4M U46 ( .A(n204), .B(ALU_FUN[1]), .Y(n76) );
  BUFX6M U47 ( .A(n73), .Y(n31) );
  CLKINVX2M U48 ( .A(n22), .Y(n186) );
  INVXLM U49 ( .A(n27), .Y(n174) );
  NOR2X2M U50 ( .A(n175), .B(n10), .Y(n163) );
  AO22X4M U51 ( .A0(ALU_OUT[0]), .A1(n32), .B0(ENABLE), .B1(n46), .Y(n139) );
  NAND4BX4M U52 ( .AN(n47), .B(n48), .C(n49), .D(n50), .Y(n46) );
  BUFX6M U53 ( .A(A[0]), .Y(n11) );
  INVX4M U54 ( .A(n61), .Y(n199) );
  INVX4M U55 ( .A(n62), .Y(n198) );
  INVX6M U56 ( .A(n68), .Y(n197) );
  INVX4M U57 ( .A(n69), .Y(n200) );
  OAI2BB1X2M U58 ( .A0N(n76), .A1N(n124), .B0(n125), .Y(n62) );
  NOR2X4M U59 ( .A(n205), .B(n204), .Y(n129) );
  INVX4M U60 ( .A(n127), .Y(n184) );
  CLKAND2X6M U61 ( .A(n123), .B(n119), .Y(n52) );
  INVX2M U62 ( .A(n31), .Y(n202) );
  INVX4M U63 ( .A(n72), .Y(n201) );
  CLKAND2X6M U64 ( .A(n123), .B(n124), .Y(n53) );
  INVX4M U65 ( .A(n60), .Y(n203) );
  INVX8M U66 ( .A(n34), .Y(n32) );
  INVX6M U67 ( .A(n34), .Y(n33) );
  AND4X1M U68 ( .A(N168), .B(ALU_FUN[3]), .C(n76), .D(n206), .Y(n55) );
  INVX2M U69 ( .A(n14), .Y(n172) );
  AOI222X2M U70 ( .A0(N114), .A1(n30), .B0(n197), .B1(n26), .C0(n27), .C1(n200), .Y(n107) );
  AOI22X1M U71 ( .A0(n29), .A1(n200), .B0(N115), .B1(n30), .Y(n114) );
  INVX2M U72 ( .A(ALU_FUN[0]), .Y(n206) );
  INVX2M U73 ( .A(ALU_FUN[2]), .Y(n204) );
  NAND3X2M U74 ( .A(ALU_FUN[0]), .B(ALU_FUN[3]), .C(n123), .Y(n125) );
  INVX2M U75 ( .A(ALU_FUN[1]), .Y(n205) );
  NAND3X2M U76 ( .A(ALU_FUN[3]), .B(n206), .C(n123), .Y(n73) );
  AOI222X2M U77 ( .A0(N110), .A1(n30), .B0(n197), .B1(n188), .C0(n17), .C1(
        n200), .Y(n79) );
  AOI222X2M U78 ( .A0(N111), .A1(n30), .B0(n197), .B1(n187), .C0(n20), .C1(
        n200), .Y(n86) );
  AOI222X2M U79 ( .A0(N112), .A1(n30), .B0(n197), .B1(n186), .C0(n23), .C1(
        n200), .Y(n93) );
  AOI222X2M U80 ( .A0(N113), .A1(n30), .B0(n197), .B1(n24), .C0(A[5]), .C1(
        n200), .Y(n100) );
  OAI21X4M U81 ( .A0(n61), .A1(n138), .B0(ENABLE), .Y(n127) );
  AO21XLM U82 ( .A0(N107), .A1(n52), .B0(n197), .Y(n138) );
  INVX2M U83 ( .A(ALU_FUN[3]), .Y(n196) );
  CLKBUFX6M U84 ( .A(n51), .Y(n30) );
  AND3X2M U85 ( .A(n124), .B(ALU_FUN[1]), .C(n204), .Y(n51) );
  INVX2M U86 ( .A(n29), .Y(n175) );
  NAND3X2M U87 ( .A(ALU_FUN[3]), .B(n76), .C(ALU_FUN[0]), .Y(n60) );
  NAND3X2M U88 ( .A(ALU_FUN[3]), .B(n206), .C(n129), .Y(n72) );
  CLKAND2X4M U89 ( .A(n30), .B(ENABLE), .Y(n131) );
  INVX2M U90 ( .A(n14), .Y(n189) );
  INVX2M U91 ( .A(n17), .Y(n188) );
  INVX2M U92 ( .A(n19), .Y(n187) );
  INVX2M U93 ( .A(n195), .Y(n34) );
  INVX2M U94 ( .A(ENABLE), .Y(n195) );
  INVX2M U95 ( .A(n29), .Y(n185) );
  INVX6M U96 ( .A(n37), .Y(n35) );
  INVX4M U97 ( .A(n37), .Y(n36) );
  NOR4X2M U98 ( .A(n57), .B(n196), .C(ALU_FUN[2]), .D(ALU_FUN[0]), .Y(n56) );
  NAND2X2M U99 ( .A(N166), .B(ALU_FUN[1]), .Y(n57) );
  AOI31X2M U100 ( .A0(n176), .A1(ALU_FUN[0]), .A2(n75), .B0(n55), .Y(n74) );
  NOR3X2M U101 ( .A(n205), .B(ALU_FUN[2]), .C(n196), .Y(n75) );
  INVX4M U102 ( .A(n24), .Y(n25) );
  INVX4M U103 ( .A(n12), .Y(n13) );
  INVX4M U104 ( .A(n18), .Y(n19) );
  INVX4M U105 ( .A(n21), .Y(n22) );
  INVX4M U106 ( .A(n15), .Y(n16) );
  INVX2M U107 ( .A(n7), .Y(n193) );
  OAI221X1M U108 ( .A0(n198), .A1(n186), .B0(n23), .B1(n31), .C0(n69), .Y(n96)
         );
  OAI221X1M U109 ( .A0(n23), .A1(n199), .B0(n31), .B1(n186), .C0(n68), .Y(n97)
         );
  INVX2M U110 ( .A(n5), .Y(n170) );
  INVXLM U111 ( .A(n38), .Y(n171) );
  INVXLM U112 ( .A(n152), .Y(n173) );
  INVX2M U113 ( .A(n8), .Y(n192) );
  OAI221X1M U114 ( .A0(n198), .A1(n24), .B0(A[5]), .B1(n31), .C0(n69), .Y(n103) );
  OAI221X1M U115 ( .A0(A[5]), .A1(n199), .B0(n31), .B1(n24), .C0(n68), .Y(n104) );
  INVX4M U116 ( .A(n12), .Y(n14) );
  INVX4M U117 ( .A(n15), .Y(n17) );
  INVX4M U118 ( .A(n18), .Y(n20) );
  INVX4M U119 ( .A(n21), .Y(n23) );
  OAI221X1M U120 ( .A0(n198), .A1(n26), .B0(n27), .B1(n31), .C0(n69), .Y(n110)
         );
  OAI221X1M U121 ( .A0(n27), .A1(n199), .B0(n31), .B1(n26), .C0(n68), .Y(n111)
         );
  AOI222X2M U122 ( .A0(n10), .A1(n117), .B0(N133), .B1(n54), .C0(n118), .C1(
        n191), .Y(n116) );
  INVX2M U123 ( .A(n10), .Y(n191) );
  OAI221X1M U124 ( .A0(n198), .A1(n185), .B0(n29), .B1(n31), .C0(n69), .Y(n117) );
  OAI221X1M U125 ( .A0(n29), .A1(n199), .B0(n31), .B1(n185), .C0(n68), .Y(n118) );
  OAI222X1M U126 ( .A0(n70), .A1(n194), .B0(n6), .B1(n71), .C0(n190), .C1(n72), 
        .Y(n66) );
  INVX2M U127 ( .A(n6), .Y(n194) );
  AOI221X2M U128 ( .A0(n202), .A1(n189), .B0(n14), .B1(n62), .C0(n200), .Y(n70) );
  AOI221X2M U129 ( .A0(n14), .A1(n202), .B0(n61), .B1(n189), .C0(n197), .Y(n71) );
  INVX4M U130 ( .A(n26), .Y(n27) );
  INVX4M U131 ( .A(n28), .Y(n29) );
  INVX2M U132 ( .A(n11), .Y(n190) );
  INVX2M U133 ( .A(RST), .Y(n37) );
  AOI22X1M U134 ( .A0(N99), .A1(n52), .B0(N90), .B1(n53), .Y(n49) );
  AOI222X2M U135 ( .A0(N108), .A1(n30), .B0(n197), .B1(n190), .C0(n200), .C1(
        n11), .Y(n50) );
  NOR4BX2M U136 ( .AN(n64), .B(n65), .C(n66), .D(n67), .Y(n63) );
  AOI222X2M U137 ( .A0(N91), .A1(n53), .B0(N109), .B1(n30), .C0(N100), .C1(n52), .Y(n64) );
  OAI222X1M U138 ( .A0(n14), .A1(n68), .B0(n60), .B1(n188), .C0(n189), .C1(n69), .Y(n67) );
  OAI221X1M U139 ( .A0(n198), .A1(n188), .B0(n17), .B1(n31), .C0(n69), .Y(n82)
         );
  OAI221X1M U140 ( .A0(n17), .A1(n199), .B0(n31), .B1(n188), .C0(n68), .Y(n83)
         );
  AND4XLM U141 ( .A(n78), .B(n79), .C(n80), .D(n81), .Y(n77) );
  AOI22X1M U142 ( .A0(N101), .A1(n52), .B0(N92), .B1(n53), .Y(n78) );
  AOI22X1M U143 ( .A0(n201), .A1(n14), .B0(n20), .B1(n203), .Y(n80) );
  INVX2M U144 ( .A(n137), .Y(n177) );
  AOI221X2M U145 ( .A0(ALU_OUT[15]), .A1(n33), .B0(N123), .B1(n131), .C0(n184), 
        .Y(n137) );
  OAI221X1M U146 ( .A0(n198), .A1(n187), .B0(n20), .B1(n31), .C0(n69), .Y(n89)
         );
  OAI221X1M U147 ( .A0(n20), .A1(n199), .B0(n31), .B1(n187), .C0(n68), .Y(n90)
         );
  OAI2BB2X1M U148 ( .B0(n84), .B1(n32), .A0N(ALU_OUT[3]), .A1N(n33), .Y(n142)
         );
  AND4XLM U149 ( .A(n85), .B(n86), .C(n87), .D(n88), .Y(n84) );
  AOI22X1M U150 ( .A0(N102), .A1(n52), .B0(N93), .B1(n53), .Y(n85) );
  AOI22X1M U151 ( .A0(n17), .A1(n201), .B0(n23), .B1(n203), .Y(n87) );
  INVX2M U152 ( .A(n136), .Y(n178) );
  AOI221X2M U153 ( .A0(ALU_OUT[14]), .A1(n33), .B0(N122), .B1(n131), .C0(n184), 
        .Y(n136) );
  INVX2M U154 ( .A(A[1]), .Y(n12) );
  INVX2M U155 ( .A(A[2]), .Y(n15) );
  OAI2BB2X1M U156 ( .B0(n91), .B1(n32), .A0N(ALU_OUT[4]), .A1N(n32), .Y(n143)
         );
  AND4XLM U157 ( .A(n92), .B(n93), .C(n94), .D(n95), .Y(n91) );
  AOI22X1M U158 ( .A0(N103), .A1(n52), .B0(N94), .B1(n53), .Y(n92) );
  AOI22X1M U159 ( .A0(n20), .A1(n201), .B0(A[5]), .B1(n203), .Y(n94) );
  INVX2M U160 ( .A(n134), .Y(n180) );
  AOI221X2M U161 ( .A0(ALU_OUT[12]), .A1(n33), .B0(N120), .B1(n131), .C0(n184), 
        .Y(n134) );
  INVX2M U162 ( .A(n135), .Y(n179) );
  AOI221X2M U163 ( .A0(ALU_OUT[13]), .A1(n33), .B0(N121), .B1(n131), .C0(n184), 
        .Y(n135) );
  OAI2BB2X1M U164 ( .B0(n98), .B1(n32), .A0N(ALU_OUT[5]), .A1N(n32), .Y(n144)
         );
  AND4XLM U165 ( .A(n99), .B(n100), .C(n101), .D(n102), .Y(n98) );
  AOI22X1M U166 ( .A0(N104), .A1(n52), .B0(N95), .B1(n53), .Y(n99) );
  AOI22X1M U167 ( .A0(n23), .A1(n201), .B0(n27), .B1(n203), .Y(n101) );
  INVX2M U168 ( .A(n132), .Y(n182) );
  AOI221X2M U169 ( .A0(ALU_OUT[10]), .A1(n33), .B0(N118), .B1(n131), .C0(n184), 
        .Y(n132) );
  INVX2M U170 ( .A(n133), .Y(n181) );
  AOI221X2M U171 ( .A0(ALU_OUT[11]), .A1(n33), .B0(N119), .B1(n131), .C0(n184), 
        .Y(n133) );
  AND3X4M U172 ( .A(n119), .B(ALU_FUN[1]), .C(n120), .Y(n54) );
  AOI21X2M U173 ( .A0(n121), .A1(n122), .B0(ALU_FUN[2]), .Y(n120) );
  NOR4X2M U174 ( .A(n10), .B(n4), .C(n8), .D(n7), .Y(n122) );
  NOR4X2M U175 ( .A(B[3]), .B(B[2]), .C(n6), .D(B[0]), .Y(n121) );
  OAI211X2M U176 ( .A0(n126), .A1(n32), .B0(n127), .C0(n128), .Y(n147) );
  NAND2X2M U177 ( .A(ALU_OUT[8]), .B(n32), .Y(n128) );
  AOI222X2M U178 ( .A0(N98), .A1(n53), .B0(n29), .B1(n201), .C0(N116), .C1(n30), .Y(n126) );
  OAI2BB2X1M U179 ( .B0(n105), .B1(n32), .A0N(ALU_OUT[6]), .A1N(n32), .Y(n145)
         );
  AND4XLM U180 ( .A(n106), .B(n107), .C(n108), .D(n109), .Y(n105) );
  AOI22X1M U181 ( .A0(N105), .A1(n52), .B0(N96), .B1(n53), .Y(n106) );
  AOI22X1M U182 ( .A0(A[5]), .A1(n201), .B0(n29), .B1(n203), .Y(n108) );
  OAI2BB2X1M U183 ( .B0(n112), .B1(n32), .A0N(ALU_OUT[7]), .A1N(n32), .Y(n146)
         );
  AND4X2M U184 ( .A(n113), .B(n114), .C(n115), .D(n116), .Y(n112) );
  AOI22X1M U185 ( .A0(N106), .A1(n52), .B0(N97), .B1(n53), .Y(n113) );
  AOI22X1M U186 ( .A0(n27), .A1(n201), .B0(n197), .B1(n185), .Y(n115) );
  INVX2M U187 ( .A(n130), .Y(n183) );
  AOI221X2M U188 ( .A0(ALU_OUT[9]), .A1(n33), .B0(N117), .B1(n131), .C0(n184), 
        .Y(n130) );
  OAI222X1M U189 ( .A0(n58), .A1(n167), .B0(B[0]), .B1(n59), .C0(n60), .C1(
        n189), .Y(n47) );
  AOI221X2M U190 ( .A0(n202), .A1(n190), .B0(n11), .B1(n62), .C0(n200), .Y(n58) );
  AOI221X2M U191 ( .A0(n11), .A1(n202), .B0(n61), .B1(n190), .C0(n197), .Y(n59) );
  NAND2BX2M U192 ( .AN(OUT_VALID), .B(n32), .Y(n148) );
  OAI2BB1XLM U193 ( .A0N(N127), .A1N(n54), .B0(n74), .Y(n65) );
  NAND2BX1M U194 ( .AN(n7), .B(n23), .Y(n156) );
  NAND2BX1M U195 ( .AN(n23), .B(n7), .Y(n42) );
  CLKNAND2X2M U196 ( .A(n156), .B(n42), .Y(n158) );
  CLKNAND2X2M U197 ( .A(n17), .B(n168), .Y(n155) );
  AOI21X1M U198 ( .A0(n38), .A1(n172), .B0(n6), .Y(n39) );
  CLKNAND2X2M U199 ( .A(n20), .B(n169), .Y(n154) );
  NAND2BX1M U200 ( .AN(A[5]), .B(n8), .Y(n161) );
  OAI211X1M U201 ( .A0(n158), .A1(n43), .B0(n42), .C0(n161), .Y(n44) );
  NAND2BX1M U202 ( .AN(n8), .B(A[5]), .Y(n157) );
  AOI32X1M U203 ( .A0(n44), .A1(n157), .A2(n160), .B0(n5), .B1(n174), .Y(n45)
         );
  CLKNAND2X2M U204 ( .A(n10), .B(n175), .Y(n164) );
  CLKNAND2X2M U205 ( .A(n11), .B(n167), .Y(n151) );
  OA21X1M U206 ( .A0(n151), .A1(n172), .B0(n6), .Y(n149) );
  AOI31X1M U207 ( .A0(n173), .A1(n155), .A2(n154), .B0(n153), .Y(n159) );
  OAI2B11X1M U208 ( .A1N(n159), .A0(n158), .B0(n157), .C0(n156), .Y(n162) );
  AOI32X1M U209 ( .A0(n162), .A1(n161), .A2(n160), .B0(n27), .B1(n170), .Y(
        n165) );
  NOR2X1M U210 ( .A(N168), .B(n176), .Y(N166) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, SI, SE, Test_Mode, 
        scan_clk, scan_rst, SO, UART_TX_O, parity_error, framing_error );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN, SI, SE, Test_Mode, scan_clk,
         scan_rst;
  output SO, UART_TX_O, parity_error, framing_error;
  wire   SYNC_RST1, SYNC_RST2, RX_VLD, RX_VLD_SYNC, WR_INC, TX_CLK, RD_INC,
         FIFO_FULL, F_EMPTY, BUSY, RX_CLK, ALU_OUT_VLD, RD_D_VLD, ALU_EN,
         GATE_EN, WrEn, RdEn, ALU_CLK, n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [7:0] RX_OUT_P;
  wire   [7:0] RX_OUT_SYNC;
  wire   [7:0] WR_DATA;
  wire   [7:0] RD_DATA;
  wire   [7:0] div_ratio;
  wire   [7:0] UART_CONFIG;
  wire   [3:0] Pre_div;
  wire   [15:0] ALU_OUT;
  wire   [7:0] Rd_D;
  wire   [3:0] ALU_FUN;
  wire   [3:0] Address;
  wire   [7:0] Wr_D;
  wire   [7:0] Op_A;
  wire   [7:0] Op_B;

  RST_SYNC_0 U0_RST_SYNC1 ( .RST(RST_N), .CLK(REF_CLK), .SYNC_RST(SYNC_RST1)
         );
  RST_SYNC_1 U1_RST_SYNC2 ( .RST(RST_N), .CLK(UART_CLK), .SYNC_RST(SYNC_RST2)
         );
  DATA_SYNC_BUS_WIDTH8 U2_DATA_SYNC ( .unsync_bus(RX_OUT_P), .bus_enable(
        RX_VLD), .D_CLK(REF_CLK), .RST(n7), .sync_bus(RX_OUT_SYNC), 
        .enable_pulse(RX_VLD_SYNC) );
  ASYNC_FIFO_DATA_WIDTH8_ADD_WIDTH4 U3_FIFO ( .W_CLK(REF_CLK), .W_RST(n7), 
        .W_INC(WR_INC), .R_CLK(TX_CLK), .R_RST(n5), .R_INC(RD_INC), .WR_DATA(
        WR_DATA), .FULL(FIFO_FULL), .RD_DATA(RD_DATA), .EMPTY(F_EMPTY) );
  PULSE_GEN U4_PLSE_GEN1 ( .CLK(TX_CLK), .RST(n5), .LVL_SIG(BUSY), .PULSE_SIG(
        RD_INC) );
  ClkDiv_width8 U6_CLK_DIV_TX ( .i_ref_clk(UART_CLK), .i_rst_n(n5), .i_clk_en(
        1'b1), .i_div_ratio(div_ratio), .o_div_clk(TX_CLK) );
  Pres_MUX_WIDTH4_PRE_WD6 U7_PRE_MUX ( .Prescale(UART_CONFIG[7:2]), 
        .div_ratio(Pre_div) );
  ClkDiv_width4 U8_CLK_DIV_RX ( .i_ref_clk(UART_CLK), .i_rst_n(n5), .i_clk_en(
        1'b1), .i_div_ratio(Pre_div), .o_div_clk(RX_CLK) );
  UART_DATA_WIDTH8 U9_UART_TOP ( .RST(n5), .TX_CLK(TX_CLK), .RX_CLK(RX_CLK), 
        .RX_IN_S(n2), .RX_OUT_P(RX_OUT_P), .RX_OUT_V(RX_VLD), .TX_IN_P(RD_DATA), .TX_IN_V(n1), .TX_OUT_S(UART_TX_O), .TX_OUT_V(BUSY), .Prescale(
        UART_CONFIG[7:2]), .parity_enable(UART_CONFIG[0]), .parity_type(
        UART_CONFIG[1]), .parity_error(parity_error), .framing_error(
        framing_error) );
  SYSTEM_CTRL_BYTE8 U10_SYS_CTRL ( .ALU_OUT(ALU_OUT), .ALU_OUT_VLD(ALU_OUT_VLD), .RX_P_DATA(RX_OUT_SYNC), .RX_D_VLD(RX_VLD_SYNC), .FIFO_FULL(FIFO_FULL), 
        .RdData(Rd_D), .RdData_Valid(RD_D_VLD), .CLK(REF_CLK), .RST(n7), 
        .ALU_EN(ALU_EN), .ALU_FUN(ALU_FUN), .CLK_EN(GATE_EN), .Address(Address), .WrEn(WrEn), .RdEn(RdEn), .WrData(Wr_D), .TX_P_Data(WR_DATA), .TX_D_VLD(
        WR_INC) );
  Reg_File_ADD_WIDTH4_RdWr_WIDTH8_RegF_DEPTH16 U11_REG_FILE ( .RdEn(RdEn), 
        .WrEn(WrEn), .CLK(REF_CLK), .RST(n7), .ADDRESS({Address[3:2], n4, n3}), 
        .Wr_DATA(Wr_D), .Rd_DATA(Rd_D), .Rd_DATA_VLD(RD_D_VLD), .REG0(Op_A), 
        .REG1(Op_B), .REG2(UART_CONFIG), .REG3(div_ratio) );
  ALU_OUT_WD16_DATA_WD8_FUN_WD4 U12_ALU ( .A(Op_A), .B(Op_B), .ALU_FUN(ALU_FUN), .CLK(ALU_CLK), .RST(n7), .ENABLE(ALU_EN), .ALU_OUT(ALU_OUT), .OUT_VALID(
        ALU_OUT_VLD) );
  CLK_GATE U13_CLK_GATE ( .CLK_EN(GATE_EN), .CLK(REF_CLK), .GATED_CLK(ALU_CLK)
         );
  INVX4M U2 ( .A(n8), .Y(n7) );
  INVX4M U3 ( .A(n6), .Y(n5) );
  BUFX2M U4 ( .A(Address[0]), .Y(n3) );
  BUFX2M U5 ( .A(Address[1]), .Y(n4) );
  INVX2M U6 ( .A(F_EMPTY), .Y(n1) );
  BUFX2M U7 ( .A(UART_RX_IN), .Y(n2) );
  INVX2M U8 ( .A(SYNC_RST1), .Y(n8) );
  INVX2M U9 ( .A(SYNC_RST2), .Y(n6) );
endmodule

