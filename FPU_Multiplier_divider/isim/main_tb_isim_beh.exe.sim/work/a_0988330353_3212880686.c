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
static const char *ng0 = "D:/Education/Semester 7/ISE/extra precise/FPU_md_v4/exp_adder.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_3273497107_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3273568981_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_0988330353_3212880686_p_0(char *t0)
{
    char t5[16];
    char t6[16];
    char t9[16];
    char t14[16];
    char t20[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 3152U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(26, ng0);

LAB9:    t2 = (t0 + 3968);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB10;

LAB1:    return;
LAB5:    xsi_set_current_line(27, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t0 + 6412U);
    t7 = xsi_base_array_concat(t7, t9, t10, (char)99, (unsigned char)2, (char)97, t8, t11, (char)101);
    t12 = (t0 + 1192U);
    t13 = *((char **)t12);
    t15 = ((IEEE_P_2592010699) + 4024);
    t16 = (t0 + 6428U);
    t12 = xsi_base_array_concat(t12, t14, t15, (char)99, (unsigned char)2, (char)97, t13, t16, (char)101);
    t17 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t6, t7, t9, t12, t14);
    t18 = (t0 + 6553);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 8;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t23 = (8 - 0);
    t24 = (t23 * 1);
    t24 = (t24 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t24;
    t22 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t5, t17, t6, t18, t20);
    t25 = (t0 + 4080);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t22, 9U);
    xsi_driver_first_trans_fast(t25);
    goto LAB4;

LAB6:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t0 + 6412U);
    t2 = xsi_base_array_concat(t2, t9, t7, (char)99, (unsigned char)2, (char)97, t3, t8, (char)101);
    t10 = (t0 + 1192U);
    t11 = *((char **)t10);
    t12 = ((IEEE_P_2592010699) + 4024);
    t13 = (t0 + 6428U);
    t10 = xsi_base_array_concat(t10, t14, t12, (char)99, (unsigned char)2, (char)97, t11, t13, (char)101);
    t15 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t6, t2, t9, t10, t14);
    t16 = (t0 + 6562);
    t18 = (t20 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 0;
    t19 = (t18 + 4U);
    *((int *)t19) = 8;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t23 = (8 - 0);
    t24 = (t23 * 1);
    t24 = (t24 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t24;
    t19 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t5, t15, t6, t16, t20);
    t21 = (t0 + 4080);
    t22 = (t21 + 56U);
    t25 = *((char **)t22);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t19, 9U);
    xsi_driver_first_trans_fast(t21);
    goto LAB4;

LAB7:    t3 = (t0 + 3968);
    *((int *)t3) = 0;
    goto LAB2;

LAB8:    goto LAB7;

LAB10:    goto LAB8;

}

static void work_a_0988330353_3212880686_p_1(char *t0)
{
    char t1[16];
    char t6[16];
    char *t2;
    char *t3;
    char *t4;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(31, ng0);

LAB3:    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 6460U);
    t4 = (t0 + 6571);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 8;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (8 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t1, t3, t2, t4, t6);
    t11 = (t0 + 4144);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 9U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 3984);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0988330353_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t4 = (8 - 8);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (char *)((nl0) + t8);
    goto **((char **)t9);

LAB4:    xsi_set_current_line(34, ng0);

LAB9:    t2 = (t0 + 4000);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB10;

LAB1:    return;
LAB5:    xsi_set_current_line(35, ng0);
    t10 = (t0 + 1672U);
    t11 = *((char **)t10);
    t12 = (8 - 7);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t10 = (t11 + t14);
    t15 = (t0 + 4208);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 8U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB4;

LAB6:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 6580);
    t9 = (t0 + 4208);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t15 = (t11 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB4;

LAB7:    t3 = (t0 + 4000);
    *((int *)t3) = 0;
    goto LAB2;

LAB8:    goto LAB7;

LAB10:    goto LAB8;

}


extern void work_a_0988330353_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0988330353_3212880686_p_0,(void *)work_a_0988330353_3212880686_p_1,(void *)work_a_0988330353_3212880686_p_2};
	xsi_register_didat("work_a_0988330353_3212880686", "isim/main_tb_isim_beh.exe.sim/work/a_0988330353_3212880686.didat");
	xsi_register_executes(pe);
}
