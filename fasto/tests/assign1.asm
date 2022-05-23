	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$4, _Incorre_43_
# was:	la	_Incorre_43__addr, _Incorre_43_
	ori	$3, $0, 16
# was:	ori	_Incorre_43__init, $0, 16
	sw	$3, 0($4)
# was:	sw	_Incorre_43__init, 0(_Incorre_43__addr)
	la	$4, _true
# was:	la	_true_addr, _true
	ori	$3, $0, 4
# was:	ori	_true_init, $0, 4
	sw	$3, 0($4)
# was:	sw	_true_init, 0(_true_addr)
	la	$3, _false
# was:	la	_false_addr, _false
	ori	$4, $0, 5
# was:	ori	_false_init, $0, 5
	sw	$4, 0($3)
# was:	sw	_false_init, 0(_false_addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function mul
mul:
	sw	$31, -4($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -16
# 	ori	_param_x_1_,$2,0
# 	ori	_param_y_2_,$3,0
# 	ori	_eq_L_8_,_param_x_1_,0
	ori	$5, $0, 0
# was:	ori	_eq_R_9_, $0, 0
	ori	$4, $0, 0
# was:	ori	_cond_7_, $0, 0
	bne	$2, $5, _false_10_
# was:	bne	_eq_L_8_, _eq_R_9_, _false_10_
	ori	$4, $0, 1
# was:	ori	_cond_7_, $0, 1
_false_10_:
	bne	$4, $0, _then_4_
# was:	bne	_cond_7_, $0, _then_4_
	j	_else_5_
_then_4_:
	ori	$2, $0, 0
# was:	ori	_mulres_3_, $0, 0
	j	_endif_6_
_else_5_:
	ori	$4, $0, 0
# was:	ori	_lt_L_15_, $0, 0
# 	ori	_lt_R_16_,_param_x_1_,0
	slt	$4, $4, $2
# was:	slt	_cond_14_, _lt_L_15_, _lt_R_16_
	bne	$4, $0, _then_11_
# was:	bne	_cond_14_, $0, _then_11_
	j	_else_12_
_then_11_:
	ori	$16, $3, 0
# was:	ori	_plus_L_17_, _param_y_2_, 0
# 	ori	_minus_L_20_,_param_x_1_,0
	ori	$4, $0, 1
# was:	ori	_minus_R_21_, $0, 1
	sub	$2, $2, $4
# was:	sub	_arg_19_, _minus_L_20_, _minus_R_21_
# 	ori	_arg_22_,_param_y_2_,0
# 	ori	$2,_arg_19_,0
# 	ori	$3,_arg_22_,0
	jal	mul
# was:	jal	mul, $2 $3
# 	ori	_plus_R_18_,$2,0
	add	$2, $16, $2
# was:	add	_mulres_3_, _plus_L_17_, _plus_R_18_
	j	_endif_13_
_else_12_:
	ori	$17, $0, 0
# was:	ori	_minus_L_23_, $0, 0
	ori	$16, $3, 0
# was:	ori	_minus_L_25_, _param_y_2_, 0
# 	ori	_plus_L_28_,_param_x_1_,0
	ori	$4, $0, 1
# was:	ori	_plus_R_29_, $0, 1
	add	$2, $2, $4
# was:	add	_arg_27_, _plus_L_28_, _plus_R_29_
# 	ori	_arg_30_,_param_y_2_,0
# 	ori	$2,_arg_27_,0
# 	ori	$3,_arg_30_,0
	jal	mul
# was:	jal	mul, $2 $3
# 	ori	_minus_R_26_,$2,0
	sub	$2, $16, $2
# was:	sub	_minus_R_24_, _minus_L_25_, _minus_R_26_
	sub	$2, $17, $2
# was:	sub	_mulres_3_, _minus_L_23_, _minus_R_24_
_endif_13_:
_endif_6_:
# 	ori	$2,_mulres_3_,0
	addi	$29, $29, 16
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function readInt
readInt:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_i_31_,$2,0
	jal	getint
# was:	jal	getint, $2
# 	ori	_readIntres_32_,$2,0
# 	ori	$2,_readIntres_32_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$21, -28($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -32
	jal	getint
# was:	jal	getint, $2
# 	ori	_letBind_34_,$2,0
# 	ori	_lt_L_39_,_letBind_34_,0
	ori	$3, $0, 1
# was:	ori	_lt_R_40_, $0, 1
	slt	$3, $2, $3
# was:	slt	_cond_38_, _lt_L_39_, _lt_R_40_
	bne	$3, $0, _then_35_
# was:	bne	_cond_38_, $0, _then_35_
	j	_else_36_
_then_35_:
	la	$2, _Incorre_43_
# was:	la	_tmp_42_, _Incorre_43_
# _Incorre_43_: string "Incorrect input!"
# 	ori	_letBind_41_,_tmp_42_,0
# 	ori	$2,_tmp_42_,0
	jal	putstring
# was:	jal	putstring, $2
	ori	$16, $0, 0
# was:	ori	_mainres_33_, $0, 0
	j	_endif_37_
_else_36_:
	ori	$5, $2, 0
# was:	ori	_size_reg_45_, _letBind_34_, 0
	bgez	$5, _safe_lab_46_
# was:	bgez	_size_reg_45_, _safe_lab_46_
	ori	$5, $0, 17
# was:	ori	$5, $0, 17
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_46_:
	ori	$20, $28, 0
# was:	ori	_letBind_44_, $28, 0
	sll	$2, $5, 2
# was:	sll	_tmp_52_, _size_reg_45_, 2
	addi	$2, $2, 4
# was:	addi	_tmp_52_, _tmp_52_, 4
	add	$28, $28, $2
# was:	add	$28, $28, _tmp_52_
	sw	$5, 0($20)
# was:	sw	_size_reg_45_, 0(_letBind_44_)
	addi	$4, $20, 4
# was:	addi	_addr_reg_47_, _letBind_44_, 4
	ori	$3, $0, 0
# was:	ori	_i_reg_48_, $0, 0
_loop_beg_49_:
	sub	$2, $3, $5
# was:	sub	_tmp_reg_51_, _i_reg_48_, _size_reg_45_
	bgez	$2, _loop_end_50_
# was:	bgez	_tmp_reg_51_, _loop_end_50_
	sw	$3, 0($4)
# was:	sw	_i_reg_48_, 0(_addr_reg_47_)
	addi	$4, $4, 4
# was:	addi	_addr_reg_47_, _addr_reg_47_, 4
	addi	$3, $3, 1
# was:	addi	_i_reg_48_, _i_reg_48_, 1
	j	_loop_beg_49_
_loop_end_50_:
# 	ori	_arr_reg_55_,_letBind_44_,0
	lw	$19, 0($20)
# was:	lw	_size_reg_54_, 0(_arr_reg_55_)
	ori	$16, $28, 0
# was:	ori	_letBind_53_, $28, 0
	sll	$2, $19, 2
# was:	sll	_tmp_64_, _size_reg_54_, 2
	addi	$2, $2, 4
# was:	addi	_tmp_64_, _tmp_64_, 4
	add	$28, $28, $2
# was:	add	$28, $28, _tmp_64_
	sw	$19, 0($16)
# was:	sw	_size_reg_54_, 0(_letBind_53_)
	addi	$17, $16, 4
# was:	addi	_addr_reg_58_, _letBind_53_, 4
	ori	$18, $0, 0
# was:	ori	_i_reg_59_, $0, 0
	addi	$21, $20, 4
# was:	addi	_elem_reg_56_, _arr_reg_55_, 4
_loop_beg_60_:
	sub	$2, $18, $19
# was:	sub	_tmp_reg_62_, _i_reg_59_, _size_reg_54_
	bgez	$2, _loop_end_61_
# was:	bgez	_tmp_reg_62_, _loop_end_61_
	lw	$2, 0($21)
# was:	lw	_res_reg_57_, 0(_elem_reg_56_)
	addi	$21, $21, 4
# was:	addi	_elem_reg_56_, _elem_reg_56_, 4
# 	ori	$2,_res_reg_57_,0
	jal	readInt
# was:	jal	readInt, $2
# 	ori	_tmp_reg_63_,$2,0
# 	ori	_res_reg_57_,_tmp_reg_63_,0
	sw	$2, 0($17)
# was:	sw	_res_reg_57_, 0(_addr_reg_58_)
	addi	$17, $17, 4
# was:	addi	_addr_reg_58_, _addr_reg_58_, 4
	addi	$18, $18, 1
# was:	addi	_i_reg_59_, _i_reg_59_, 1
	j	_loop_beg_60_
_loop_end_61_:
# 	ori	_arr_reg_67_,_letBind_44_,0
	lw	$3, 0($20)
# was:	lw	_size_reg_66_, 0(_arr_reg_67_)
	ori	$2, $28, 0
# was:	ori	_letBind_65_, $28, 0
	sll	$4, $3, 2
# was:	sll	_tmp_105_, _size_reg_66_, 2
	addi	$4, $4, 4
# was:	addi	_tmp_105_, _tmp_105_, 4
	add	$28, $28, $4
# was:	add	$28, $28, _tmp_105_
	sw	$3, 0($2)
# was:	sw	_size_reg_66_, 0(_letBind_65_)
	addi	$4, $2, 4
# was:	addi	_addr_reg_70_, _letBind_65_, 4
	ori	$5, $0, 0
# was:	ori	_i_reg_71_, $0, 0
	addi	$6, $20, 4
# was:	addi	_elem_reg_68_, _arr_reg_67_, 4
_loop_beg_72_:
	sub	$7, $5, $3
# was:	sub	_tmp_reg_74_, _i_reg_71_, _size_reg_66_
	bgez	$7, _loop_end_73_
# was:	bgez	_tmp_reg_74_, _loop_end_73_
	lw	$7, 0($6)
# was:	lw	_res_reg_69_, 0(_elem_reg_68_)
	addi	$6, $6, 4
# was:	addi	_elem_reg_68_, _elem_reg_68_, 4
# 	ori	_eq_L_80_,_res_reg_69_,0
	ori	$9, $0, 0
# was:	ori	_eq_R_81_, $0, 0
	ori	$8, $0, 0
# was:	ori	_cond_79_, $0, 0
	bne	$7, $9, _false_82_
# was:	bne	_eq_L_80_, _eq_R_81_, _false_82_
	ori	$8, $0, 1
# was:	ori	_cond_79_, $0, 1
_false_82_:
	bne	$8, $0, _then_76_
# was:	bne	_cond_79_, $0, _then_76_
	j	_else_77_
_then_76_:
	ori	$7, $0, 0
# was:	ori	_arr_ind_83_, $0, 0
	addi	$8, $16, 4
# was:	addi	_arr_reg_84_, _letBind_53_, 4
	lw	$9, 0($16)
# was:	lw	_size_reg_85_, 0(_letBind_53_)
	bgez	$7, _safe_lab_88_
# was:	bgez	_arr_ind_83_, _safe_lab_88_
_error_lab_87_:
	ori	$5, $0, 19
# was:	ori	$5, $0, 19
	la	$6, _Msg_IllegalIndex_
# was:	la	$6, _Msg_IllegalIndex_
	j	_RuntimeError_
_safe_lab_88_:
	sub	$9, $7, $9
# was:	sub	_tmp_reg_86_, _arr_ind_83_, _size_reg_85_
	bgez	$9, _error_lab_87_
# was:	bgez	_tmp_reg_86_, _error_lab_87_
	sll	$7, $7, 2
# was:	sll	_arr_ind_83_, _arr_ind_83_, 2
	add	$8, $8, $7
# was:	add	_arr_reg_84_, _arr_reg_84_, _arr_ind_83_
	lw	$7, 0($8)
# was:	lw	_fun_arg_res_75_, 0(_arr_reg_84_)
	j	_endif_78_
_else_77_:
# 	ori	_minus_L_92_,_res_reg_69_,0
	ori	$8, $0, 1
# was:	ori	_minus_R_93_, $0, 1
	sub	$8, $7, $8
# was:	sub	_arr_ind_91_, _minus_L_92_, _minus_R_93_
	addi	$9, $16, 4
# was:	addi	_arr_reg_94_, _letBind_53_, 4
	lw	$10, 0($16)
# was:	lw	_size_reg_95_, 0(_letBind_53_)
	bgez	$8, _safe_lab_98_
# was:	bgez	_arr_ind_91_, _safe_lab_98_
_error_lab_97_:
	ori	$5, $0, 19
# was:	ori	$5, $0, 19
	la	$6, _Msg_IllegalIndex_
# was:	la	$6, _Msg_IllegalIndex_
	j	_RuntimeError_
_safe_lab_98_:
	sub	$10, $8, $10
# was:	sub	_tmp_reg_96_, _arr_ind_91_, _size_reg_95_
	bgez	$10, _error_lab_97_
# was:	bgez	_tmp_reg_96_, _error_lab_97_
	sll	$8, $8, 2
# was:	sll	_arr_ind_91_, _arr_ind_91_, 2
	add	$9, $9, $8
# was:	add	_arr_reg_94_, _arr_reg_94_, _arr_ind_91_
	lw	$8, 0($9)
# was:	lw	_minus_L_89_, 0(_arr_reg_94_)
	ori	$9, $7, 0
# was:	ori	_arr_ind_99_, _res_reg_69_, 0
	addi	$7, $16, 4
# was:	addi	_arr_reg_100_, _letBind_53_, 4
	lw	$10, 0($16)
# was:	lw	_size_reg_101_, 0(_letBind_53_)
	bgez	$9, _safe_lab_104_
# was:	bgez	_arr_ind_99_, _safe_lab_104_
_error_lab_103_:
	ori	$5, $0, 19
# was:	ori	$5, $0, 19
	la	$6, _Msg_IllegalIndex_
# was:	la	$6, _Msg_IllegalIndex_
	j	_RuntimeError_
_safe_lab_104_:
	sub	$10, $9, $10
# was:	sub	_tmp_reg_102_, _arr_ind_99_, _size_reg_101_
	bgez	$10, _error_lab_103_
# was:	bgez	_tmp_reg_102_, _error_lab_103_
	sll	$9, $9, 2
# was:	sll	_arr_ind_99_, _arr_ind_99_, 2
	add	$7, $7, $9
# was:	add	_arr_reg_100_, _arr_reg_100_, _arr_ind_99_
	lw	$7, 0($7)
# was:	lw	_minus_R_90_, 0(_arr_reg_100_)
	sub	$7, $8, $7
# was:	sub	_fun_arg_res_75_, _minus_L_89_, _minus_R_90_
_endif_78_:
# 	ori	_res_reg_69_,_fun_arg_res_75_,0
	sw	$7, 0($4)
# was:	sw	_res_reg_69_, 0(_addr_reg_70_)
	addi	$4, $4, 4
# was:	addi	_addr_reg_70_, _addr_reg_70_, 4
	addi	$5, $5, 1
# was:	addi	_i_reg_71_, _i_reg_71_, 1
	j	_loop_beg_72_
_loop_end_73_:
# 	ori	_arr_reg_108_,_letBind_65_,0
	lw	$17, 0($2)
# was:	lw	_size_reg_107_, 0(_arr_reg_108_)
	ori	$16, $28, 0
# was:	ori	_letBind_106_, $28, 0
	sll	$3, $17, 2
# was:	sll	_tmp_119_, _size_reg_107_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_119_, _tmp_119_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_119_
	sw	$17, 0($16)
# was:	sw	_size_reg_107_, 0(_letBind_106_)
	addi	$19, $16, 4
# was:	addi	_addr_reg_111_, _letBind_106_, 4
	ori	$18, $0, 0
# was:	ori	_i_reg_112_, $0, 0
	addi	$20, $2, 4
# was:	addi	_elem_reg_109_, _arr_reg_108_, 4
_loop_beg_113_:
	sub	$2, $18, $17
# was:	sub	_tmp_reg_115_, _i_reg_112_, _size_reg_107_
	bgez	$2, _loop_end_114_
# was:	bgez	_tmp_reg_115_, _loop_end_114_
	lw	$2, 0($20)
# was:	lw	_res_reg_110_, 0(_elem_reg_109_)
	addi	$20, $20, 4
# was:	addi	_elem_reg_109_, _elem_reg_109_, 4
# 	ori	_arg_117_,_res_reg_110_,0
	ori	$3, $2, 0
# was:	ori	_arg_118_, _res_reg_110_, 0
# 	ori	$2,_arg_117_,0
# 	ori	$3,_arg_118_,0
	jal	mul
# was:	jal	mul, $2 $3
# 	ori	_fun_arg_res_116_,$2,0
# 	ori	_res_reg_110_,_fun_arg_res_116_,0
	sw	$2, 0($19)
# was:	sw	_res_reg_110_, 0(_addr_reg_111_)
	addi	$19, $19, 4
# was:	addi	_addr_reg_111_, _addr_reg_111_, 4
	addi	$18, $18, 1
# was:	addi	_i_reg_112_, _i_reg_112_, 1
	j	_loop_beg_113_
_loop_end_114_:
# 	ori	_arr_reg_121_,_letBind_106_,0
	lw	$2, 0($16)
# was:	lw	_size_reg_122_, 0(_arr_reg_121_)
	ori	$4, $0, 0
# was:	ori	_letBind_120_, $0, 0
	addi	$16, $16, 4
# was:	addi	_arr_reg_121_, _arr_reg_121_, 4
	ori	$3, $0, 0
# was:	ori	_ind_var_123_, $0, 0
_loop_beg_125_:
	sub	$5, $3, $2
# was:	sub	_tmp_reg_124_, _ind_var_123_, _size_reg_122_
	bgez	$5, _loop_end_126_
# was:	bgez	_tmp_reg_124_, _loop_end_126_
	lw	$5, 0($16)
# was:	lw	_tmp_reg_124_, 0(_arr_reg_121_)
	addi	$16, $16, 4
# was:	addi	_arr_reg_121_, _arr_reg_121_, 4
# 	ori	_plus_L_128_,_letBind_120_,0
# 	ori	_plus_R_129_,_tmp_reg_124_,0
	add	$4, $4, $5
# was:	add	_fun_arg_res_127_, _plus_L_128_, _plus_R_129_
# 	ori	_letBind_120_,_fun_arg_res_127_,0
	addi	$3, $3, 1
# was:	addi	_ind_var_123_, _ind_var_123_, 1
	j	_loop_beg_125_
_loop_end_126_:
# 	ori	_tmp_130_,_letBind_120_,0
	ori	$16, $4, 0
# was:	ori	_mainres_33_, _tmp_130_, 0
	ori	$2, $16, 0
# was:	ori	$2, _mainres_33_, 0
	jal	putint
# was:	jal	putint, $2
_endif_37_:
	ori	$2, $16, 0
# was:	ori	$2, _mainres_33_, 0
	addi	$29, $29, 32
	lw	$21, -28($29)
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
ord:
	jr	$31
chr:
	andi	$2, $2, 255
	jr	$31
putint:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 1
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getint:
	ori	$2, $0, 5
	syscall
	jr	$31
putchar:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 11
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getchar:
	addi	$29, $29, -8
	sw	$4, 0($29)
	sw	$5, 4($29)
	ori	$2, $0, 12
	syscall
	ori	$5, $2, 0
	ori	$2, $0, 4
	la	$4, _cr_
	syscall
	ori	$2, $5, 0
	lw	$4, 0($29)
	lw	$5, 4($29)
	addi	$29, $29, 8
	jr	$31
putstring:
	addi	$29, $29, -16
	sw	$2, 0($29)
	sw	$4, 4($29)
	sw	$5, 8($29)
	sw	$6, 12($29)
	lw	$4, 0($2)
	addi	$5, $2, 4
	add	$6, $5, $4
	ori	$2, $0, 11
putstring_begin:
	sub	$4, $5, $6
	bgez	$4, putstring_done
	lb	$4, 0($5)
	syscall
	addi	$5, $5, 1
	j	putstring_begin
putstring_done:
	lw	$2, 0($29)
	lw	$4, 4($29)
	lw	$5, 8($29)
	lw	$6, 12($29)
	addi	$29, $29, 16
	jr	$31
_RuntimeError_:
	la	$4, _ErrMsg_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _colon_space_
	ori	$2, $0, 4
	syscall
	ori	$4, $6, 0
	ori	$2, $0, 4
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
	.data	
# Fixed strings for I/O
_ErrMsg_:
	.asciiz	"Runtime error at line "
_colon_space_:
	.asciiz	": "
_cr_:
	.asciiz	"\n"
_space_:
	.asciiz	" "
# Message strings for specific errors
_Msg_IllegalArraySize_:
	.asciiz	"negative array size"
_Msg_IllegalIndex_:
	.asciiz	"array index out of bounds"
_Msg_DivZero_:
	.asciiz	"division by zero"
# String Literals
	.align	2
_Incorre_43_:
	.space	4
	.asciiz	"Incorrect input!"
	.align	2
_true:
	.space	4
	.asciiz	"true"
	.align	2
_false:
	.space	4
	.asciiz	"false"
	.align	2
_heap_:
	.space	100000