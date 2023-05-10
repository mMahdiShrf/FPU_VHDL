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
static const char *ng0 = "D:/Education/Semester 7/ISE/extra precise/FPU_md_v4/normalizer.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
char *ieee_p_1242562249_sub_1830103426_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2770553711_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2973918132_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    int t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    int t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1312U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5592);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 2928U);
    t8 = *((char **)t4);
    t9 = *((int *)t8);
    t10 = (t9 - 1);
    t4 = (t0 + 2928U);
    t11 = *((char **)t4);
    t4 = (t11 + 0);
    *((int *)t4) = t10;
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 2928U);
    t5 = *((char **)t2);
    t9 = *((int *)t5);
    t10 = (t9 - 47);
    t12 = (t10 * -1);
    xsi_vhdl_check_range_of_index(47, 0, -1, t9);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t2 = (t4 + t14);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 3048U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(40, ng0);
    t8 = (t0 + 3048U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2928U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t1 = (t9 > 46);
    if (t1 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2928U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t10 = (46 - t9);
    t2 = (t0 + 5752);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t16 = *((char **)t11);
    *((int *)t16) = t10;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 5816);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB18:
LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2928U);
    t5 = *((char **)t2);
    t9 = *((int *)t5);
    t6 = (t9 > 24);
    if (t6 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2928U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t10 = (24 - t9);
    t2 = (t0 + 5752);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t16 = *((char **)t11);
    *((int *)t16) = t10;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 5816);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB15:    goto LAB12;

LAB14:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2928U);
    t8 = *((char **)t2);
    t10 = *((int *)t8);
    t15 = (t10 - 24);
    t2 = (t0 + 5752);
    t11 = (t2 + 56U);
    t16 = *((char **)t11);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((int *)t18) = t15;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5816);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB15;

LAB17:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2928U);
    t5 = *((char **)t2);
    t10 = *((int *)t5);
    t15 = (t10 - 46);
    t2 = (t0 + 5752);
    t8 = (t2 + 56U);
    t11 = *((char **)t8);
    t16 = (t11 + 56U);
    t17 = *((char **)t16);
    *((int *)t17) = t15;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 5816);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB18;

}

static void work_a_2973918132_3212880686_p_1(char *t0)
{
    char t5[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t20;
    char *t21;
    char *t22;
    int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t15 = (t0 + 2472U);
    t16 = *((char **)t15);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)2);
    if (t18 != 0)
        goto LAB5;

LAB6:
LAB2:    t29 = (t0 + 5608);
    *((int *)t29) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t1 = (t0 + 9288U);
    t7 = (t0 + 2312U);
    t8 = *((char **)t7);
    t9 = *((int *)t8);
    t7 = ieee_p_1242562249_sub_1830103426_1035706684(IEEE_P_1242562249, t5, t6, t1, t9);
    t10 = (t0 + 5880);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t7, 48U);
    xsi_driver_first_trans_fast(t10);
    goto LAB2;

LAB5:    t15 = (t0 + 1192U);
    t20 = *((char **)t15);
    t15 = (t0 + 9288U);
    t21 = (t0 + 2312U);
    t22 = *((char **)t21);
    t23 = *((int *)t22);
    t21 = ieee_p_1242562249_sub_2770553711_1035706684(IEEE_P_1242562249, t19, t20, t15, t23);
    t24 = (t0 + 5880);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t21, 48U);
    xsi_driver_first_trans_fast(t24);
    goto LAB2;

}

static void work_a_2973918132_3212880686_p_2(char *t0)
{
    char t5[16];
    char t8[16];
    char t11[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 4528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(67, ng0);

LAB9:    t2 = (t0 + 5624);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB10;

LAB1:    return;
LAB5:    xsi_set_current_line(68, ng0);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t9 = ((IEEE_P_2592010699) + 4024);
    t10 = (t0 + 9272U);
    t6 = xsi_base_array_concat(t6, t8, t9, (char)99, (unsigned char)2, (char)97, t7, t10, (char)101);
    t12 = (t0 + 2312U);
    t13 = *((char **)t12);
    t14 = *((int *)t13);
    t12 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, t14, 9);
    t15 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t5, t6, t8, t12, t11);
    t16 = (t0 + 5944);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t15, 9U);
    xsi_driver_first_trans_fast(t16);
    goto LAB4;

LAB6:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t0 + 9272U);
    t2 = xsi_base_array_concat(t2, t8, t6, (char)99, (unsigned char)2, (char)97, t3, t7, (char)101);
    t9 = (t0 + 2312U);
    t10 = *((char **)t9);
    t14 = *((int *)t10);
    t9 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, t14, 9);
    t12 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t5, t2, t8, t9, t11);
    t13 = (t0 + 5944);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t12, 9U);
    xsi_driver_first_trans_fast(t13);
    goto LAB4;

