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

char *IEEE_P_3620187407;
char *IEEE_P_1242562249;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_2592010699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_4135995726_3212880686_init();
    work_a_2843743529_3212880686_init();
    work_a_0734077047_3212880686_init();
    work_a_0306977970_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_3523585192_3212880686_init();
    work_a_4294229439_3212880686_init();
    work_a_1991350011_3212880686_init();
    work_a_4204489651_3212880686_init();
    work_a_0511085812_3708392848_init();
    work_a_1751512185_3212880686_init();
    work_a_2630125244_3212880686_init();
    work_a_2120598078_3708392848_init();
    work_a_2029681316_2372691052_init();


    xsi_register_tops("work_a_2029681316_2372691052");

    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}
