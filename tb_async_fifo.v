//-----------------------------------------------
//
//	Testbench for the asynchronous fifo module
//
//	Created by: Shreyank Amartya
//	Date: 	01/22/2014
//
//	Proficient Design LLC.
//
//
//----------------------------------------------


module tb_async_fifo;

      parameter DSIZE = 8;
      parameter ASIZE = 3;
      parameter ALMOST_FULL_SIZE = 5;
      parameter ALMOST_EMPTY_SIZE = 3;


	//wr interface
//     output wfull,
//     output w_almost_full,
//     input [DSIZE-1:0] wdata,
//     input winc, wclk, wrst_n,
  
     	//rd interface
//     output [DSIZE-1:0] rdata,
//     output rempty,
//     output r_almost_empty,
//     input rinc, rclk, rrst_n

	reg [DSIZE-1:0] write_data;
	reg write_increment, write_clk, wrst_n;
	reg read_increment, read_clk, rrst_n;

	wire wfull;
	wire w_almost_full;
	wire [DSIZE-1:0] read_data;
	wire rempty;
	wire r_almost_empty;



	// Initialize FIFO
	initial 
	begin

	


	end

	
	// Read and Write Clcoks	
	// Case: Read clock is slower than write clock
	always @*
	begin
	#2 write_clk =  ~write_clk;
	#3 read_clk =  ~read_clk;
	end

	// Always block to write data into FIFO 
	always @(posedge write_clk)
	begin


	end


	//Always block to read data from FIFO
	always @(posedge read_clk)
	begin


	end

// Instantiate a fifo module
small_async_fifo F1();



endmodule























