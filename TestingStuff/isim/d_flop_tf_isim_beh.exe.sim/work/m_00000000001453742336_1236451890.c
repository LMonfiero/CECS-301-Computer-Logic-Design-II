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
static const char *ng0 = "C:/Users/louis/Documents/GitHub_Repositories/CECS-301-Computer-Logic-Design-II/TestingStuff/dflop.v";
static unsigned int ng1[] = {0U, 0U};

static void NetReassign_26_2(char *);


static void Always_25_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 3824);
    *((int *)t2) = 1;
    t3 = (t0 + 3040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(26, ng0);
    t4 = (t0 + 2088);
    xsi_set_assignedflag(t4);
    t5 = (t0 + 5380);
    *((int *)t5) = 1;
    NetReassign_26_2(t0);
    goto LAB2;

}

static void Always_27_1(char *t0)
{
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 3840);
    *((int *)t2) = 1;
    t3 = (t0 + 3288);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1368U);
    t11 = *((char **)t5);
    xsi_vlogtype_concat(t14, 2, 2, 2U, t11, 1, t4, 1);
    t5 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t5, t14, 0, 0, 1, 0LL);
    t12 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t12, t14, 1, 0, 1, 0LL);

LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(29, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    t13 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t13, t11, 1, 0, 1, 0LL);
    goto LAB7;

}

static void NetReassign_26_2(char *t0)
{
    char t4[8];
    char t9[8];
    char *t1;
    char *t2;
    unsigned int t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;

LAB0:    t1 = (t0 + 3504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t3 = 0;
    t2 = (t0 + 1928);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 1368U);
    t8 = *((char **)t7);
    t10 = *((unsigned int *)t6);
    t11 = *((unsigned int *)t8);
    t12 = (t10 ^ t11);
    *((unsigned int *)t9) = t12;
    t7 = (t6 + 4);
    t13 = (t8 + 4);
    t14 = (t9 + 4);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t13);
    t17 = (t15 | t16);
    *((unsigned int *)t14) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB4;

LAB5:
LAB6:    memset(t4, 0, 8);
    t22 = (t9 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t9);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB10;

LAB8:    if (*((unsigned int *)t22) == 0)
        goto LAB7;

LAB9:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;

LAB10:    t29 = (t4 + 4);
    t30 = (t9 + 4);
    t31 = *((unsigned int *)t9);
    t32 = (~(t31));
    *((unsigned int *)t4) = t32;
    *((unsigned int *)t29) = 0;
    if (*((unsigned int *)t30) != 0)
        goto LAB12;

LAB11:    t37 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t37 & 1U);
    t38 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t38 & 1U);
    t39 = (t0 + 5380);
    if (*((int *)t39) > 0)
        goto LAB13;

LAB14:    if (t3 > 0)
        goto LAB15;

LAB16:    t42 = (t0 + 3856);
    *((int *)t42) = 0;

LAB17:
LAB1:    return;
LAB4:    t20 = *((unsigned int *)t9);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t9) = (t20 | t21);
    goto LAB6;

LAB7:    *((unsigned int *)t4) = 1;
    goto LAB10;

LAB12:    t33 = *((unsigned int *)t4);
    t34 = *((unsigned int *)t30);
    *((unsigned int *)t4) = (t33 | t34);
    t35 = *((unsigned int *)t29);
    t36 = *((unsigned int *)t30);
    *((unsigned int *)t29) = (t35 | t36);
    goto LAB11;

LAB13:    t40 = (t0 + 2088);
    xsi_vlogvar_assignassignvalue(t40, t4, 0, 0, 0, 1, ((int*)(t39)));
    t3 = 1;
    goto LAB14;

LAB15:    t41 = (t0 + 3856);
    *((int *)t41) = 1;
    goto LAB17;

}


extern void work_m_00000000001453742336_1236451890_init()
{
	static char *pe[] = {(void *)Always_25_0,(void *)Always_27_1,(void *)NetReassign_26_2};
	xsi_register_didat("work_m_00000000001453742336_1236451890", "isim/d_flop_tf_isim_beh.exe.sim/work/m_00000000001453742336_1236451890.didat");
	xsi_register_executes(pe);
}
