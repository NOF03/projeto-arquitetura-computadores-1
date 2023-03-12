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
static const char *ng0 = "C:/Users/nunoo/Documents/XilinxProjects/P1/ALU.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1306069469_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t23[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    int t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned char t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;

LAB0:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5195);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB11:    t5 = (t0 + 5198);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB12:    t8 = (t0 + 5201);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB13:    t11 = (t0 + 5204);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB14:    t14 = (t0 + 5207);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB15:    t17 = (t0 + 5210);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB8;

LAB16:    t20 = (t0 + 5213);
    t22 = xsi_mem_cmp(t20, t2, 3U);
    if (t22 == 1)
        goto LAB9;

LAB17:
LAB10:    xsi_set_current_line(37, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)1, 8U);
    t3 = (t0 + 3232);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(37, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    memset(t2, (unsigned char)1, 5U);
    t3 = (t0 + 3296);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(20, ng0);
    t24 = (t0 + 1032U);
    t25 = *((char **)t24);
    t24 = (t0 + 5088U);
    t26 = (t0 + 1192U);
    t27 = *((char **)t26);
    t26 = (t0 + 5104U);
    t28 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t23, t25, t24, t27, t26);
    t29 = (t23 + 12U);
    t30 = *((unsigned int *)t29);
    t31 = (1U * t30);
    t32 = (8U != t31);
    if (t32 == 1)
        goto LAB19;

LAB20:    t33 = (t0 + 3232);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    memcpy(t37, t28, 8U);
    xsi_driver_first_trans_fast_port(t33);
    goto LAB2;

LAB4:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5088U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5104U);
    t6 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t23, t2, t1, t5, t3);
    t8 = (t23 + 12U);
    t30 = *((unsigned int *)t8);
    t31 = (1U * t30);
    t32 = (8U != t31);
    if (t32 == 1)
        goto LAB21;

LAB22:    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB5:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5088U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5104U);
    t6 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t23, t2, t1, t5, t3);
    t8 = (t23 + 12U);
    t30 = *((unsigned int *)t8);
    t31 = (1U * t30);
    t32 = (8U != t31);
    if (t32 == 1)
        goto LAB23;

LAB24:    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB6:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5088U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5104U);
    t6 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t23, t2, t1, t5, t3);
    t8 = (t23 + 12U);
    t30 = *((unsigned int *)t8);
    t31 = (1U * t30);
    t32 = (8U != t31);
    if (t32 == 1)
        goto LAB25;

LAB26:    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB7:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5088U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5104U);
    t6 = ieee_p_2592010699_sub_1306069469_503743352(IEEE_P_2592010699, t23, t2, t1, t5, t3);
    t8 = (t23 + 12U);
    t30 = *((unsigned int *)t8);
    t31 = (1U * t30);
    t32 = (8U != t31);
    if (t32 == 1)
        goto LAB27;

LAB28:    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB8:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5088U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5104U);
    t6 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t23, t2, t1, t5, t3);
    t8 = (t23 + 12U);
    t30 = *((unsigned int *)t8);
    t31 = (1U * t30);
    t32 = (8U != t31);
    if (t32 == 1)
        goto LAB29;

LAB30:    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB9:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5088U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5104U);
    t32 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t2, t1, t5, t3);
    if (t32 != 0)
        goto LAB31;

LAB33:
LAB32:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5088U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5104U);
    t32 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t3);
    if (t32 != 0)
        goto LAB34;

LAB36:
LAB35:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5088U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5104U);
    t32 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t3);
    if (t32 != 0)
        goto LAB37;

LAB39:
LAB38:    goto LAB2;

LAB18:;
LAB19:    xsi_size_not_matching(8U, t31, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(8U, t31, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(8U, t31, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(8U, t31, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(8U, t31, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(8U, t31, 0);
    goto LAB30;

LAB31:    xsi_set_current_line(28, ng0);
    t6 = xsi_get_transient_memory(5U);
    memset(t6, 0, 5U);
    t8 = t6;
    memset(t8, (unsigned char)2, 5U);
    t4 = (0 - 4);
    t30 = (t4 * -1);
    t31 = (1U * t30);
    t9 = (t8 + t31);
    *((unsigned char *)t9) = (unsigned char)3;
    t7 = (1 - 4);
    t38 = (t7 * -1);
    t39 = (1U * t38);
    t11 = (t8 + t39);
    *((unsigned char *)t11) = (unsigned char)3;
    t12 = (t0 + 3296);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 5U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB32;

LAB34:    xsi_set_current_line(31, ng0);
    t6 = xsi_get_transient_memory(5U);
    memset(t6, 0, 5U);
    t8 = t6;
    memset(t8, (unsigned char)2, 5U);
    t4 = (1 - 4);
    t30 = (t4 * -1);
    t31 = (1U * t30);
    t9 = (t8 + t31);
    *((unsigned char *)t9) = (unsigned char)3;
    t7 = (2 - 4);
    t38 = (t7 * -1);
    t39 = (1U * t38);
    t11 = (t8 + t39);
    *((unsigned char *)t11) = (unsigned char)3;
    t10 = (4 - 4);
    t40 = (t10 * -1);
    t41 = (1U * t40);
    t12 = (t8 + t41);
    *((unsigned char *)t12) = (unsigned char)3;
    t14 = (t0 + 3296);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t6, 5U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB35;

LAB37:    xsi_set_current_line(34, ng0);
    t6 = xsi_get_transient_memory(5U);
    memset(t6, 0, 5U);
    t8 = t6;
    memset(t8, (unsigned char)2, 5U);
    t4 = (3 - 4);
    t30 = (t4 * -1);
    t31 = (1U * t30);
    t9 = (t8 + t31);
    *((unsigned char *)t9) = (unsigned char)3;
    t7 = (4 - 4);
    t38 = (t7 * -1);
    t39 = (1U * t38);
    t11 = (t8 + t39);
    *((unsigned char *)t11) = (unsigned char)3;
    t12 = (t0 + 3296);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 5U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB38;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/MBtest_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
