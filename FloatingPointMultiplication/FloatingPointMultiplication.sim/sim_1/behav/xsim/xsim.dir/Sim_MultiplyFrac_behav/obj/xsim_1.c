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
extern void execute_4873(char*, char *);
extern void execute_12(char*, char *);
extern void execute_13(char*, char *);
extern void execute_14(char*, char *);
extern void execute_15(char*, char *);
extern void execute_16(char*, char *);
extern void execute_17(char*, char *);
extern void execute_18(char*, char *);
extern void execute_19(char*, char *);
extern void execute_228(char*, char *);
extern void execute_4872(char*, char *);
extern void execute_230(char*, char *);
extern void execute_439(char*, char *);
extern void execute_441(char*, char *);
extern void execute_650(char*, char *);
extern void execute_652(char*, char *);
extern void execute_861(char*, char *);
extern void execute_863(char*, char *);
extern void execute_1072(char*, char *);
extern void execute_1074(char*, char *);
extern void execute_1283(char*, char *);
extern void execute_1285(char*, char *);
extern void execute_1494(char*, char *);
extern void execute_1496(char*, char *);
extern void execute_1705(char*, char *);
extern void execute_1707(char*, char *);
extern void execute_1916(char*, char *);
extern void execute_1918(char*, char *);
extern void execute_2127(char*, char *);
extern void execute_2129(char*, char *);
extern void execute_2338(char*, char *);
extern void execute_2340(char*, char *);
extern void execute_2549(char*, char *);
extern void execute_2551(char*, char *);
extern void execute_2760(char*, char *);
extern void execute_2762(char*, char *);
extern void execute_2971(char*, char *);
extern void execute_2973(char*, char *);
extern void execute_3182(char*, char *);
extern void execute_3184(char*, char *);
extern void execute_3393(char*, char *);
extern void execute_3395(char*, char *);
extern void execute_3604(char*, char *);
extern void execute_3606(char*, char *);
extern void execute_3815(char*, char *);
extern void execute_3817(char*, char *);
extern void execute_4026(char*, char *);
extern void execute_4028(char*, char *);
extern void execute_4237(char*, char *);
extern void execute_4239(char*, char *);
extern void execute_4448(char*, char *);
extern void execute_4450(char*, char *);
extern void execute_4659(char*, char *);
extern void execute_4661(char*, char *);
extern void execute_4870(char*, char *);
extern void execute_225(char*, char *);
extern void execute_226(char*, char *);
extern void execute_227(char*, char *);
extern void execute_114(char*, char *);
extern void execute_115(char*, char *);
extern void execute_116(char*, char *);
extern void execute_117(char*, char *);
extern void execute_118(char*, char *);
extern void execute_119(char*, char *);
extern void execute_120(char*, char *);
extern void execute_121(char*, char *);
extern void execute_122(char*, char *);
extern void execute_35(char*, char *);
extern void execute_36(char*, char *);
extern void execute_37(char*, char *);
extern void execute_38(char*, char *);
extern void execute_39(char*, char *);
extern void execute_40(char*, char *);
extern void execute_41(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_44(char*, char *);
extern void execute_24(char*, char *);
extern void execute_25(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[80] = {(funcp)execute_4873, (funcp)execute_12, (funcp)execute_13, (funcp)execute_14, (funcp)execute_15, (funcp)execute_16, (funcp)execute_17, (funcp)execute_18, (funcp)execute_19, (funcp)execute_228, (funcp)execute_4872, (funcp)execute_230, (funcp)execute_439, (funcp)execute_441, (funcp)execute_650, (funcp)execute_652, (funcp)execute_861, (funcp)execute_863, (funcp)execute_1072, (funcp)execute_1074, (funcp)execute_1283, (funcp)execute_1285, (funcp)execute_1494, (funcp)execute_1496, (funcp)execute_1705, (funcp)execute_1707, (funcp)execute_1916, (funcp)execute_1918, (funcp)execute_2127, (funcp)execute_2129, (funcp)execute_2338, (funcp)execute_2340, (funcp)execute_2549, (funcp)execute_2551, (funcp)execute_2760, (funcp)execute_2762, (funcp)execute_2971, (funcp)execute_2973, (funcp)execute_3182, (funcp)execute_3184, (funcp)execute_3393, (funcp)execute_3395, (funcp)execute_3604, (funcp)execute_3606, (funcp)execute_3815, (funcp)execute_3817, (funcp)execute_4026, (funcp)execute_4028, (funcp)execute_4237, (funcp)execute_4239, (funcp)execute_4448, (funcp)execute_4450, (funcp)execute_4659, (funcp)execute_4661, (funcp)execute_4870, (funcp)execute_225, (funcp)execute_226, (funcp)execute_227, (funcp)execute_114, (funcp)execute_115, (funcp)execute_116, (funcp)execute_117, (funcp)execute_118, (funcp)execute_119, (funcp)execute_120, (funcp)execute_121, (funcp)execute_122, (funcp)execute_35, (funcp)execute_36, (funcp)execute_37, (funcp)execute_38, (funcp)execute_39, (funcp)execute_40, (funcp)execute_41, (funcp)execute_42, (funcp)execute_43, (funcp)execute_44, (funcp)execute_24, (funcp)execute_25, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 80;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Sim_MultiplyFrac_behav/xsim.reloc",  (void **)funcTab, 80);
	iki_vhdl_file_variable_register(dp + 445104);
	iki_vhdl_file_variable_register(dp + 445160);


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
