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
    work_m_00000000001009375268_3453939979_init();
    work_m_00000000002788217360_4243774238_init();
    work_m_00000000004163775431_0412835602_init();
    work_m_00000000003342465865_0817930445_init();
    work_m_00000000002673572337_3431857156_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002673572337_3431857156");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
