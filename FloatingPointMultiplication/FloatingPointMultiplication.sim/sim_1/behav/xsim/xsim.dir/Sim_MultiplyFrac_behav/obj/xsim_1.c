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
extern void execute_4875(char*, char *);
extern void execute_4874(char*, char *);
extern void execute_13(char*, char *);
extern void execute_14(char*, char *);
extern void execute_15(char*, char *);
extern void execute_16(char*, char *);
extern void execute_17(char*, char *);
extern void execute_18(char*, char *);
extern void execute_19(char*, char *);
extern void execute_20(char*, char *);
extern void execute_229(char*, char *);
extern void execute_4873(char*, char *);
extern void execute_231(char*, char *);
extern void execute_440(char*, char *);
extern void execute_442(char*, char *);
extern void execute_651(char*, char *);
extern void execute_653(char*, char *);
extern void execute_862(char*, char *);
extern void execute_864(char*, char *);
extern void execute_1073(char*, char *);
extern void execute_1075(char*, char *);
extern void execute_1284(char*, char *);
extern void execute_1286(char*, char *);
extern void execute_1495(char*, char *);
extern void execute_1497(char*, char *);
extern void execute_1706(char*, char *);
extern void execute_1708(char*, char *);
extern void execute_1917(char*, char *);
extern void execute_1919(char*, char *);
extern void execute_2128(char*, char *);
extern void execute_2130(char*, char *);
extern void execute_2339(char*, char *);
extern void execute_2341(char*, char *);
extern void execute_2550(char*, char *);
extern void execute_2552(char*, char *);
extern void execute_2761(char*, char *);
extern void execute_2763(char*, char *);
extern void execute_2972(char*, char *);
extern void execute_2974(char*, char *);
extern void execute_3183(char*, char *);
extern void execute_3185(char*, char *);
extern void execute_3394(char*, char *);
extern void execute_3396(char*, char *);
extern void execute_3605(char*, char *);
extern void execute_3607(char*, char *);
extern void execute_3816(char*, char *);
extern void execute_3818(char*, char *);
extern void execute_4027(char*, char *);
extern void execute_4029(char*, char *);
extern void execute_4238(char*, char *);
extern void execute_4240(char*, char *);
extern void execute_4449(char*, char *);
extern void execute_4451(char*, char *);
extern void execute_4660(char*, char *);
extern void execute_4662(char*, char *);
extern void execute_4871(char*, char *);
extern void execute_226(char*, char *);
extern void execute_227(char*, char *);
extern void execute_228(char*, char *);
extern void execute_115(char*, char *);
extern void execute_116(char*, char *);
extern void execute_117(char*, char *);
extern void execute_118(char*, char *);
extern void execute_119(char*, char *);
extern void execute_120(char*, char *);
extern void execute_121(char*, char *);
extern void execute_122(char*, char *);
extern void execute_123(char*, char *);
extern void execute_36(char*, char *);
extern void execute_37(char*, char *);
extern void execute_38(char*, char *);
extern void execute_39(char*, char *);
extern void execute_40(char*, char *);
extern void execute_41(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_44(char*, char *);
extern void execute_45(char*, char *);
extern void execute_25(char*, char *);
extern void execute_26(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[81] = {(funcp)execute_4875, (funcp)execute_4874, (funcp)execute_13, (funcp)execute_14, (funcp)execute_15, (funcp)execute_16, (funcp)execute_17, (funcp)execute_18, (funcp)execute_19, (funcp)execute_20, (funcp)execute_229, (funcp)execute_4873, (funcp)execute_231, (funcp)execute_440, (funcp)execute_442, (funcp)execute_651, (funcp)execute_653, (funcp)execute_862, (funcp)execute_864, (funcp)execute_1073, (funcp)execute_1075, (funcp)execute_1284, (funcp)execute_1286, (funcp)execute_1495, (funcp)execute_1497, (funcp)execute_1706, (funcp)execute_1708, (funcp)execute_1917, (funcp)execute_1919, (funcp)execute_2128, (funcp)execute_2130, (funcp)execute_2339, (funcp)execute_2341, (funcp)execute_2550, (funcp)execute_2552, (funcp)execute_2761, (funcp)execute_2763, (funcp)execute_2972, (funcp)execute_2974, (funcp)execute_3183, (funcp)execute_3185, (funcp)execute_3394, (funcp)execute_3396, (funcp)execute_3605, (funcp)execute_3607, (funcp)execute_3816, (funcp)execute_3818, (funcp)execute_4027, (funcp)execute_4029, (funcp)execute_4238, (funcp)execute_4240, (funcp)execute_4449, (funcp)execute_4451, (funcp)execute_4660, (funcp)execute_4662, (funcp)execute_4871, (funcp)execute_226, (funcp)execute_227, (funcp)execute_228, (funcp)execute_115, (funcp)execute_116, (funcp)execute_117, (funcp)execute_118, (funcp)execute_119, (funcp)execute_120, (funcp)execute_121, (funcp)execute_122, (funcp)execute_123, (funcp)execute_36, (funcp)execute_37, (funcp)execute_38, (funcp)execute_39, (funcp)execute_40, (funcp)execute_41, (funcp)execute_42, (funcp)execute_43, (funcp)execute_44, (funcp)execute_45, (funcp)execute_25, (funcp)execute_26, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 81;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Sim_MultiplyFrac_behav/xsim.reloc",  (void **)funcTab, 81);
	iki_vhdl_file_variable_register(dp + 449432);
	iki_vhdl_file_variable_register(dp + 449488);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Sim_MultiplyFrac_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/Sim_MultiplyFrac_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/Sim_MultiplyFrac_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Sim_MultiplyFrac_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Sim_MultiplyFrac_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
