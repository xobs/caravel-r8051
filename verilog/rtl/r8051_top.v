reg     rst = 1'b1;
initial #`PERIOD rst = 1'b0;

wire            rom_en;
wire [15:0]     rom_addr;
reg  [7:0]      rom_byte;
reg             rom_vld;

wire            ram_rd_en_data;
wire            ram_rd_en_sfr;
wire            ram_rd_en_xdata;
wire [15:0]     ram_rd_addr;

reg  [7:0]      ram_rd_byte;

wire            ram_wr_en_data;
wire            ram_wr_en_sfr;
wire            ram_wr_en_xdata;
wire [15:0]     ram_wr_addr;
wire [7:0]      ram_wr_byte;


r8051 u_cpu (
    .clk                  (    clk              ),
        .rst                  (    rst              ),
        .cpu_en               (    1'b1             ),
        .cpu_restart          (    1'b0             ),

        .rom_en               (    rom_en           ),
        .rom_addr             (    rom_addr         ),
        .rom_byte             (    rom_byte         ),
        .rom_vld              (    rom_vld          ),

        .ram_rd_en_data       (    ram_rd_en_data   ),
        .ram_rd_en_sfr        (    ram_rd_en_sfr    ),
        .ram_rd_en_xdata      (    ram_rd_en_xdata  ),
        .ram_rd_addr          (    ram_rd_addr      ),
        .ram_rd_byte          (    ram_rd_byte      ),
        .ram_rd_vld           (    1'b1             ),

        .ram_wr_en_data       (    ram_wr_en_data   ),
        .ram_wr_en_sfr        (    ram_wr_en_sfr    ),
        .ram_wr_en_xdata      (    ram_wr_en_xdata  ),
        .ram_wr_addr          (    ram_wr_addr      ),
        .ram_wr_byte          (    ram_wr_byte      )

);
