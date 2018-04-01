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
extern int main(int, char**);
extern void execute_805(char*, char *);
extern void execute_806(char*, char *);
extern void execute_807(char*, char *);
extern void execute_33(char*, char *);
extern void execute_34(char*, char *);
extern void execute_35(char*, char *);
extern void execute_36(char*, char *);
extern void execute_37(char*, char *);
extern void execute_32(char*, char *);
extern void execute_40(char*, char *);
extern void execute_46(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_50(char*, char *);
extern void execute_51(char*, char *);
extern void execute_52(char*, char *);
extern void execute_53(char*, char *);
extern void execute_54(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void execute_57(char*, char *);
extern void execute_58(char*, char *);
extern void execute_59(char*, char *);
extern void execute_60(char*, char *);
extern void execute_61(char*, char *);
extern void execute_62(char*, char *);
extern void execute_63(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_67(char*, char *);
extern void execute_68(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_85(char*, char *);
extern void execute_87(char*, char *);
extern void execute_89(char*, char *);
extern void execute_91(char*, char *);
extern void execute_93(char*, char *);
extern void execute_94(char*, char *);
extern void execute_95(char*, char *);
extern void execute_429(char*, char *);
extern void execute_434(char*, char *);
extern void execute_435(char*, char *);
extern void execute_436(char*, char *);
extern void execute_437(char*, char *);
extern void execute_98(char*, char *);
extern void execute_324(char*, char *);
extern void execute_325(char*, char *);
extern void execute_326(char*, char *);
extern void execute_101(char*, char *);
extern void execute_103(char*, char *);
extern void execute_104(char*, char *);
extern void execute_105(char*, char *);
extern void execute_330(char*, char *);
extern void execute_426(char*, char *);
extern void execute_427(char*, char *);
extern void execute_428(char*, char *);
extern void execute_431(char*, char *);
extern void execute_433(char*, char *);
extern void execute_439(char*, char *);
extern void execute_665(char*, char *);
extern void execute_666(char*, char *);
extern void execute_667(char*, char *);
extern void execute_668(char*, char *);
extern void execute_669(char*, char *);
extern void execute_670(char*, char *);
extern void execute_671(char*, char *);
extern void execute_672(char*, char *);
extern void execute_673(char*, char *);
extern void execute_674(char*, char *);
extern void execute_675(char*, char *);
extern void execute_676(char*, char *);
extern void execute_677(char*, char *);
extern void execute_698(char*, char *);
extern void execute_699(char*, char *);
extern void execute_700(char*, char *);
extern void execute_702(char*, char *);
extern void execute_703(char*, char *);
extern void execute_718(char*, char *);
extern void execute_719(char*, char *);
extern void execute_720(char*, char *);
extern void execute_772(char*, char *);
extern void execute_803(char*, char *);
extern void execute_804(char*, char *);
extern void execute_740(char*, char *);
extern void execute_742(char*, char *);
extern void execute_744(char*, char *);
extern void execute_746(char*, char *);
extern void execute_748(char*, char *);
extern void execute_750(char*, char *);
extern void execute_752(char*, char *);
extern void execute_754(char*, char *);
extern void execute_756(char*, char *);
extern void execute_758(char*, char *);
extern void execute_760(char*, char *);
extern void execute_762(char*, char *);
extern void execute_764(char*, char *);
extern void execute_766(char*, char *);
extern void execute_768(char*, char *);
extern void execute_770(char*, char *);
extern void execute_723(char*, char *);
extern void execute_724(char*, char *);
extern void execute_725(char*, char *);
extern void execute_726(char*, char *);
extern void execute_727(char*, char *);
extern void execute_728(char*, char *);
extern void execute_729(char*, char *);
extern void execute_730(char*, char *);
extern void execute_731(char*, char *);
extern void execute_732(char*, char *);
extern void execute_733(char*, char *);
extern void execute_734(char*, char *);
extern void execute_735(char*, char *);
extern void execute_736(char*, char *);
extern void execute_737(char*, char *);
extern void execute_738(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_25(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_26(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_28(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_29(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_30(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_31(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_32(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[148] = {(funcp)execute_805, (funcp)execute_806, (funcp)execute_807, (funcp)execute_33, (funcp)execute_34, (funcp)execute_35, (funcp)execute_36, (funcp)execute_37, (funcp)execute_32, (funcp)execute_40, (funcp)execute_46, (funcp)execute_47, (funcp)execute_48, (funcp)execute_49, (funcp)execute_50, (funcp)execute_51, (funcp)execute_52, (funcp)execute_53, (funcp)execute_54, (funcp)execute_55, (funcp)execute_56, (funcp)execute_57, (funcp)execute_58, (funcp)execute_59, (funcp)execute_60, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_64, (funcp)execute_65, (funcp)execute_66, (funcp)execute_67, (funcp)execute_68, (funcp)execute_69, (funcp)execute_70, (funcp)execute_85, (funcp)execute_87, (funcp)execute_89, (funcp)execute_91, (funcp)execute_93, (funcp)execute_94, (funcp)execute_95, (funcp)execute_429, (funcp)execute_434, (funcp)execute_435, (funcp)execute_436, (funcp)execute_437, (funcp)execute_98, (funcp)execute_324, (funcp)execute_325, (funcp)execute_326, (funcp)execute_101, (funcp)execute_103, (funcp)execute_104, (funcp)execute_105, (funcp)execute_330, (funcp)execute_426, (funcp)execute_427, (funcp)execute_428, (funcp)execute_431, (funcp)execute_433, (funcp)execute_439, (funcp)execute_665, (funcp)execute_666, (funcp)execute_667, (funcp)execute_668, (funcp)execute_669, (funcp)execute_670, (funcp)execute_671, (funcp)execute_672, (funcp)execute_673, (funcp)execute_674, (funcp)execute_675, (funcp)execute_676, (funcp)execute_677, (funcp)execute_698, (funcp)execute_699, (funcp)execute_700, (funcp)execute_702, (funcp)execute_703, (funcp)execute_718, (funcp)execute_719, (funcp)execute_720, (funcp)execute_772, (funcp)execute_803, (funcp)execute_804, (funcp)execute_740, (funcp)execute_742, (funcp)execute_744, (funcp)execute_746, (funcp)execute_748, (funcp)execute_750, (funcp)execute_752, (funcp)execute_754, (funcp)execute_756, (funcp)execute_758, (funcp)execute_760, (funcp)execute_762, (funcp)execute_764, (funcp)execute_766, (funcp)execute_768, (funcp)execute_770, (funcp)execute_723, (funcp)execute_724, (funcp)execute_725, (funcp)execute_726, (funcp)execute_727, (funcp)execute_728, (funcp)execute_729, (funcp)execute_730, (funcp)execute_731, (funcp)execute_732, (funcp)execute_733, (funcp)execute_734, (funcp)execute_735, (funcp)execute_736, (funcp)execute_737, (funcp)execute_738, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_25, (funcp)transaction_26, (funcp)transaction_28, (funcp)transaction_29, (funcp)transaction_30, (funcp)transaction_31, (funcp)transaction_32, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_58};
const int NumRelocateId= 148;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/FiveStagePipeline_behav/xsim.reloc",  (void **)funcTab, 148);
	iki_vhdl_file_variable_register(dp + 358432);
	iki_vhdl_file_variable_register(dp + 358488);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/FiveStagePipeline_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/FiveStagePipeline_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/FiveStagePipeline_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/FiveStagePipeline_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/FiveStagePipeline_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