LAB7:    t3 = (t0 + 5624);
    *((int *)t3) = 0;
    goto LAB2;

LAB8:    goto LAB7;

LAB10:    goto LAB8;

}

static void work_a_2973918132_3212880686_p_3(char *t0)
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

LAB0:    t1 = (t0 + 4776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t4 = (8 - 8);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (char *)((nl0) + t8);
    goto **((char **)t9);

LAB4:    xsi_set_current_line(72, ng0);

LAB9:    t2 = (t0 + 5640);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB10;

LAB1:    return;
LAB5:    xsi_set_current_line(73, ng0);
    t10 = (t0 + 1992U);
    t11 = *((char **)t10);
    t12 = (8 - 7);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t10 = (t11 + t14);
    t15 = (t0 + 6008);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 8U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB4;

LAB6:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 9553);
    t9 = (t0 + 6008);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t15 = (t11 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB4;

LAB7:    t3 = (t0 + 5640);
    *((int *)t3) = 0;
    goto LAB2;

LAB8:    goto LAB7;

LAB10:    goto LAB8;

}

static void work_a_2973918132_3212880686_p_4(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(76, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (8 - 8);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t12 = ((IEEE_P_2592010699) + 4024);
    t8 = xsi_base_array_concat(t8, t11, t12, (char)99, t7, (char)99, t10, (char)101);
    t13 = (1U + 1U);
    t14 = (2U != t13);
    if (t14 == 1)
        goto LAB5;

LAB6:    t15 = (t0 + 6072);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t8, 2U);
    xsi_driver_first_trans_fast(t15);

LAB2:    t20 = (t0 + 5656);
    *((int *)t20) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(2U, t13, 0);
    goto LAB6;

}

static void work_a_2973918132_3212880686_p_5(char *t0)
{
    char t15[16];
    char t17[16];
    char t24[16];
    char t26[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t16;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    char *t23;
    char *t25;
    char *t27;
    char *t28;
    int t29;
    unsigned int t30;
    unsigned char t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;

LAB0:    t1 = (t0 + 5272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t2 = (t0 + 9561);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB8:    t6 = (t0 + 9563);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB9:
LAB7:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 9586);
    t4 = (t0 + 6136);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 47U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(79, ng0);

LAB15:    t2 = (t0 + 5672);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB5:    xsi_set_current_line(80, ng0);
    t9 = (t0 + 2152U);
    t10 = *((char **)t9);
    t11 = (47 - 24);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t9 = (t10 + t13);
    t16 = ((IEEE_P_2592010699) + 4024);
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 24;
    t19 = (t18 + 4U);
    *((int *)t19) = 0;
    t19 = (t18 + 8U);
    *((int *)t19) = -1;
    t20 = (0 - 24);
    t21 = (t20 * -1);
    t21 = (t21 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t21;
    t14 = xsi_base_array_concat(t14, t15, t16, (char)99, (unsigned char)2, (char)97, t9, t17, (char)101);
    t19 = (t0 + 9565);
    t25 = ((IEEE_P_2592010699) + 4024);
    t27 = (t26 + 0U);
    t28 = (t27 + 0U);
    *((int *)t28) = 0;
    t28 = (t27 + 4U);
    *((int *)t28) = 20;
    t28 = (t27 + 8U);
    *((int *)t28) = 1;
    t29 = (20 - 0);
    t21 = (t29 * 1);
    t21 = (t21 + 1);
    t28 = (t27 + 12U);
    *((unsigned int *)t28) = t21;
    t23 = xsi_base_array_concat(t23, t24, t25, (char)97, t14, t15, (char)97, t19, t26, (char)101);
    t21 = (1U + 25U);
    t30 = (t21 + 21U);
    t31 = (47U != t30);
    if (t31 == 1)
        goto LAB11;

LAB12:    t28 = (t0 + 6136);
    t32 = (t28 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t23, 47U);
    xsi_driver_first_trans_fast_port(t28);
    goto LAB4;

LAB6:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t11 = (47 - 47);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t2 = (t3 + t13);
    t4 = (t0 + 6136);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 47U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:;
LAB11:    xsi_size_not_matching(47U, t30, 0);
    goto LAB12;

LAB13:    t3 = (t0 + 5672);
    *((int *)t3) = 0;
    goto LAB2;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

}


extern void work_a_2973918132_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2973918132_3212880686_p_0,(void *)work_a_2973918132_3212880686_p_1,(void *)work_a_2973918132_3212880686_p_2,(void *)work_a_2973918132_3212880686_p_3,(void *)work_a_2973918132_3212880686_p_4,(void *)work_a_2973918132_3212880686_p_5};
	xsi_register_didat("work_a_2973918132_3212880686", "isim/main_tb_isim_beh.exe.sim/work/a_2973918132_3212880686.didat");
	xsi_register_executes(pe);
}
