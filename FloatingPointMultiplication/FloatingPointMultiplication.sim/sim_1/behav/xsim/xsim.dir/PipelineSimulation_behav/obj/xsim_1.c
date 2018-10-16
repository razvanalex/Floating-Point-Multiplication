/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern void execute_5334(char*, char *);
extern void execute_5335(char*, char *);
extern void execute_15(char*, char *);
extern void execute_16(char*, char *);
extern void execute_19(char*, char *);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_5103(char*, char *);
extern void execute_5104(char*, char *);
extern void execute_5331(char*, char *);
extern void execute_5332(char*, char *);
extern void execute_5333(char*, char *);
extern void execute_18(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_236(char*, char *);
extern void execute_237(char*, char *);
extern void execute_233(char*, char *);
extern void execute_234(char*, char *);
extern void execute_235(char*, char *);
extern void execute_122(char*, char *);
extern void execute_123(char*, char *);
extern void execute_124(char*, char *);
extern void execute_125(char*, char *);
extern void execute_126(char*, char *);
extern void execute_127(char*, char *);
extern void execute_128(char*, char *);
extern void execute_129(char*, char *);
extern void execute_130(char*, char *);
extern void execute_43(char*, char *);
extern void execute_44(char*, char *);
extern void execute_45(char*, char *);
extern void execute_46(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_50(char*, char *);
extern void execute_51(char*, char *);
extern void execute_52(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_239(char*, char *);
extern void execute_5102(char*, char *);
extern void execute_241(char*, char *);
extern void execute_242(char*, char *);
extern void execute_243(char*, char *);
extern void execute_244(char*, char *);
extern void execute_245(char*, char *);
extern void execute_246(char*, char *);
extern void execute_247(char*, char *);
extern void execute_248(char*, char *);
extern void execute_457(char*, char *);
extern void execute_5101(char*, char *);
extern void execute_459(char*, char *);
extern void execute_668(char*, char *);
extern void execute_670(char*, char *);
extern void execute_879(char*, char *);
extern void execute_881(char*, char *);
extern void execute_1090(char*, char *);
extern void execute_1092(char*, char *);
extern void execute_1301(char*, char *);
extern void execute_1303(char*, char *);
extern void execute_1512(char*, char *);
extern void execute_1514(char*, char *);
extern void execute_1723(char*, char *);
extern void execute_1725(char*, char *);
extern void execute_1934(char*, char *);
extern void execute_1936(char*, char *);
extern void execute_2145(char*, char *);
extern void execute_2147(char*, char *);
extern void execute_2356(char*, char *);
extern void execute_2358(char*, char *);
extern void execute_2567(char*, char *);
extern void execute_2569(char*, char *);
extern void execute_2778(char*, char *);
extern void execute_2780(char*, char *);
extern void execute_2989(char*, char *);
extern void execute_2991(char*, char *);
extern void execute_3200(char*, char *);
extern void execute_3202(char*, char *);
extern void execute_3411(char*, char *);
extern void execute_3413(char*, char *);
extern void execute_3622(char*, char *);
extern void execute_3624(char*, char *);
extern void execute_3833(char*, char *);
extern void execute_3835(char*, char *);
extern void execute_4044(char*, char *);
extern void execute_4046(char*, char *);
extern void execute_4255(char*, char *);
extern void execute_4257(char*, char *);
extern void execute_4466(char*, char *);
extern void execute_4468(char*, char *);
extern void execute_4677(char*, char *);
extern void execute_4679(char*, char *);
extern void execute_4888(char*, char *);
extern void execute_4890(char*, char *);
extern void execute_5099(char*, char *);
extern void execute_5110(char*, char *);
extern void execute_5111(char*, char *);
extern void execute_5214(char*, char *);
extern void execute_5220(char*, char *);
extern void execute_5323(char*, char *);
extern void execute_5325(char*, char *);
extern void execute_5326(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_17(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[108] = {(funcp)execute_5334, (funcp)execute_5335, (funcp)execute_15, (funcp)execute_16, (funcp)execute_19, (funcp)execute_20, (funcp)execute_21, (funcp)execute_22, (funcp)execute_5103, (funcp)execute_5104, (funcp)execute_5331, (funcp)execute_5332, (funcp)execute_5333, (funcp)execute_18, (funcp)execute_26, (funcp)execute_27, (funcp)execute_236, (funcp)execute_237, (funcp)execute_233, (funcp)execute_234, (funcp)execute_235, (funcp)execute_122, (funcp)execute_123, (funcp)execute_124, (funcp)execute_125, (funcp)execute_126, (funcp)execute_127, (funcp)execute_128, (funcp)execute_129, (funcp)execute_130, (funcp)execute_43, (funcp)execute_44, (funcp)execute_45, (funcp)execute_46, (funcp)execute_47, (funcp)execute_48, (funcp)execute_49, (funcp)execute_50, (funcp)execute_51, (funcp)execute_52, (funcp)execute_32, (funcp)execute_33, (funcp)execute_239, (funcp)execute_5102, (funcp)execute_241, (funcp)execute_242, (funcp)execute_243, (funcp)execute_244, (funcp)execute_245, (funcp)execute_246, (funcp)execute_247, (funcp)execute_248, (funcp)execute_457, (funcp)execute_5101, (funcp)execute_459, (funcp)execute_668, (funcp)execute_670, (funcp)execute_879, (funcp)execute_881, (funcp)execute_1090, (funcp)execute_1092, (funcp)execute_1301, (funcp)execute_1303, (funcp)execute_1512, (funcp)execute_1514, (funcp)execute_1723, (funcp)execute_1725, (funcp)execute_1934, (funcp)execute_1936, (funcp)execute_2145, (funcp)execute_2147, (funcp)execute_2356, (funcp)execute_2358, (funcp)execute_2567, (funcp)execute_2569, (funcp)execute_2778, (funcp)execute_2780, (funcp)execute_2989, (funcp)execute_2991, (funcp)execute_3200, (funcp)execute_3202, (funcp)execute_3411, (funcp)execute_3413, (funcp)execute_3622, (funcp)execute_3624, (funcp)execute_3833, (funcp)execute_3835, (funcp)execute_4044, (funcp)execute_4046, (funcp)execute_4255, (funcp)execute_4257, (funcp)execute_4466, (funcp)execute_4468, (funcp)execute_4677, (funcp)execute_4679, (funcp)execute_4888, (funcp)execute_4890, (funcp)execute_5099, (funcp)execute_5110, (funcp)execute_5111, (funcp)execute_5214, (funcp)execute_5220, (funcp)execute_5323, (funcp)execute_5325, (funcp)execute_5326, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_17};
const int NumRelocateId= 108;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/PipelineSimulation_behav/xsim.reloc",  (void **)funcTab, 108);
	iki_vhdl_file_variable_register(dp + 497816);
	iki_vhdl_file_variable_register(dp + 497872);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/PipelineSimulation_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/PipelineSimulation_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/PipelineSimulation_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/PipelineSimulation_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/PipelineSimulation_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
