//
// Generated by Bluespec Compiler, version 2017.07.A (build 1da80f1, 2017-07-21)
//
// On Fri Dec 21 10:54:34 EST 2018
//
//
// Ports:
// Name                         I/O  size props
// RDY_cpu_reset_server_request_put  O     1 reg
// RDY_cpu_reset_server_response_get  O     1 reg
// cpu_imem_master_awvalid        O     1
// cpu_imem_master_awaddr         O    64 reg
// cpu_imem_master_awprot         O     3 reg
// cpu_imem_master_wvalid         O     1
// cpu_imem_master_wdata          O    64 reg
// cpu_imem_master_wstrb          O     8 reg
// cpu_imem_master_bready         O     1
// cpu_imem_master_arvalid        O     1
// cpu_imem_master_araddr         O    64 reg
// cpu_imem_master_arprot         O     3 reg
// cpu_imem_master_rready         O     1
// cpu_dmem_master_awvalid        O     1
// cpu_dmem_master_awaddr         O    64 reg
// cpu_dmem_master_awprot         O     3 reg
// cpu_dmem_master_wvalid         O     1
// cpu_dmem_master_wdata          O    64 reg
// cpu_dmem_master_wstrb          O     8 reg
// cpu_dmem_master_bready         O     1
// cpu_dmem_master_arvalid        O     1
// cpu_dmem_master_araddr         O    64 reg
// cpu_dmem_master_arprot         O     3 reg
// cpu_dmem_master_rready         O     1
// cpu_slave_awready              O     1 const
// cpu_slave_wready               O     1 const
// cpu_slave_bvalid               O     1 const
// cpu_slave_bresp                O     2 const
// cpu_slave_arready              O     1 const
// cpu_slave_rvalid               O     1 const
// cpu_slave_rresp                O     2 const
// cpu_slave_rdata                O    64 const
// RDY_cpu_external_interrupt_req  O     1 const
// RDY_cpu_timer_interrupt_req    O     1 const
// RDY_cpu_software_interrupt_req  O     1 const
// RDY_set_verbosity              O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// cpu_imem_master_awready        I     1
// cpu_imem_master_wready         I     1
// cpu_imem_master_bvalid         I     1
// cpu_imem_master_bresp          I     2 reg
// cpu_imem_master_arready        I     1
// cpu_imem_master_rvalid         I     1
// cpu_imem_master_rresp          I     2 reg
// cpu_imem_master_rdata          I    64 reg
// cpu_dmem_master_awready        I     1
// cpu_dmem_master_wready         I     1
// cpu_dmem_master_bvalid         I     1
// cpu_dmem_master_bresp          I     2 reg
// cpu_dmem_master_arready        I     1
// cpu_dmem_master_rvalid         I     1
// cpu_dmem_master_rresp          I     2 reg
// cpu_dmem_master_rdata          I    64 reg
// cpu_slave_awvalid              I     1 unused
// cpu_slave_awaddr               I    64 unused
// cpu_slave_awprot               I     3 unused
// cpu_slave_wvalid               I     1 unused
// cpu_slave_wdata                I    64 unused
// cpu_slave_wstrb                I     8 unused
// cpu_slave_bready               I     1 unused
// cpu_slave_arvalid              I     1 unused
// cpu_slave_araddr               I    64 unused
// cpu_slave_arprot               I     3 unused
// cpu_slave_rready               I     1 unused
// cpu_external_interrupt_req_set_not_clear  I     1
// cpu_timer_interrupt_req_set_not_clear  I     1
// cpu_software_interrupt_req_set_not_clear  I     1
// set_verbosity_verbosity        I     4 reg
// set_verbosity_logdelay         I    64 reg
// EN_cpu_reset_server_request_put  I     1
// EN_cpu_reset_server_response_get  I     1
// EN_cpu_external_interrupt_req  I     1
// EN_cpu_timer_interrupt_req     I     1
// EN_cpu_software_interrupt_req  I     1
// EN_set_verbosity               I     1
//
// Combinational paths from inputs to outputs:
//   (cpu_imem_master_awready, cpu_imem_master_wready) -> cpu_imem_master_bready
//   (cpu_imem_master_awready,
//    cpu_imem_master_wready,
//    cpu_imem_master_arready,
//    cpu_dmem_master_awready,
//    cpu_dmem_master_wready) -> cpu_imem_master_rready
//   (cpu_imem_master_awready,
//    cpu_imem_master_wready,
//    cpu_dmem_master_awready,
//    cpu_dmem_master_wready,
//    cpu_dmem_master_arready) -> cpu_dmem_master_rready
//   (cpu_dmem_master_awready, cpu_dmem_master_wready) -> cpu_dmem_master_bready
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkBRVF_Core(CLK,
		   RST_N,

		   EN_cpu_reset_server_request_put,
		   RDY_cpu_reset_server_request_put,

		   EN_cpu_reset_server_response_get,
		   RDY_cpu_reset_server_response_get,

		   cpu_imem_master_awvalid,

		   cpu_imem_master_awaddr,

		   cpu_imem_master_awprot,

		   cpu_imem_master_awready,

		   cpu_imem_master_wvalid,

		   cpu_imem_master_wdata,

		   cpu_imem_master_wstrb,

		   cpu_imem_master_wready,

		   cpu_imem_master_bvalid,
		   cpu_imem_master_bresp,

		   cpu_imem_master_bready,

		   cpu_imem_master_arvalid,

		   cpu_imem_master_araddr,

		   cpu_imem_master_arprot,

		   cpu_imem_master_arready,

		   cpu_imem_master_rvalid,
		   cpu_imem_master_rresp,
		   cpu_imem_master_rdata,

		   cpu_imem_master_rready,

		   cpu_dmem_master_awvalid,

		   cpu_dmem_master_awaddr,

		   cpu_dmem_master_awprot,

		   cpu_dmem_master_awready,

		   cpu_dmem_master_wvalid,

		   cpu_dmem_master_wdata,

		   cpu_dmem_master_wstrb,

		   cpu_dmem_master_wready,

		   cpu_dmem_master_bvalid,
		   cpu_dmem_master_bresp,

		   cpu_dmem_master_bready,

		   cpu_dmem_master_arvalid,

		   cpu_dmem_master_araddr,

		   cpu_dmem_master_arprot,

		   cpu_dmem_master_arready,

		   cpu_dmem_master_rvalid,
		   cpu_dmem_master_rresp,
		   cpu_dmem_master_rdata,

		   cpu_dmem_master_rready,

		   cpu_slave_awvalid,
		   cpu_slave_awaddr,
		   cpu_slave_awprot,

		   cpu_slave_awready,

		   cpu_slave_wvalid,
		   cpu_slave_wdata,
		   cpu_slave_wstrb,

		   cpu_slave_wready,

		   cpu_slave_bvalid,

		   cpu_slave_bresp,

		   cpu_slave_bready,

		   cpu_slave_arvalid,
		   cpu_slave_araddr,
		   cpu_slave_arprot,

		   cpu_slave_arready,

		   cpu_slave_rvalid,

		   cpu_slave_rresp,

		   cpu_slave_rdata,

		   cpu_slave_rready,

		   cpu_external_interrupt_req_set_not_clear,
		   EN_cpu_external_interrupt_req,
		   RDY_cpu_external_interrupt_req,

		   cpu_timer_interrupt_req_set_not_clear,
		   EN_cpu_timer_interrupt_req,
		   RDY_cpu_timer_interrupt_req,

		   cpu_software_interrupt_req_set_not_clear,
		   EN_cpu_software_interrupt_req,
		   RDY_cpu_software_interrupt_req,

		   set_verbosity_verbosity,
		   set_verbosity_logdelay,
		   EN_set_verbosity,
		   RDY_set_verbosity);
  parameter [63 : 0] pc_reset_value = 64'b0;
  input  CLK;
  input  RST_N;

  // action method cpu_reset_server_request_put
  input  EN_cpu_reset_server_request_put;
  output RDY_cpu_reset_server_request_put;

  // action method cpu_reset_server_response_get
  input  EN_cpu_reset_server_response_get;
  output RDY_cpu_reset_server_response_get;

  // value method cpu_imem_master_m_awvalid
  output cpu_imem_master_awvalid;

  // value method cpu_imem_master_m_awaddr
  output [63 : 0] cpu_imem_master_awaddr;

  // value method cpu_imem_master_m_awprot
  output [2 : 0] cpu_imem_master_awprot;

  // value method cpu_imem_master_m_awuser

  // action method cpu_imem_master_m_awready
  input  cpu_imem_master_awready;

  // value method cpu_imem_master_m_wvalid
  output cpu_imem_master_wvalid;

  // value method cpu_imem_master_m_wdata
  output [63 : 0] cpu_imem_master_wdata;

  // value method cpu_imem_master_m_wstrb
  output [7 : 0] cpu_imem_master_wstrb;

  // action method cpu_imem_master_m_wready
  input  cpu_imem_master_wready;

  // action method cpu_imem_master_m_bvalid
  input  cpu_imem_master_bvalid;
  input  [1 : 0] cpu_imem_master_bresp;

  // value method cpu_imem_master_m_bready
  output cpu_imem_master_bready;

  // value method cpu_imem_master_m_arvalid
  output cpu_imem_master_arvalid;

  // value method cpu_imem_master_m_araddr
  output [63 : 0] cpu_imem_master_araddr;

  // value method cpu_imem_master_m_arprot
  output [2 : 0] cpu_imem_master_arprot;

  // value method cpu_imem_master_m_aruser

  // action method cpu_imem_master_m_arready
  input  cpu_imem_master_arready;

  // action method cpu_imem_master_m_rvalid
  input  cpu_imem_master_rvalid;
  input  [1 : 0] cpu_imem_master_rresp;
  input  [63 : 0] cpu_imem_master_rdata;

  // value method cpu_imem_master_m_rready
  output cpu_imem_master_rready;

  // value method cpu_dmem_master_m_awvalid
  output cpu_dmem_master_awvalid;

  // value method cpu_dmem_master_m_awaddr
  output [63 : 0] cpu_dmem_master_awaddr;

  // value method cpu_dmem_master_m_awprot
  output [2 : 0] cpu_dmem_master_awprot;

  // value method cpu_dmem_master_m_awuser

  // action method cpu_dmem_master_m_awready
  input  cpu_dmem_master_awready;

  // value method cpu_dmem_master_m_wvalid
  output cpu_dmem_master_wvalid;

  // value method cpu_dmem_master_m_wdata
  output [63 : 0] cpu_dmem_master_wdata;

  // value method cpu_dmem_master_m_wstrb
  output [7 : 0] cpu_dmem_master_wstrb;

  // action method cpu_dmem_master_m_wready
  input  cpu_dmem_master_wready;

  // action method cpu_dmem_master_m_bvalid
  input  cpu_dmem_master_bvalid;
  input  [1 : 0] cpu_dmem_master_bresp;

  // value method cpu_dmem_master_m_bready
  output cpu_dmem_master_bready;

  // value method cpu_dmem_master_m_arvalid
  output cpu_dmem_master_arvalid;

  // value method cpu_dmem_master_m_araddr
  output [63 : 0] cpu_dmem_master_araddr;

  // value method cpu_dmem_master_m_arprot
  output [2 : 0] cpu_dmem_master_arprot;

  // value method cpu_dmem_master_m_aruser

  // action method cpu_dmem_master_m_arready
  input  cpu_dmem_master_arready;

  // action method cpu_dmem_master_m_rvalid
  input  cpu_dmem_master_rvalid;
  input  [1 : 0] cpu_dmem_master_rresp;
  input  [63 : 0] cpu_dmem_master_rdata;

  // value method cpu_dmem_master_m_rready
  output cpu_dmem_master_rready;

  // action method cpu_slave_m_awvalid
  input  cpu_slave_awvalid;
  input  [63 : 0] cpu_slave_awaddr;
  input  [2 : 0] cpu_slave_awprot;

  // value method cpu_slave_m_awready
  output cpu_slave_awready;

  // action method cpu_slave_m_wvalid
  input  cpu_slave_wvalid;
  input  [63 : 0] cpu_slave_wdata;
  input  [7 : 0] cpu_slave_wstrb;

  // value method cpu_slave_m_wready
  output cpu_slave_wready;

  // value method cpu_slave_m_bvalid
  output cpu_slave_bvalid;

  // value method cpu_slave_m_bresp
  output [1 : 0] cpu_slave_bresp;

  // value method cpu_slave_m_buser

  // action method cpu_slave_m_bready
  input  cpu_slave_bready;

  // action method cpu_slave_m_arvalid
  input  cpu_slave_arvalid;
  input  [63 : 0] cpu_slave_araddr;
  input  [2 : 0] cpu_slave_arprot;

  // value method cpu_slave_m_arready
  output cpu_slave_arready;

  // value method cpu_slave_m_rvalid
  output cpu_slave_rvalid;

  // value method cpu_slave_m_rresp
  output [1 : 0] cpu_slave_rresp;

  // value method cpu_slave_m_rdata
  output [63 : 0] cpu_slave_rdata;

  // value method cpu_slave_m_ruser

  // action method cpu_slave_m_rready
  input  cpu_slave_rready;

  // action method cpu_external_interrupt_req
  input  cpu_external_interrupt_req_set_not_clear;
  input  EN_cpu_external_interrupt_req;
  output RDY_cpu_external_interrupt_req;

  // action method cpu_timer_interrupt_req
  input  cpu_timer_interrupt_req_set_not_clear;
  input  EN_cpu_timer_interrupt_req;
  output RDY_cpu_timer_interrupt_req;

  // action method cpu_software_interrupt_req
  input  cpu_software_interrupt_req_set_not_clear;
  input  EN_cpu_software_interrupt_req;
  output RDY_cpu_software_interrupt_req;

  // action method set_verbosity
  input  [3 : 0] set_verbosity_verbosity;
  input  [63 : 0] set_verbosity_logdelay;
  input  EN_set_verbosity;
  output RDY_set_verbosity;

  // signals for module outputs
  wire [63 : 0] cpu_dmem_master_araddr,
		cpu_dmem_master_awaddr,
		cpu_dmem_master_wdata,
		cpu_imem_master_araddr,
		cpu_imem_master_awaddr,
		cpu_imem_master_wdata,
		cpu_slave_rdata;
  wire [7 : 0] cpu_dmem_master_wstrb, cpu_imem_master_wstrb;
  wire [2 : 0] cpu_dmem_master_arprot,
	       cpu_dmem_master_awprot,
	       cpu_imem_master_arprot,
	       cpu_imem_master_awprot;
  wire [1 : 0] cpu_slave_bresp, cpu_slave_rresp;
  wire RDY_cpu_external_interrupt_req,
       RDY_cpu_reset_server_request_put,
       RDY_cpu_reset_server_response_get,
       RDY_cpu_software_interrupt_req,
       RDY_cpu_timer_interrupt_req,
       RDY_set_verbosity,
       cpu_dmem_master_arvalid,
       cpu_dmem_master_awvalid,
       cpu_dmem_master_bready,
       cpu_dmem_master_rready,
       cpu_dmem_master_wvalid,
       cpu_imem_master_arvalid,
       cpu_imem_master_awvalid,
       cpu_imem_master_bready,
       cpu_imem_master_rready,
       cpu_imem_master_wvalid,
       cpu_slave_arready,
       cpu_slave_awready,
       cpu_slave_bvalid,
       cpu_slave_rvalid,
       cpu_slave_wready;

  // ports of submodule cpu
  wire [63 : 0] cpu$dmem_master_araddr,
		cpu$dmem_master_awaddr,
		cpu$dmem_master_rdata,
		cpu$dmem_master_wdata,
		cpu$imem_master_araddr,
		cpu$imem_master_awaddr,
		cpu$imem_master_rdata,
		cpu$imem_master_wdata,
		cpu$near_mem_slave_araddr,
		cpu$near_mem_slave_awaddr,
		cpu$near_mem_slave_rdata,
		cpu$near_mem_slave_wdata,
		cpu$set_verbosity_logdelay;
  wire [7 : 0] cpu$dmem_master_wstrb,
	       cpu$imem_master_wstrb,
	       cpu$near_mem_slave_wstrb;
  wire [3 : 0] cpu$set_verbosity_verbosity;
  wire [2 : 0] cpu$dmem_master_arprot,
	       cpu$dmem_master_awprot,
	       cpu$imem_master_arprot,
	       cpu$imem_master_awprot,
	       cpu$near_mem_slave_arprot,
	       cpu$near_mem_slave_awprot;
  wire [1 : 0] cpu$dmem_master_bresp,
	       cpu$dmem_master_rresp,
	       cpu$imem_master_bresp,
	       cpu$imem_master_rresp,
	       cpu$near_mem_slave_bresp,
	       cpu$near_mem_slave_rresp;
  wire cpu$EN_external_interrupt_req,
       cpu$EN_hart0_server_reset_request_put,
       cpu$EN_hart0_server_reset_response_get,
       cpu$EN_set_verbosity,
       cpu$EN_software_interrupt_req,
       cpu$EN_timer_interrupt_req,
       cpu$RDY_hart0_server_reset_request_put,
       cpu$RDY_hart0_server_reset_response_get,
       cpu$dmem_master_arready,
       cpu$dmem_master_arvalid,
       cpu$dmem_master_awready,
       cpu$dmem_master_awvalid,
       cpu$dmem_master_bready,
       cpu$dmem_master_bvalid,
       cpu$dmem_master_rready,
       cpu$dmem_master_rvalid,
       cpu$dmem_master_wready,
       cpu$dmem_master_wvalid,
       cpu$external_interrupt_req_set_not_clear,
       cpu$imem_master_arready,
       cpu$imem_master_arvalid,
       cpu$imem_master_awready,
       cpu$imem_master_awvalid,
       cpu$imem_master_bready,
       cpu$imem_master_bvalid,
       cpu$imem_master_rready,
       cpu$imem_master_rvalid,
       cpu$imem_master_wready,
       cpu$imem_master_wvalid,
       cpu$near_mem_slave_arready,
       cpu$near_mem_slave_arvalid,
       cpu$near_mem_slave_awready,
       cpu$near_mem_slave_awvalid,
       cpu$near_mem_slave_bready,
       cpu$near_mem_slave_bvalid,
       cpu$near_mem_slave_rready,
       cpu$near_mem_slave_rvalid,
       cpu$near_mem_slave_wready,
       cpu$near_mem_slave_wvalid,
       cpu$software_interrupt_req_set_not_clear,
       cpu$timer_interrupt_req_set_not_clear;

  // ports of submodule f_reset_reqs
  wire f_reset_reqs$CLR,
       f_reset_reqs$DEQ,
       f_reset_reqs$EMPTY_N,
       f_reset_reqs$ENQ,
       f_reset_reqs$FULL_N;

  // ports of submodule f_reset_rsps
  wire f_reset_rsps$CLR,
       f_reset_rsps$DEQ,
       f_reset_rsps$EMPTY_N,
       f_reset_rsps$ENQ,
       f_reset_rsps$FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_rl_cpu_hart0_reset_complete,
       CAN_FIRE_RL_rl_cpu_hart0_reset_from_soc_start,
       CAN_FIRE_cpu_dmem_master_m_arready,
       CAN_FIRE_cpu_dmem_master_m_awready,
       CAN_FIRE_cpu_dmem_master_m_bvalid,
       CAN_FIRE_cpu_dmem_master_m_rvalid,
       CAN_FIRE_cpu_dmem_master_m_wready,
       CAN_FIRE_cpu_external_interrupt_req,
       CAN_FIRE_cpu_imem_master_m_arready,
       CAN_FIRE_cpu_imem_master_m_awready,
       CAN_FIRE_cpu_imem_master_m_bvalid,
       CAN_FIRE_cpu_imem_master_m_rvalid,
       CAN_FIRE_cpu_imem_master_m_wready,
       CAN_FIRE_cpu_reset_server_request_put,
       CAN_FIRE_cpu_reset_server_response_get,
       CAN_FIRE_cpu_slave_m_arvalid,
       CAN_FIRE_cpu_slave_m_awvalid,
       CAN_FIRE_cpu_slave_m_bready,
       CAN_FIRE_cpu_slave_m_rready,
       CAN_FIRE_cpu_slave_m_wvalid,
       CAN_FIRE_cpu_software_interrupt_req,
       CAN_FIRE_cpu_timer_interrupt_req,
       CAN_FIRE_set_verbosity,
       WILL_FIRE_RL_rl_cpu_hart0_reset_complete,
       WILL_FIRE_RL_rl_cpu_hart0_reset_from_soc_start,
       WILL_FIRE_cpu_dmem_master_m_arready,
       WILL_FIRE_cpu_dmem_master_m_awready,
       WILL_FIRE_cpu_dmem_master_m_bvalid,
       WILL_FIRE_cpu_dmem_master_m_rvalid,
       WILL_FIRE_cpu_dmem_master_m_wready,
       WILL_FIRE_cpu_external_interrupt_req,
       WILL_FIRE_cpu_imem_master_m_arready,
       WILL_FIRE_cpu_imem_master_m_awready,
       WILL_FIRE_cpu_imem_master_m_bvalid,
       WILL_FIRE_cpu_imem_master_m_rvalid,
       WILL_FIRE_cpu_imem_master_m_wready,
       WILL_FIRE_cpu_reset_server_request_put,
       WILL_FIRE_cpu_reset_server_response_get,
       WILL_FIRE_cpu_slave_m_arvalid,
       WILL_FIRE_cpu_slave_m_awvalid,
       WILL_FIRE_cpu_slave_m_bready,
       WILL_FIRE_cpu_slave_m_rready,
       WILL_FIRE_cpu_slave_m_wvalid,
       WILL_FIRE_cpu_software_interrupt_req,
       WILL_FIRE_cpu_timer_interrupt_req,
       WILL_FIRE_set_verbosity;

  // action method cpu_reset_server_request_put
  assign RDY_cpu_reset_server_request_put = f_reset_reqs$FULL_N ;
  assign CAN_FIRE_cpu_reset_server_request_put = f_reset_reqs$FULL_N ;
  assign WILL_FIRE_cpu_reset_server_request_put =
	     EN_cpu_reset_server_request_put ;

  // action method cpu_reset_server_response_get
  assign RDY_cpu_reset_server_response_get = f_reset_rsps$EMPTY_N ;
  assign CAN_FIRE_cpu_reset_server_response_get = f_reset_rsps$EMPTY_N ;
  assign WILL_FIRE_cpu_reset_server_response_get =
	     EN_cpu_reset_server_response_get ;

  // value method cpu_imem_master_m_awvalid
  assign cpu_imem_master_awvalid = cpu$imem_master_awvalid ;

  // value method cpu_imem_master_m_awaddr
  assign cpu_imem_master_awaddr = cpu$imem_master_awaddr ;

  // value method cpu_imem_master_m_awprot
  assign cpu_imem_master_awprot = cpu$imem_master_awprot ;

  // action method cpu_imem_master_m_awready
  assign CAN_FIRE_cpu_imem_master_m_awready = 1'd1 ;
  assign WILL_FIRE_cpu_imem_master_m_awready = 1'd1 ;

  // value method cpu_imem_master_m_wvalid
  assign cpu_imem_master_wvalid = cpu$imem_master_wvalid ;

  // value method cpu_imem_master_m_wdata
  assign cpu_imem_master_wdata = cpu$imem_master_wdata ;

  // value method cpu_imem_master_m_wstrb
  assign cpu_imem_master_wstrb = cpu$imem_master_wstrb ;

  // action method cpu_imem_master_m_wready
  assign CAN_FIRE_cpu_imem_master_m_wready = 1'd1 ;
  assign WILL_FIRE_cpu_imem_master_m_wready = 1'd1 ;

  // action method cpu_imem_master_m_bvalid
  assign CAN_FIRE_cpu_imem_master_m_bvalid = 1'd1 ;
  assign WILL_FIRE_cpu_imem_master_m_bvalid = 1'd1 ;

  // value method cpu_imem_master_m_bready
  assign cpu_imem_master_bready = cpu$imem_master_bready ;

  // value method cpu_imem_master_m_arvalid
  assign cpu_imem_master_arvalid = cpu$imem_master_arvalid ;

  // value method cpu_imem_master_m_araddr
  assign cpu_imem_master_araddr = cpu$imem_master_araddr ;

  // value method cpu_imem_master_m_arprot
  assign cpu_imem_master_arprot = cpu$imem_master_arprot ;

  // action method cpu_imem_master_m_arready
  assign CAN_FIRE_cpu_imem_master_m_arready = 1'd1 ;
  assign WILL_FIRE_cpu_imem_master_m_arready = 1'd1 ;

  // action method cpu_imem_master_m_rvalid
  assign CAN_FIRE_cpu_imem_master_m_rvalid = 1'd1 ;
  assign WILL_FIRE_cpu_imem_master_m_rvalid = 1'd1 ;

  // value method cpu_imem_master_m_rready
  assign cpu_imem_master_rready = cpu$imem_master_rready ;

  // value method cpu_dmem_master_m_awvalid
  assign cpu_dmem_master_awvalid = cpu$dmem_master_awvalid ;

  // value method cpu_dmem_master_m_awaddr
  assign cpu_dmem_master_awaddr = cpu$dmem_master_awaddr ;

  // value method cpu_dmem_master_m_awprot
  assign cpu_dmem_master_awprot = cpu$dmem_master_awprot ;

  // action method cpu_dmem_master_m_awready
  assign CAN_FIRE_cpu_dmem_master_m_awready = 1'd1 ;
  assign WILL_FIRE_cpu_dmem_master_m_awready = 1'd1 ;

  // value method cpu_dmem_master_m_wvalid
  assign cpu_dmem_master_wvalid = cpu$dmem_master_wvalid ;

  // value method cpu_dmem_master_m_wdata
  assign cpu_dmem_master_wdata = cpu$dmem_master_wdata ;

  // value method cpu_dmem_master_m_wstrb
  assign cpu_dmem_master_wstrb = cpu$dmem_master_wstrb ;

  // action method cpu_dmem_master_m_wready
  assign CAN_FIRE_cpu_dmem_master_m_wready = 1'd1 ;
  assign WILL_FIRE_cpu_dmem_master_m_wready = 1'd1 ;

  // action method cpu_dmem_master_m_bvalid
  assign CAN_FIRE_cpu_dmem_master_m_bvalid = 1'd1 ;
  assign WILL_FIRE_cpu_dmem_master_m_bvalid = 1'd1 ;

  // value method cpu_dmem_master_m_bready
  assign cpu_dmem_master_bready = cpu$dmem_master_bready ;

  // value method cpu_dmem_master_m_arvalid
  assign cpu_dmem_master_arvalid = cpu$dmem_master_arvalid ;

  // value method cpu_dmem_master_m_araddr
  assign cpu_dmem_master_araddr = cpu$dmem_master_araddr ;

  // value method cpu_dmem_master_m_arprot
  assign cpu_dmem_master_arprot = cpu$dmem_master_arprot ;

  // action method cpu_dmem_master_m_arready
  assign CAN_FIRE_cpu_dmem_master_m_arready = 1'd1 ;
  assign WILL_FIRE_cpu_dmem_master_m_arready = 1'd1 ;

  // action method cpu_dmem_master_m_rvalid
  assign CAN_FIRE_cpu_dmem_master_m_rvalid = 1'd1 ;
  assign WILL_FIRE_cpu_dmem_master_m_rvalid = 1'd1 ;

  // value method cpu_dmem_master_m_rready
  assign cpu_dmem_master_rready = cpu$dmem_master_rready ;

  // action method cpu_slave_m_awvalid
  assign CAN_FIRE_cpu_slave_m_awvalid = 1'd1 ;
  assign WILL_FIRE_cpu_slave_m_awvalid = 1'd1 ;

  // value method cpu_slave_m_awready
  assign cpu_slave_awready = cpu$near_mem_slave_awready ;

  // action method cpu_slave_m_wvalid
  assign CAN_FIRE_cpu_slave_m_wvalid = 1'd1 ;
  assign WILL_FIRE_cpu_slave_m_wvalid = 1'd1 ;

  // value method cpu_slave_m_wready
  assign cpu_slave_wready = cpu$near_mem_slave_wready ;

  // value method cpu_slave_m_bvalid
  assign cpu_slave_bvalid = cpu$near_mem_slave_bvalid ;

  // value method cpu_slave_m_bresp
  assign cpu_slave_bresp = cpu$near_mem_slave_bresp ;

  // action method cpu_slave_m_bready
  assign CAN_FIRE_cpu_slave_m_bready = 1'd1 ;
  assign WILL_FIRE_cpu_slave_m_bready = 1'd1 ;

  // action method cpu_slave_m_arvalid
  assign CAN_FIRE_cpu_slave_m_arvalid = 1'd1 ;
  assign WILL_FIRE_cpu_slave_m_arvalid = 1'd1 ;

  // value method cpu_slave_m_arready
  assign cpu_slave_arready = cpu$near_mem_slave_arready ;

  // value method cpu_slave_m_rvalid
  assign cpu_slave_rvalid = cpu$near_mem_slave_rvalid ;

  // value method cpu_slave_m_rresp
  assign cpu_slave_rresp = cpu$near_mem_slave_rresp ;

  // value method cpu_slave_m_rdata
  assign cpu_slave_rdata = cpu$near_mem_slave_rdata ;

  // action method cpu_slave_m_rready
  assign CAN_FIRE_cpu_slave_m_rready = 1'd1 ;
  assign WILL_FIRE_cpu_slave_m_rready = 1'd1 ;

  // action method cpu_external_interrupt_req
  assign RDY_cpu_external_interrupt_req = 1'd1 ;
  assign CAN_FIRE_cpu_external_interrupt_req = 1'd1 ;
  assign WILL_FIRE_cpu_external_interrupt_req =
	     EN_cpu_external_interrupt_req ;

  // action method cpu_timer_interrupt_req
  assign RDY_cpu_timer_interrupt_req = 1'd1 ;
  assign CAN_FIRE_cpu_timer_interrupt_req = 1'd1 ;
  assign WILL_FIRE_cpu_timer_interrupt_req = EN_cpu_timer_interrupt_req ;

  // action method cpu_software_interrupt_req
  assign RDY_cpu_software_interrupt_req = 1'd1 ;
  assign CAN_FIRE_cpu_software_interrupt_req = 1'd1 ;
  assign WILL_FIRE_cpu_software_interrupt_req =
	     EN_cpu_software_interrupt_req ;

  // action method set_verbosity
  assign RDY_set_verbosity = 1'd1 ;
  assign CAN_FIRE_set_verbosity = 1'd1 ;
  assign WILL_FIRE_set_verbosity = EN_set_verbosity ;

  // submodule cpu
  mkCPU #(.pc_reset_value(pc_reset_value)) cpu(.CLK(CLK),
					       .RST_N(RST_N),
					       .dmem_master_arready(cpu$dmem_master_arready),
					       .dmem_master_awready(cpu$dmem_master_awready),
					       .dmem_master_bresp(cpu$dmem_master_bresp),
					       .dmem_master_bvalid(cpu$dmem_master_bvalid),
					       .dmem_master_rdata(cpu$dmem_master_rdata),
					       .dmem_master_rresp(cpu$dmem_master_rresp),
					       .dmem_master_rvalid(cpu$dmem_master_rvalid),
					       .dmem_master_wready(cpu$dmem_master_wready),
					       .external_interrupt_req_set_not_clear(cpu$external_interrupt_req_set_not_clear),
					       .imem_master_arready(cpu$imem_master_arready),
					       .imem_master_awready(cpu$imem_master_awready),
					       .imem_master_bresp(cpu$imem_master_bresp),
					       .imem_master_bvalid(cpu$imem_master_bvalid),
					       .imem_master_rdata(cpu$imem_master_rdata),
					       .imem_master_rresp(cpu$imem_master_rresp),
					       .imem_master_rvalid(cpu$imem_master_rvalid),
					       .imem_master_wready(cpu$imem_master_wready),
					       .near_mem_slave_araddr(cpu$near_mem_slave_araddr),
					       .near_mem_slave_arprot(cpu$near_mem_slave_arprot),
					       .near_mem_slave_arvalid(cpu$near_mem_slave_arvalid),
					       .near_mem_slave_awaddr(cpu$near_mem_slave_awaddr),
					       .near_mem_slave_awprot(cpu$near_mem_slave_awprot),
					       .near_mem_slave_awvalid(cpu$near_mem_slave_awvalid),
					       .near_mem_slave_bready(cpu$near_mem_slave_bready),
					       .near_mem_slave_rready(cpu$near_mem_slave_rready),
					       .near_mem_slave_wdata(cpu$near_mem_slave_wdata),
					       .near_mem_slave_wstrb(cpu$near_mem_slave_wstrb),
					       .near_mem_slave_wvalid(cpu$near_mem_slave_wvalid),
					       .set_verbosity_logdelay(cpu$set_verbosity_logdelay),
					       .set_verbosity_verbosity(cpu$set_verbosity_verbosity),
					       .software_interrupt_req_set_not_clear(cpu$software_interrupt_req_set_not_clear),
					       .timer_interrupt_req_set_not_clear(cpu$timer_interrupt_req_set_not_clear),
					       .EN_hart0_server_reset_request_put(cpu$EN_hart0_server_reset_request_put),
					       .EN_hart0_server_reset_response_get(cpu$EN_hart0_server_reset_response_get),
					       .EN_external_interrupt_req(cpu$EN_external_interrupt_req),
					       .EN_timer_interrupt_req(cpu$EN_timer_interrupt_req),
					       .EN_software_interrupt_req(cpu$EN_software_interrupt_req),
					       .EN_set_verbosity(cpu$EN_set_verbosity),
					       .RDY_hart0_server_reset_request_put(cpu$RDY_hart0_server_reset_request_put),
					       .RDY_hart0_server_reset_response_get(cpu$RDY_hart0_server_reset_response_get),
					       .imem_master_awvalid(cpu$imem_master_awvalid),
					       .imem_master_awaddr(cpu$imem_master_awaddr),
					       .imem_master_awprot(cpu$imem_master_awprot),
					       .imem_master_wvalid(cpu$imem_master_wvalid),
					       .imem_master_wdata(cpu$imem_master_wdata),
					       .imem_master_wstrb(cpu$imem_master_wstrb),
					       .imem_master_bready(cpu$imem_master_bready),
					       .imem_master_arvalid(cpu$imem_master_arvalid),
					       .imem_master_araddr(cpu$imem_master_araddr),
					       .imem_master_arprot(cpu$imem_master_arprot),
					       .imem_master_rready(cpu$imem_master_rready),
					       .dmem_master_awvalid(cpu$dmem_master_awvalid),
					       .dmem_master_awaddr(cpu$dmem_master_awaddr),
					       .dmem_master_awprot(cpu$dmem_master_awprot),
					       .dmem_master_wvalid(cpu$dmem_master_wvalid),
					       .dmem_master_wdata(cpu$dmem_master_wdata),
					       .dmem_master_wstrb(cpu$dmem_master_wstrb),
					       .dmem_master_bready(cpu$dmem_master_bready),
					       .dmem_master_arvalid(cpu$dmem_master_arvalid),
					       .dmem_master_araddr(cpu$dmem_master_araddr),
					       .dmem_master_arprot(cpu$dmem_master_arprot),
					       .dmem_master_rready(cpu$dmem_master_rready),
					       .near_mem_slave_awready(cpu$near_mem_slave_awready),
					       .near_mem_slave_wready(cpu$near_mem_slave_wready),
					       .near_mem_slave_bvalid(cpu$near_mem_slave_bvalid),
					       .near_mem_slave_bresp(cpu$near_mem_slave_bresp),
					       .near_mem_slave_arready(cpu$near_mem_slave_arready),
					       .near_mem_slave_rvalid(cpu$near_mem_slave_rvalid),
					       .near_mem_slave_rresp(cpu$near_mem_slave_rresp),
					       .near_mem_slave_rdata(cpu$near_mem_slave_rdata),
					       .RDY_external_interrupt_req(),
					       .RDY_timer_interrupt_req(),
					       .RDY_software_interrupt_req(),
					       .RDY_set_verbosity());

  // submodule f_reset_reqs
  FIFO20 #(.guarded(32'd1)) f_reset_reqs(.RST(RST_N),
					 .CLK(CLK),
					 .ENQ(f_reset_reqs$ENQ),
					 .DEQ(f_reset_reqs$DEQ),
					 .CLR(f_reset_reqs$CLR),
					 .FULL_N(f_reset_reqs$FULL_N),
					 .EMPTY_N(f_reset_reqs$EMPTY_N));

  // submodule f_reset_rsps
  FIFO20 #(.guarded(32'd1)) f_reset_rsps(.RST(RST_N),
					 .CLK(CLK),
					 .ENQ(f_reset_rsps$ENQ),
					 .DEQ(f_reset_rsps$DEQ),
					 .CLR(f_reset_rsps$CLR),
					 .FULL_N(f_reset_rsps$FULL_N),
					 .EMPTY_N(f_reset_rsps$EMPTY_N));

  // rule RL_rl_cpu_hart0_reset_from_soc_start
  assign CAN_FIRE_RL_rl_cpu_hart0_reset_from_soc_start =
	     cpu$RDY_hart0_server_reset_request_put && f_reset_reqs$EMPTY_N ;
  assign WILL_FIRE_RL_rl_cpu_hart0_reset_from_soc_start =
	     CAN_FIRE_RL_rl_cpu_hart0_reset_from_soc_start ;

  // rule RL_rl_cpu_hart0_reset_complete
  assign CAN_FIRE_RL_rl_cpu_hart0_reset_complete =
	     cpu$RDY_hart0_server_reset_response_get && f_reset_rsps$FULL_N ;
  assign WILL_FIRE_RL_rl_cpu_hart0_reset_complete =
	     CAN_FIRE_RL_rl_cpu_hart0_reset_complete ;

  // submodule cpu
  assign cpu$dmem_master_arready = cpu_dmem_master_arready ;
  assign cpu$dmem_master_awready = cpu_dmem_master_awready ;
  assign cpu$dmem_master_bresp = cpu_dmem_master_bresp ;
  assign cpu$dmem_master_bvalid = cpu_dmem_master_bvalid ;
  assign cpu$dmem_master_rdata = cpu_dmem_master_rdata ;
  assign cpu$dmem_master_rresp = cpu_dmem_master_rresp ;
  assign cpu$dmem_master_rvalid = cpu_dmem_master_rvalid ;
  assign cpu$dmem_master_wready = cpu_dmem_master_wready ;
  assign cpu$external_interrupt_req_set_not_clear =
	     cpu_external_interrupt_req_set_not_clear ;
  assign cpu$imem_master_arready = cpu_imem_master_arready ;
  assign cpu$imem_master_awready = cpu_imem_master_awready ;
  assign cpu$imem_master_bresp = cpu_imem_master_bresp ;
  assign cpu$imem_master_bvalid = cpu_imem_master_bvalid ;
  assign cpu$imem_master_rdata = cpu_imem_master_rdata ;
  assign cpu$imem_master_rresp = cpu_imem_master_rresp ;
  assign cpu$imem_master_rvalid = cpu_imem_master_rvalid ;
  assign cpu$imem_master_wready = cpu_imem_master_wready ;
  assign cpu$near_mem_slave_araddr = cpu_slave_araddr ;
  assign cpu$near_mem_slave_arprot = cpu_slave_arprot ;
  assign cpu$near_mem_slave_arvalid = cpu_slave_arvalid ;
  assign cpu$near_mem_slave_awaddr = cpu_slave_awaddr ;
  assign cpu$near_mem_slave_awprot = cpu_slave_awprot ;
  assign cpu$near_mem_slave_awvalid = cpu_slave_awvalid ;
  assign cpu$near_mem_slave_bready = cpu_slave_bready ;
  assign cpu$near_mem_slave_rready = cpu_slave_rready ;
  assign cpu$near_mem_slave_wdata = cpu_slave_wdata ;
  assign cpu$near_mem_slave_wstrb = cpu_slave_wstrb ;
  assign cpu$near_mem_slave_wvalid = cpu_slave_wvalid ;
  assign cpu$set_verbosity_logdelay = set_verbosity_logdelay ;
  assign cpu$set_verbosity_verbosity = set_verbosity_verbosity ;
  assign cpu$software_interrupt_req_set_not_clear =
	     cpu_software_interrupt_req_set_not_clear ;
  assign cpu$timer_interrupt_req_set_not_clear =
	     cpu_timer_interrupt_req_set_not_clear ;
  assign cpu$EN_hart0_server_reset_request_put =
	     CAN_FIRE_RL_rl_cpu_hart0_reset_from_soc_start ;
  assign cpu$EN_hart0_server_reset_response_get =
	     CAN_FIRE_RL_rl_cpu_hart0_reset_complete ;
  assign cpu$EN_external_interrupt_req = EN_cpu_external_interrupt_req ;
  assign cpu$EN_timer_interrupt_req = EN_cpu_timer_interrupt_req ;
  assign cpu$EN_software_interrupt_req = EN_cpu_software_interrupt_req ;
  assign cpu$EN_set_verbosity = EN_set_verbosity ;

  // submodule f_reset_reqs
  assign f_reset_reqs$ENQ = EN_cpu_reset_server_request_put ;
  assign f_reset_reqs$DEQ =
	     cpu$RDY_hart0_server_reset_request_put && f_reset_reqs$EMPTY_N ;
  assign f_reset_reqs$CLR = 1'b0 ;

  // submodule f_reset_rsps
  assign f_reset_rsps$ENQ =
	     cpu$RDY_hart0_server_reset_response_get && f_reset_rsps$FULL_N ;
  assign f_reset_rsps$DEQ = EN_cpu_reset_server_response_get ;
  assign f_reset_rsps$CLR = 1'b0 ;
endmodule  // mkBRVF_Core

