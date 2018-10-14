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
extern void execute_5330(char*, char *);
extern void execute_5331(char*, char *);
extern void execute_15(char*, char *);
extern void execute_16(char*, char *);
extern void execute_19(char*, char *);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_5327(char*, char *);
extern void execute_5328(char*, char *);
extern void execute_5329(char*, char *);
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
extern void execute_5101(char*, char *);
extern void execute_240(char*, char *);
extern void execute_241(char*, char *);
extern void execute_242(char*, char *);
extern void execute_243(char*, char *);
extern void execute_244(char*, char *);
extern void execute_245(char*, char *);
extern void execute_246(char*, char *);
extern void execute_247(char*, char *);
extern void execute_456(char*, char *);
extern void execute_5100(char*, char *);
extern void execute_458(char*, char *);
extern void execute_667(char*, char *);
extern void execute_669(char*, char *);
extern void execute_878(char*, char *);
extern void execute_880(char*, char *);
extern void execute_1089(char*, char *);
extern void execute_1091(char*, char *);
extern void execute_1300(char*, char *);
extern void execute_1302(char*, char *);
extern void execute_1511(char*, char *);
extern void execute_1513(char*, char *);
extern void execute_1722(char*, char *);
extern void execute_1724(char*, char *);
extern void execute_1933(char*, char *);
extern void execute_1935(char*, char *);
extern void execute_2144(char*, char *);
extern void execute_2146(char*, char *);
extern void execute_2355(char*, char *);
extern void execute_2357(char*, char *);
extern void execute_2566(char*, char *);
extern void execute_2568(char*, char *);
extern void execute_2777(char*, char *);
extern void execute_2779(char*, char *);
extern void execute_2988(char*, char *);
extern void execute_2990(char*, char *);
extern void execute_3199(char*, char *);
extern void execute_3201(char*, char *);
extern void execute_3410(char*, char *);
extern void execute_3412(char*, char *);
extern void execute_3621(char*, char *);
extern void execute_3623(char*, char *);
extern void execute_3832(char*, char *);
extern void execute_3834(char*, char *);
extern void execute_4043(char*, char *);
extern void execute_4045(char*, char *);
extern void execute_4254(char*, char *);
extern void execute_4256(char*, char *);
extern void execute_4465(char*, char *);
extern void execute_4467(char*, char *);
extern void execute_4676(char*, char *);
extern void execute_4678(char*, char *);
extern void execute_4887(char*, char *);
extern void execute_4889(char*, char *);
extern void execute_5098(char*, char *);
extern void execute_5107(char*, char *);
extern void execute_5108(char*, char *);
extern void execute_5211(char*, char *);
extern void execute_5319(char*, char *);
extern void execute_5321(char*, char *);
extern void execute_5322(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[103] = {(funcp)execute_5330, (funcp)execute_5331, (funcp)execute_15, (funcp)execute_16, (funcp)execute_19, (funcp)execute_20, (funcp)execute_21, (funcp)execute_22, (funcp)execute_5327, (funcp)execute_5328, (funcp)execute_5329, (funcp)execute_18, (funcp)execute_26, (funcp)execute_27, (funcp)execute_236, (funcp)execute_237, (funcp)execute_233, (funcp)execute_234, (funcp)execute_235, (funcp)execute_122, (funcp)execute_123, (funcp)execute_124, (funcp)execute_125, (funcp)execute_126, (funcp)execute_127, (funcp)execute_128, (funcp)execute_129, (funcp)execute_130, (funcp)execute_43, (funcp)execute_44, (funcp)execute_45, (funcp)execute_46, (funcp)execute_47, (funcp)execute_48, (funcp)execute_49, (funcp)execute_50, (funcp)execute_51, (funcp)execute_52, (funcp)execute_32, (funcp)execute_33, (funcp)execute_5101, (funcp)execute_240, (funcp)execute_241, (funcp)execute_242, (funcp)execute_243, (funcp)execute_244, (funcp)execute_245, (funcp)execute_246, (funcp)execute_247, (funcp)execute_456, (funcp)execute_5100, (funcp)execute_458, (funcp)execute_667, (funcp)execute_669, (funcp)execute_878, (funcp)execute_880, (funcp)execute_1089, (funcp)execute_1091, (funcp)execute_1300, (funcp)execute_1302, (funcp)execute_1511, (funcp)execute_1513, (funcp)execute_1722, (funcp)execute_1724, (funcp)execute_1933, (funcp)execute_1935, (funcp)execute_2144, (funcp)execute_2146, (funcp)execute_2355, (funcp)execute_2357, (funcp)execute_2566, (funcp)execute_2568, (funcp)execute_2777, (funcp)execute_2779, (funcp)execute_2988, (funcp)execute_2990, (funcp)execute_3199, (funcp)execute_3201, (funcp)execute_3410, (funcp)execute_3412, (funcp)execute_3621, (funcp)execute_3623, (funcp)execute_3832, (funcp)execute_3834, (funcp)execute_4043, (funcp)execute_4045, (funcp)execute_4254, (funcp)execute_4256, (funcp)execute_4465, (funcp)execute_4467, (funcp)execute_4676, (funcp)execute_4678, (funcp)execute_4887, (funcp)execute_4889, (funcp)execute_5098, (funcp)execute_5107, (funcp)execute_5108, (funcp)execute_5211, (funcp)execute_5319, (funcp)execute_5321, (funcp)execute_5322, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 103;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/PipelineSimulation_behav/xsim.reloc",  (void **)funcTab, 103);
	iki_vhdl_file_variable_register(dp + 496912);
	iki_vhdl_file_variable_register(dp + 496968);


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
