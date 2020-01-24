/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/louis/Documents/GitHub_Repositories/CECS-301-Computer-Logic-Design-II/Project_2/Display_tf.v";
static int ng1[] = {0, 0};
static int ng2[] = {256, 0};
static const char *ng3 = ".";
static int ng4[] = {1, 0};



static void Initial_45_0(char *t0)
{
    char t6[8];
    char t13[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);

LAB4:    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(56, ng0);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB7;

LAB8:    goto LAB1;

LAB7:    xsi_set_current_line(57, ng0);

LAB9:    xsi_set_current_line(58, ng0);
    *((int *)t13) = xsi_vlog_rtl_dist_uniform(0, 0, -2147483648, 2147483647);
    t14 = (t13 + 4);
    *((int *)t14) = 0;
    t15 = (t0 + 1608);
    xsi_vlogvar_assign_value(t15, t13, 0, 0, 1);
    xsi_set_current_line(59, ng0);
    *((int *)t6) = xsi_vlog_rtl_dist_uniform(0, 0, -2147483648, 2147483647);
    t2 = (t6 + 4);
    *((int *)t2) = 0;
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t6, 0, 0, 1);
    xsi_set_current_line(60, ng0);
    xsi_vlogfile_write(0, 0, 1, ng3, 1, t0);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1928);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB6;

}


extern void work_m_00000000001733036904_4214565228_init()
{
	static char *pe[] = {(void *)Initial_45_0};
	xsi_register_didat("work_m_00000000001733036904_4214565228", "isim/Display_tf_isim_beh.exe.sim/work/m_00000000001733036904_4214565228.didat");
	xsi_register_executes(pe);
}
