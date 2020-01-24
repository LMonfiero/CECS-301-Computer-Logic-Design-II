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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002289653480_3349951390_init();
    work_m_00000000001917529076_3471756547_init();
    work_m_00000000004237554075_0827562627_init();
    work_m_00000000003558132878_0064278218_init();
    work_m_00000000004175778183_1750549319_init();
    work_m_00000000004010564109_3951168415_init();
    work_m_00000000004244182708_2611456719_init();
    work_m_00000000001733036904_4214565228_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001733036904_4214565228");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
