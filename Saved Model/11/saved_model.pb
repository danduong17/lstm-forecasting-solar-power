 ╟
│Ц
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.10.02unknown8ы·
Х
Adam/lstm_8/lstm_cell_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:░	*/
shared_name Adam/lstm_8/lstm_cell_8/bias/v
О
2Adam/lstm_8/lstm_cell_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_8/lstm_cell_8/bias/v*
_output_shapes	
:░	*
dtype0
▓
*Adam/lstm_8/lstm_cell_8/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
м░	*;
shared_name,*Adam/lstm_8/lstm_cell_8/recurrent_kernel/v
л
>Adam/lstm_8/lstm_cell_8/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_8/lstm_cell_8/recurrent_kernel/v* 
_output_shapes
:
м░	*
dtype0
Э
 Adam/lstm_8/lstm_cell_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	░	*1
shared_name" Adam/lstm_8/lstm_cell_8/kernel/v
Ц
4Adam/lstm_8/lstm_cell_8/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_8/lstm_cell_8/kernel/v*
_output_shapes
:	░	*
dtype0
А
Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
:*
dtype0
Й
Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	м*'
shared_nameAdam/dense_10/kernel/v
В
*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes
:	м*
dtype0
А
Adam/conv1d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv1d_7/bias/v
y
(Adam/conv1d_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_7/bias/v*
_output_shapes
:*
dtype0
М
Adam/conv1d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv1d_7/kernel/v
Е
*Adam/conv1d_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_7/kernel/v*"
_output_shapes
:*
dtype0
Х
Adam/lstm_8/lstm_cell_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:░	*/
shared_name Adam/lstm_8/lstm_cell_8/bias/m
О
2Adam/lstm_8/lstm_cell_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_8/lstm_cell_8/bias/m*
_output_shapes	
:░	*
dtype0
▓
*Adam/lstm_8/lstm_cell_8/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
м░	*;
shared_name,*Adam/lstm_8/lstm_cell_8/recurrent_kernel/m
л
>Adam/lstm_8/lstm_cell_8/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_8/lstm_cell_8/recurrent_kernel/m* 
_output_shapes
:
м░	*
dtype0
Э
 Adam/lstm_8/lstm_cell_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	░	*1
shared_name" Adam/lstm_8/lstm_cell_8/kernel/m
Ц
4Adam/lstm_8/lstm_cell_8/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_8/lstm_cell_8/kernel/m*
_output_shapes
:	░	*
dtype0
А
Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
:*
dtype0
Й
Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	м*'
shared_nameAdam/dense_10/kernel/m
В
*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes
:	м*
dtype0
А
Adam/conv1d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv1d_7/bias/m
y
(Adam/conv1d_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_7/bias/m*
_output_shapes
:*
dtype0
М
Adam/conv1d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv1d_7/kernel/m
Е
*Adam/conv1d_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_7/kernel/m*"
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
З
lstm_8/lstm_cell_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:░	*(
shared_namelstm_8/lstm_cell_8/bias
А
+lstm_8/lstm_cell_8/bias/Read/ReadVariableOpReadVariableOplstm_8/lstm_cell_8/bias*
_output_shapes	
:░	*
dtype0
д
#lstm_8/lstm_cell_8/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
м░	*4
shared_name%#lstm_8/lstm_cell_8/recurrent_kernel
Э
7lstm_8/lstm_cell_8/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_8/lstm_cell_8/recurrent_kernel* 
_output_shapes
:
м░	*
dtype0
П
lstm_8/lstm_cell_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	░	**
shared_namelstm_8/lstm_cell_8/kernel
И
-lstm_8/lstm_cell_8/kernel/Read/ReadVariableOpReadVariableOplstm_8/lstm_cell_8/kernel*
_output_shapes
:	░	*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:*
dtype0
{
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	м* 
shared_namedense_10/kernel
t
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes
:	м*
dtype0
r
conv1d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_7/bias
k
!conv1d_7/bias/Read/ReadVariableOpReadVariableOpconv1d_7/bias*
_output_shapes
:*
dtype0
~
conv1d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_7/kernel
w
#conv1d_7/kernel/Read/ReadVariableOpReadVariableOpconv1d_7/kernel*"
_output_shapes
:*
dtype0
Й
serving_default_conv1d_7_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
с
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_7_inputconv1d_7/kernelconv1d_7/biaslstm_8/lstm_cell_8/kernel#lstm_8/lstm_cell_8/recurrent_kernellstm_8/lstm_cell_8/biasdense_10/kerneldense_10/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_4924344

NoOpNoOp
╗6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ў5
valueь5Bщ5 Bт5
┴
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
┴
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
ж
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias*
5
0
1
'2
(3
)4
%5
&6*
5
0
1
'2
(3
)4
%5
&6*
* 
░
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
/trace_0
0trace_1
1trace_2
2trace_3* 
6
3trace_0
4trace_1
5trace_2
6trace_3* 
* 
┬
7iter

8beta_1

9beta_2
	:decay
;learning_ratemomp%mq&mr'ms(mt)muvvvw%vx&vy'vz(v{)v|*

<serving_default* 

0
1*

0
1*
* 
У
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Btrace_0* 

Ctrace_0* 
_Y
VARIABLE_VALUEconv1d_7/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_7/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

'0
(1
)2*

'0
(1
)2*
* 
Я

Dstates
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_3* 
6
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_3* 
* 
у
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses
X_random_generator
Y
state_size

'kernel
(recurrent_kernel
)bias*
* 

%0
&1*

%0
&1*
* 
У
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

_trace_0* 

`trace_0* 
_Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_10/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_8/lstm_cell_8/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#lstm_8/lstm_cell_8/recurrent_kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_8/lstm_cell_8/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

a0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

'0
(1
)2*

'0
(1
)2*
* 
У
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*

gtrace_0
htrace_1* 

itrace_0
jtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
k	variables
l	keras_api
	mtotal
	ncount*
* 
* 
* 
* 
* 
* 
* 
* 
* 

m0
n1*

k	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv1d_7/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1d_7/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_10/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_10/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_8/lstm_cell_8/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUE*Adam/lstm_8/lstm_cell_8/recurrent_kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/lstm_8/lstm_cell_8/bias/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv1d_7/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1d_7/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_10/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_10/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_8/lstm_cell_8/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUE*Adam/lstm_8/lstm_cell_8/recurrent_kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/lstm_8/lstm_cell_8/bias/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ш
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_7/kernel/Read/ReadVariableOp!conv1d_7/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp-lstm_8/lstm_cell_8/kernel/Read/ReadVariableOp7lstm_8/lstm_cell_8/recurrent_kernel/Read/ReadVariableOp+lstm_8/lstm_cell_8/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/conv1d_7/kernel/m/Read/ReadVariableOp(Adam/conv1d_7/bias/m/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp4Adam/lstm_8/lstm_cell_8/kernel/m/Read/ReadVariableOp>Adam/lstm_8/lstm_cell_8/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_8/lstm_cell_8/bias/m/Read/ReadVariableOp*Adam/conv1d_7/kernel/v/Read/ReadVariableOp(Adam/conv1d_7/bias/v/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp4Adam/lstm_8/lstm_cell_8/kernel/v/Read/ReadVariableOp>Adam/lstm_8/lstm_cell_8/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_8/lstm_cell_8/bias/v/Read/ReadVariableOpConst*)
Tin"
 2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__traced_save_4925581
│
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_7/kernelconv1d_7/biasdense_10/kerneldense_10/biaslstm_8/lstm_cell_8/kernel#lstm_8/lstm_cell_8/recurrent_kernellstm_8/lstm_cell_8/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv1d_7/kernel/mAdam/conv1d_7/bias/mAdam/dense_10/kernel/mAdam/dense_10/bias/m Adam/lstm_8/lstm_cell_8/kernel/m*Adam/lstm_8/lstm_cell_8/recurrent_kernel/mAdam/lstm_8/lstm_cell_8/bias/mAdam/conv1d_7/kernel/vAdam/conv1d_7/bias/vAdam/dense_10/kernel/vAdam/dense_10/bias/v Adam/lstm_8/lstm_cell_8/kernel/v*Adam/lstm_8/lstm_cell_8/recurrent_kernel/vAdam/lstm_8/lstm_cell_8/bias/v*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference__traced_restore_4925675кЄ
ЛK
Ц
C__inference_lstm_8_layer_call_and_return_conditional_losses_4925212

inputs=
*lstm_cell_8_matmul_readvariableop_resource:	░	@
,lstm_cell_8_matmul_1_readvariableop_resource:
м░	:
+lstm_cell_8_biasadd_readvariableop_resource:	░	
identityИв"lstm_cell_8/BiasAdd/ReadVariableOpв!lstm_cell_8/MatMul/ReadVariableOpв#lstm_cell_8/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         мS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         мc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskН
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes
:	░	*
dtype0Ф
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Т
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
м░	*
dtype0О
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Й
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	Л
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:░	*
dtype0Т
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splitm
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*(
_output_shapes
:         мo
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*(
_output_shapes
:         мv
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         мg
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*(
_output_shapes
:         мД
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         мy
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         мo
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*(
_output_shapes
:         мd
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         мИ
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         м:         м: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4925127*
condR
while_cond_4925126*M
output_shapes<
:: : : : :         м:         м: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         м*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         м*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         м[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         м╜
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ш
№
"__inference__wrapped_model_4923441
conv1d_7_inputW
Asequential_7_conv1d_7_conv1d_expanddims_1_readvariableop_resource:C
5sequential_7_conv1d_7_biasadd_readvariableop_resource:Q
>sequential_7_lstm_8_lstm_cell_8_matmul_readvariableop_resource:	░	T
@sequential_7_lstm_8_lstm_cell_8_matmul_1_readvariableop_resource:
м░	N
?sequential_7_lstm_8_lstm_cell_8_biasadd_readvariableop_resource:	░	G
4sequential_7_dense_10_matmul_readvariableop_resource:	мC
5sequential_7_dense_10_biasadd_readvariableop_resource:
identityИв,sequential_7/conv1d_7/BiasAdd/ReadVariableOpв8sequential_7/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpв,sequential_7/dense_10/BiasAdd/ReadVariableOpв+sequential_7/dense_10/MatMul/ReadVariableOpв6sequential_7/lstm_8/lstm_cell_8/BiasAdd/ReadVariableOpв5sequential_7/lstm_8/lstm_cell_8/MatMul/ReadVariableOpв7sequential_7/lstm_8/lstm_cell_8/MatMul_1/ReadVariableOpвsequential_7/lstm_8/whilev
+sequential_7/conv1d_7/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        ╡
'sequential_7/conv1d_7/Conv1D/ExpandDims
ExpandDimsconv1d_7_input4sequential_7/conv1d_7/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         ╛
8sequential_7/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_7_conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0o
-sequential_7/conv1d_7/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : т
)sequential_7/conv1d_7/Conv1D/ExpandDims_1
ExpandDims@sequential_7/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp:value:06sequential_7/conv1d_7/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:я
sequential_7/conv1d_7/Conv1DConv2D0sequential_7/conv1d_7/Conv1D/ExpandDims:output:02sequential_7/conv1d_7/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
м
$sequential_7/conv1d_7/Conv1D/SqueezeSqueeze%sequential_7/conv1d_7/Conv1D:output:0*
T0*+
_output_shapes
:         *
squeeze_dims

¤        Ю
,sequential_7/conv1d_7/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0├
sequential_7/conv1d_7/BiasAddBiasAdd-sequential_7/conv1d_7/Conv1D/Squeeze:output:04sequential_7/conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         А
sequential_7/conv1d_7/ReluRelu&sequential_7/conv1d_7/BiasAdd:output:0*
T0*+
_output_shapes
:         q
sequential_7/lstm_8/ShapeShape(sequential_7/conv1d_7/Relu:activations:0*
T0*
_output_shapes
:q
'sequential_7/lstm_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_7/lstm_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_7/lstm_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╡
!sequential_7/lstm_8/strided_sliceStridedSlice"sequential_7/lstm_8/Shape:output:00sequential_7/lstm_8/strided_slice/stack:output:02sequential_7/lstm_8/strided_slice/stack_1:output:02sequential_7/lstm_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
"sequential_7/lstm_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мп
 sequential_7/lstm_8/zeros/packedPack*sequential_7/lstm_8/strided_slice:output:0+sequential_7/lstm_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_7/lstm_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    й
sequential_7/lstm_8/zerosFill)sequential_7/lstm_8/zeros/packed:output:0(sequential_7/lstm_8/zeros/Const:output:0*
T0*(
_output_shapes
:         мg
$sequential_7/lstm_8/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :м│
"sequential_7/lstm_8/zeros_1/packedPack*sequential_7/lstm_8/strided_slice:output:0-sequential_7/lstm_8/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_7/lstm_8/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    п
sequential_7/lstm_8/zeros_1Fill+sequential_7/lstm_8/zeros_1/packed:output:0*sequential_7/lstm_8/zeros_1/Const:output:0*
T0*(
_output_shapes
:         мw
"sequential_7/lstm_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╖
sequential_7/lstm_8/transpose	Transpose(sequential_7/conv1d_7/Relu:activations:0+sequential_7/lstm_8/transpose/perm:output:0*
T0*+
_output_shapes
:         l
sequential_7/lstm_8/Shape_1Shape!sequential_7/lstm_8/transpose:y:0*
T0*
_output_shapes
:s
)sequential_7/lstm_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_7/lstm_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_7/lstm_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_7/lstm_8/strided_slice_1StridedSlice$sequential_7/lstm_8/Shape_1:output:02sequential_7/lstm_8/strided_slice_1/stack:output:04sequential_7/lstm_8/strided_slice_1/stack_1:output:04sequential_7/lstm_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_7/lstm_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ё
!sequential_7/lstm_8/TensorArrayV2TensorListReserve8sequential_7/lstm_8/TensorArrayV2/element_shape:output:0,sequential_7/lstm_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ъ
Isequential_7/lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ь
;sequential_7/lstm_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_7/lstm_8/transpose:y:0Rsequential_7/lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥s
)sequential_7/lstm_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_7/lstm_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_7/lstm_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:═
#sequential_7/lstm_8/strided_slice_2StridedSlice!sequential_7/lstm_8/transpose:y:02sequential_7/lstm_8/strided_slice_2/stack:output:04sequential_7/lstm_8/strided_slice_2/stack_1:output:04sequential_7/lstm_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask╡
5sequential_7/lstm_8/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp>sequential_7_lstm_8_lstm_cell_8_matmul_readvariableop_resource*
_output_shapes
:	░	*
dtype0╨
&sequential_7/lstm_8/lstm_cell_8/MatMulMatMul,sequential_7/lstm_8/strided_slice_2:output:0=sequential_7/lstm_8/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	║
7sequential_7/lstm_8/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp@sequential_7_lstm_8_lstm_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
м░	*
dtype0╩
(sequential_7/lstm_8/lstm_cell_8/MatMul_1MatMul"sequential_7/lstm_8/zeros:output:0?sequential_7/lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	┼
#sequential_7/lstm_8/lstm_cell_8/addAddV20sequential_7/lstm_8/lstm_cell_8/MatMul:product:02sequential_7/lstm_8/lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	│
6sequential_7/lstm_8/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_lstm_8_lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:░	*
dtype0╬
'sequential_7/lstm_8/lstm_cell_8/BiasAddBiasAdd'sequential_7/lstm_8/lstm_cell_8/add:z:0>sequential_7/lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	q
/sequential_7/lstm_8/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
%sequential_7/lstm_8/lstm_cell_8/splitSplit8sequential_7/lstm_8/lstm_cell_8/split/split_dim:output:00sequential_7/lstm_8/lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splitХ
'sequential_7/lstm_8/lstm_cell_8/SigmoidSigmoid.sequential_7/lstm_8/lstm_cell_8/split:output:0*
T0*(
_output_shapes
:         мЧ
)sequential_7/lstm_8/lstm_cell_8/Sigmoid_1Sigmoid.sequential_7/lstm_8/lstm_cell_8/split:output:1*
T0*(
_output_shapes
:         м▓
#sequential_7/lstm_8/lstm_cell_8/mulMul-sequential_7/lstm_8/lstm_cell_8/Sigmoid_1:y:0$sequential_7/lstm_8/zeros_1:output:0*
T0*(
_output_shapes
:         мП
$sequential_7/lstm_8/lstm_cell_8/ReluRelu.sequential_7/lstm_8/lstm_cell_8/split:output:2*
T0*(
_output_shapes
:         м└
%sequential_7/lstm_8/lstm_cell_8/mul_1Mul+sequential_7/lstm_8/lstm_cell_8/Sigmoid:y:02sequential_7/lstm_8/lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         м╡
%sequential_7/lstm_8/lstm_cell_8/add_1AddV2'sequential_7/lstm_8/lstm_cell_8/mul:z:0)sequential_7/lstm_8/lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         мЧ
)sequential_7/lstm_8/lstm_cell_8/Sigmoid_2Sigmoid.sequential_7/lstm_8/lstm_cell_8/split:output:3*
T0*(
_output_shapes
:         мМ
&sequential_7/lstm_8/lstm_cell_8/Relu_1Relu)sequential_7/lstm_8/lstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         м─
%sequential_7/lstm_8/lstm_cell_8/mul_2Mul-sequential_7/lstm_8/lstm_cell_8/Sigmoid_2:y:04sequential_7/lstm_8/lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мВ
1sequential_7/lstm_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  r
0sequential_7/lstm_8/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Б
#sequential_7/lstm_8/TensorArrayV2_1TensorListReserve:sequential_7/lstm_8/TensorArrayV2_1/element_shape:output:09sequential_7/lstm_8/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Z
sequential_7/lstm_8/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_7/lstm_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         h
&sequential_7/lstm_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Э
sequential_7/lstm_8/whileWhile/sequential_7/lstm_8/while/loop_counter:output:05sequential_7/lstm_8/while/maximum_iterations:output:0!sequential_7/lstm_8/time:output:0,sequential_7/lstm_8/TensorArrayV2_1:handle:0"sequential_7/lstm_8/zeros:output:0$sequential_7/lstm_8/zeros_1:output:0,sequential_7/lstm_8/strided_slice_1:output:0Ksequential_7/lstm_8/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_7_lstm_8_lstm_cell_8_matmul_readvariableop_resource@sequential_7_lstm_8_lstm_cell_8_matmul_1_readvariableop_resource?sequential_7_lstm_8_lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         м:         м: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_7_lstm_8_while_body_4923350*2
cond*R(
&sequential_7_lstm_8_while_cond_4923349*M
output_shapes<
:: : : : :         м:         м: : : : : *
parallel_iterations Х
Dsequential_7/lstm_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  У
6sequential_7/lstm_8/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_7/lstm_8/while:output:3Msequential_7/lstm_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         м*
element_dtype0*
num_elements|
)sequential_7/lstm_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         u
+sequential_7/lstm_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_7/lstm_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
#sequential_7/lstm_8/strided_slice_3StridedSlice?sequential_7/lstm_8/TensorArrayV2Stack/TensorListStack:tensor:02sequential_7/lstm_8/strided_slice_3/stack:output:04sequential_7/lstm_8/strided_slice_3/stack_1:output:04sequential_7/lstm_8/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         м*
shrink_axis_masky
$sequential_7/lstm_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╙
sequential_7/lstm_8/transpose_1	Transpose?sequential_7/lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_7/lstm_8/transpose_1/perm:output:0*
T0*,
_output_shapes
:         мo
sequential_7/lstm_8/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    б
+sequential_7/dense_10/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_10_matmul_readvariableop_resource*
_output_shapes
:	м*
dtype0╗
sequential_7/dense_10/MatMulMatMul,sequential_7/lstm_8/strided_slice_3:output:03sequential_7/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ю
,sequential_7/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╕
sequential_7/dense_10/BiasAddBiasAdd&sequential_7/dense_10/MatMul:product:04sequential_7/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         u
IdentityIdentity&sequential_7/dense_10/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ╘
NoOpNoOp-^sequential_7/conv1d_7/BiasAdd/ReadVariableOp9^sequential_7/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp-^sequential_7/dense_10/BiasAdd/ReadVariableOp,^sequential_7/dense_10/MatMul/ReadVariableOp7^sequential_7/lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp6^sequential_7/lstm_8/lstm_cell_8/MatMul/ReadVariableOp8^sequential_7/lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp^sequential_7/lstm_8/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         : : : : : : : 2\
,sequential_7/conv1d_7/BiasAdd/ReadVariableOp,sequential_7/conv1d_7/BiasAdd/ReadVariableOp2t
8sequential_7/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp8sequential_7/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp2\
,sequential_7/dense_10/BiasAdd/ReadVariableOp,sequential_7/dense_10/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_10/MatMul/ReadVariableOp+sequential_7/dense_10/MatMul/ReadVariableOp2p
6sequential_7/lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp6sequential_7/lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp2n
5sequential_7/lstm_8/lstm_cell_8/MatMul/ReadVariableOp5sequential_7/lstm_8/lstm_cell_8/MatMul/ReadVariableOp2r
7sequential_7/lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp7sequential_7/lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp26
sequential_7/lstm_8/whilesequential_7/lstm_8/while:[ W
+
_output_shapes
:         
(
_user_specified_nameconv1d_7_input
Ў
ў
-__inference_lstm_cell_8_layer_call_fn_4925410

inputs
states_0
states_1
unknown:	░	
	unknown_0:
м░	
	unknown_1:	░	
identity

identity_1

identity_2ИвStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         м:         м:         м*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_8_layer_call_and_return_conditional_losses_4923656p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         мr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         мr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         м`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         :         м:         м: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         м
"
_user_specified_name
states/0:RN
(
_output_shapes
:         м
"
_user_specified_name
states/1
Т
╕
(__inference_lstm_8_layer_call_fn_4924744
inputs_0
unknown:	░	
	unknown_0:
м░	
	unknown_1:	░	
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_8_layer_call_and_return_conditional_losses_4923593p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         м`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╛
╚
while_cond_4925126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4925126___redundant_placeholder05
1while_while_cond_4925126___redundant_placeholder15
1while_while_cond_4925126___redundant_placeholder25
1while_while_cond_4925126___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         м:         м: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
:
╛
╚
while_cond_4923882
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4923882___redundant_placeholder05
1while_while_cond_4923882___redundant_placeholder15
1while_while_cond_4923882___redundant_placeholder25
1while_while_cond_4923882___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         м:         м: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
:
В

╘
lstm_8_while_cond_4924616*
&lstm_8_while_lstm_8_while_loop_counter0
,lstm_8_while_lstm_8_while_maximum_iterations
lstm_8_while_placeholder
lstm_8_while_placeholder_1
lstm_8_while_placeholder_2
lstm_8_while_placeholder_3,
(lstm_8_while_less_lstm_8_strided_slice_1C
?lstm_8_while_lstm_8_while_cond_4924616___redundant_placeholder0C
?lstm_8_while_lstm_8_while_cond_4924616___redundant_placeholder1C
?lstm_8_while_lstm_8_while_cond_4924616___redundant_placeholder2C
?lstm_8_while_lstm_8_while_cond_4924616___redundant_placeholder3
lstm_8_while_identity
~
lstm_8/while/LessLesslstm_8_while_placeholder(lstm_8_while_less_lstm_8_strided_slice_1*
T0*
_output_shapes
: Y
lstm_8/while/IdentityIdentitylstm_8/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_8_while_identitylstm_8/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         м:         м: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
:
╪
Ы
*__inference_conv1d_7_layer_call_fn_4924717

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv1d_7_layer_call_and_return_conditional_losses_4923818s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
·
╢
(__inference_lstm_8_layer_call_fn_4924777

inputs
unknown:	░	
	unknown_0:
м░	
	unknown_1:	░	
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_8_layer_call_and_return_conditional_losses_4924178p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         м`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ў
ў
-__inference_lstm_cell_8_layer_call_fn_4925393

inputs
states_0
states_1
unknown:	░	
	unknown_0:
м░	
	unknown_1:	░	
identity

identity_1

identity_2ИвStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         м:         м:         м*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_8_layer_call_and_return_conditional_losses_4923508p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         мr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         мr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         м`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         :         м:         м: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         м
"
_user_specified_name
states/0:RN
(
_output_shapes
:         м
"
_user_specified_name
states/1
√8
╩
while_body_4925127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_8_matmul_readvariableop_resource_0:	░	H
4while_lstm_cell_8_matmul_1_readvariableop_resource_0:
м░	B
3while_lstm_cell_8_biasadd_readvariableop_resource_0:	░	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_8_matmul_readvariableop_resource:	░	F
2while_lstm_cell_8_matmul_1_readvariableop_resource:
м░	@
1while_lstm_cell_8_biasadd_readvariableop_resource:	░	Ив(while/lstm_cell_8/BiasAdd/ReadVariableOpв'while/lstm_cell_8/MatMul/ReadVariableOpв)while/lstm_cell_8/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ы
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes
:	░	*
dtype0╕
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	а
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
м░	*
dtype0Я
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Ы
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	Щ
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:░	*
dtype0д
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splity
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*(
_output_shapes
:         м{
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*(
_output_shapes
:         мЕ
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         мs
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*(
_output_shapes
:         мЦ
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         мЛ
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         м{
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*(
_output_shapes
:         мp
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         мЪ
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:         мy
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:         м═

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         м:         м: : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
: 
▒	
н
.__inference_sequential_7_layer_call_fn_4924363

inputs
unknown:
	unknown_0:
	unknown_1:	░	
	unknown_2:
м░	
	unknown_3:	░	
	unknown_4:	м
	unknown_5:
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_4923993o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╟
Ш
*__inference_dense_10_layer_call_fn_4925366

inputs
unknown:	м
	unknown_0:
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_4923986o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         м: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
╛
╚
while_cond_4923522
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4923522___redundant_placeholder05
1while_while_cond_4923522___redundant_placeholder15
1while_while_cond_4923522___redundant_placeholder25
1while_while_cond_4923522___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         м:         м: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
:
╠	
ў
E__inference_dense_10_layer_call_and_return_conditional_losses_4923986

inputs1
matmul_readvariableop_resource:	м-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	м*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         м: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
ы
Е
H__inference_lstm_cell_8_layer_call_and_return_conditional_losses_4923656

inputs

states
states_11
matmul_readvariableop_resource:	░	4
 matmul_1_readvariableop_resource:
м░	.
biasadd_readvariableop_resource:	░	
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	░	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
м░	*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ░	s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:░	*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         мW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         мV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         мO
ReluRelusplit:output:2*
T0*(
_output_shapes
:         м`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:         мU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         мW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         мL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:         мd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:         мY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         м[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         м[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         мС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         :         м:         м: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:PL
(
_output_shapes
:         м
 
_user_specified_namestates:PL
(
_output_shapes
:         м
 
_user_specified_namestates
К9
Е
C__inference_lstm_8_layer_call_and_return_conditional_losses_4923593

inputs&
lstm_cell_8_4923509:	░	'
lstm_cell_8_4923511:
м░	"
lstm_cell_8_4923513:	░	
identityИв#lstm_cell_8/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         мS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         мc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskў
#lstm_cell_8/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_8_4923509lstm_cell_8_4923511lstm_cell_8_4923513*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         м:         м:         м*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_8_layer_call_and_return_conditional_losses_4923508n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╜
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_8_4923509lstm_cell_8_4923511lstm_cell_8_4923513*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         м:         м: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4923523*
condR
while_cond_4923522*M
output_shapes<
:: : : : :         м:         м: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         м*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         м*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         м[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         мt
NoOpNoOp$^lstm_cell_8/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_8/StatefulPartitionedCall#lstm_cell_8/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
ЛK
Ц
C__inference_lstm_8_layer_call_and_return_conditional_losses_4924178

inputs=
*lstm_cell_8_matmul_readvariableop_resource:	░	@
,lstm_cell_8_matmul_1_readvariableop_resource:
м░	:
+lstm_cell_8_biasadd_readvariableop_resource:	░	
identityИв"lstm_cell_8/BiasAdd/ReadVariableOpв!lstm_cell_8/MatMul/ReadVariableOpв#lstm_cell_8/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         мS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         мc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskН
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes
:	░	*
dtype0Ф
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Т
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
м░	*
dtype0О
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Й
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	Л
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:░	*
dtype0Т
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splitm
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*(
_output_shapes
:         мo
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*(
_output_shapes
:         мv
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         мg
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*(
_output_shapes
:         мД
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         мy
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         мo
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*(
_output_shapes
:         мd
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         мИ
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         м:         м: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4924093*
condR
while_cond_4924092*M
output_shapes<
:: : : : :         м:         м: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         м*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         м*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         м[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         м╜
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╛
╚
while_cond_4924981
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4924981___redundant_placeholder05
1while_while_cond_4924981___redundant_placeholder15
1while_while_cond_4924981___redundant_placeholder25
1while_while_cond_4924981___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         м:         м: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
:
╞j
╪
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924545

inputsJ
4conv1d_7_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_7_biasadd_readvariableop_resource:D
1lstm_8_lstm_cell_8_matmul_readvariableop_resource:	░	G
3lstm_8_lstm_cell_8_matmul_1_readvariableop_resource:
м░	A
2lstm_8_lstm_cell_8_biasadd_readvariableop_resource:	░	:
'dense_10_matmul_readvariableop_resource:	м6
(dense_10_biasadd_readvariableop_resource:
identityИвconv1d_7/BiasAdd/ReadVariableOpв+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpвdense_10/BiasAdd/ReadVariableOpвdense_10/MatMul/ReadVariableOpв)lstm_8/lstm_cell_8/BiasAdd/ReadVariableOpв(lstm_8/lstm_cell_8/MatMul/ReadVariableOpв*lstm_8/lstm_cell_8/MatMul_1/ReadVariableOpвlstm_8/whilei
conv1d_7/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        У
conv1d_7/Conv1D/ExpandDims
ExpandDimsinputs'conv1d_7/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         д
+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_7/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ╗
conv1d_7/Conv1D/ExpandDims_1
ExpandDims3conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_7/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:╚
conv1d_7/Conv1DConv2D#conv1d_7/Conv1D/ExpandDims:output:0%conv1d_7/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
Т
conv1d_7/Conv1D/SqueezeSqueezeconv1d_7/Conv1D:output:0*
T0*+
_output_shapes
:         *
squeeze_dims

¤        Д
conv1d_7/BiasAdd/ReadVariableOpReadVariableOp(conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
conv1d_7/BiasAddBiasAdd conv1d_7/Conv1D/Squeeze:output:0'conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         f
conv1d_7/ReluReluconv1d_7/BiasAdd:output:0*
T0*+
_output_shapes
:         W
lstm_8/ShapeShapeconv1d_7/Relu:activations:0*
T0*
_output_shapes
:d
lstm_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_8/strided_sliceStridedSlicelstm_8/Shape:output:0#lstm_8/strided_slice/stack:output:0%lstm_8/strided_slice/stack_1:output:0%lstm_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мИ
lstm_8/zeros/packedPacklstm_8/strided_slice:output:0lstm_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    В
lstm_8/zerosFilllstm_8/zeros/packed:output:0lstm_8/zeros/Const:output:0*
T0*(
_output_shapes
:         мZ
lstm_8/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мМ
lstm_8/zeros_1/packedPacklstm_8/strided_slice:output:0 lstm_8/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_8/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    И
lstm_8/zeros_1Filllstm_8/zeros_1/packed:output:0lstm_8/zeros_1/Const:output:0*
T0*(
_output_shapes
:         мj
lstm_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Р
lstm_8/transpose	Transposeconv1d_7/Relu:activations:0lstm_8/transpose/perm:output:0*
T0*+
_output_shapes
:         R
lstm_8/Shape_1Shapelstm_8/transpose:y:0*
T0*
_output_shapes
:f
lstm_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_8/strided_slice_1StridedSlicelstm_8/Shape_1:output:0%lstm_8/strided_slice_1/stack:output:0'lstm_8/strided_slice_1/stack_1:output:0'lstm_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╔
lstm_8/TensorArrayV2TensorListReserve+lstm_8/TensorArrayV2/element_shape:output:0lstm_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Н
<lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ї
.lstm_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_8/transpose:y:0Elstm_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥f
lstm_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
lstm_8/strided_slice_2StridedSlicelstm_8/transpose:y:0%lstm_8/strided_slice_2/stack:output:0'lstm_8/strided_slice_2/stack_1:output:0'lstm_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЫ
(lstm_8/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp1lstm_8_lstm_cell_8_matmul_readvariableop_resource*
_output_shapes
:	░	*
dtype0й
lstm_8/lstm_cell_8/MatMulMatMullstm_8/strided_slice_2:output:00lstm_8/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	а
*lstm_8/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp3lstm_8_lstm_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
м░	*
dtype0г
lstm_8/lstm_cell_8/MatMul_1MatMullstm_8/zeros:output:02lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Ю
lstm_8/lstm_cell_8/addAddV2#lstm_8/lstm_cell_8/MatMul:product:0%lstm_8/lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	Щ
)lstm_8/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp2lstm_8_lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:░	*
dtype0з
lstm_8/lstm_cell_8/BiasAddBiasAddlstm_8/lstm_cell_8/add:z:01lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	d
"lstm_8/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :є
lstm_8/lstm_cell_8/splitSplit+lstm_8/lstm_cell_8/split/split_dim:output:0#lstm_8/lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_split{
lstm_8/lstm_cell_8/SigmoidSigmoid!lstm_8/lstm_cell_8/split:output:0*
T0*(
_output_shapes
:         м}
lstm_8/lstm_cell_8/Sigmoid_1Sigmoid!lstm_8/lstm_cell_8/split:output:1*
T0*(
_output_shapes
:         мЛ
lstm_8/lstm_cell_8/mulMul lstm_8/lstm_cell_8/Sigmoid_1:y:0lstm_8/zeros_1:output:0*
T0*(
_output_shapes
:         мu
lstm_8/lstm_cell_8/ReluRelu!lstm_8/lstm_cell_8/split:output:2*
T0*(
_output_shapes
:         мЩ
lstm_8/lstm_cell_8/mul_1Mullstm_8/lstm_cell_8/Sigmoid:y:0%lstm_8/lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         мО
lstm_8/lstm_cell_8/add_1AddV2lstm_8/lstm_cell_8/mul:z:0lstm_8/lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         м}
lstm_8/lstm_cell_8/Sigmoid_2Sigmoid!lstm_8/lstm_cell_8/split:output:3*
T0*(
_output_shapes
:         мr
lstm_8/lstm_cell_8/Relu_1Relulstm_8/lstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         мЭ
lstm_8/lstm_cell_8/mul_2Mul lstm_8/lstm_cell_8/Sigmoid_2:y:0'lstm_8/lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мu
$lstm_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  e
#lstm_8/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_8/TensorArrayV2_1TensorListReserve-lstm_8/TensorArrayV2_1/element_shape:output:0,lstm_8/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥M
lstm_8/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         [
lstm_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ч
lstm_8/whileWhile"lstm_8/while/loop_counter:output:0(lstm_8/while/maximum_iterations:output:0lstm_8/time:output:0lstm_8/TensorArrayV2_1:handle:0lstm_8/zeros:output:0lstm_8/zeros_1:output:0lstm_8/strided_slice_1:output:0>lstm_8/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_8_lstm_cell_8_matmul_readvariableop_resource3lstm_8_lstm_cell_8_matmul_1_readvariableop_resource2lstm_8_lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         м:         м: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_8_while_body_4924454*%
condR
lstm_8_while_cond_4924453*M
output_shapes<
:: : : : :         м:         м: : : : : *
parallel_iterations И
7lstm_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ь
)lstm_8/TensorArrayV2Stack/TensorListStackTensorListStacklstm_8/while:output:3@lstm_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         м*
element_dtype0*
num_elementso
lstm_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         h
lstm_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
lstm_8/strided_slice_3StridedSlice2lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_8/strided_slice_3/stack:output:0'lstm_8/strided_slice_3/stack_1:output:0'lstm_8/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         м*
shrink_axis_maskl
lstm_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          м
lstm_8/transpose_1	Transpose2lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_8/transpose_1/perm:output:0*
T0*,
_output_shapes
:         мb
lstm_8/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    З
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes
:	м*
dtype0Ф
dense_10/MatMulMatMullstm_8/strided_slice_3:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_10/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ь
NoOpNoOp ^conv1d_7/BiasAdd/ReadVariableOp,^conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp*^lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp)^lstm_8/lstm_cell_8/MatMul/ReadVariableOp+^lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp^lstm_8/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         : : : : : : : 2B
conv1d_7/BiasAdd/ReadVariableOpconv1d_7/BiasAdd/ReadVariableOp2Z
+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2V
)lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp)lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp2T
(lstm_8/lstm_cell_8/MatMul/ReadVariableOp(lstm_8/lstm_cell_8/MatMul/ReadVariableOp2X
*lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp*lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp2
lstm_8/whilelstm_8/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
т
╩
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924296
conv1d_7_input&
conv1d_7_4924278:
conv1d_7_4924280:!
lstm_8_4924283:	░	"
lstm_8_4924285:
м░	
lstm_8_4924287:	░	#
dense_10_4924290:	м
dense_10_4924292:
identityИв conv1d_7/StatefulPartitionedCallв dense_10/StatefulPartitionedCallвlstm_8/StatefulPartitionedCall 
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCallconv1d_7_inputconv1d_7_4924278conv1d_7_4924280*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv1d_7_layer_call_and_return_conditional_losses_4923818б
lstm_8/StatefulPartitionedCallStatefulPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0lstm_8_4924283lstm_8_4924285lstm_8_4924287*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_8_layer_call_and_return_conditional_losses_4923968Ф
 dense_10/StatefulPartitionedCallStatefulPartitionedCall'lstm_8/StatefulPartitionedCall:output:0dense_10_4924290dense_10_4924292*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_4923986x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         н
NoOpNoOp!^conv1d_7/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall^lstm_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         : : : : : : : 2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2@
lstm_8/StatefulPartitionedCalllstm_8/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_nameconv1d_7_input
╔	
╡
.__inference_sequential_7_layer_call_fn_4924275
conv1d_7_input
unknown:
	unknown_0:
	unknown_1:	░	
	unknown_2:
м░	
	unknown_3:	░	
	unknown_4:	м
	unknown_5:
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallconv1d_7_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924239o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_nameconv1d_7_input
т
╩
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924317
conv1d_7_input&
conv1d_7_4924299:
conv1d_7_4924301:!
lstm_8_4924304:	░	"
lstm_8_4924306:
м░	
lstm_8_4924308:	░	#
dense_10_4924311:	м
dense_10_4924313:
identityИв conv1d_7/StatefulPartitionedCallв dense_10/StatefulPartitionedCallвlstm_8/StatefulPartitionedCall 
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCallconv1d_7_inputconv1d_7_4924299conv1d_7_4924301*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv1d_7_layer_call_and_return_conditional_losses_4923818б
lstm_8/StatefulPartitionedCallStatefulPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0lstm_8_4924304lstm_8_4924306lstm_8_4924308*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_8_layer_call_and_return_conditional_losses_4924178Ф
 dense_10/StatefulPartitionedCallStatefulPartitionedCall'lstm_8/StatefulPartitionedCall:output:0dense_10_4924311dense_10_4924313*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_4923986x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         н
NoOpNoOp!^conv1d_7/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall^lstm_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         : : : : : : : 2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2@
lstm_8/StatefulPartitionedCalllstm_8/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_nameconv1d_7_input
╛
╚
while_cond_4924836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4924836___redundant_placeholder05
1while_while_cond_4924836___redundant_placeholder15
1while_while_cond_4924836___redundant_placeholder25
1while_while_cond_4924836___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         м:         м: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
:
·
╢
(__inference_lstm_8_layer_call_fn_4924766

inputs
unknown:	░	
	unknown_0:
м░	
	unknown_1:	░	
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_8_layer_call_and_return_conditional_losses_4923968p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         м`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ж$
х
while_body_4923523
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_8_4923547_0:	░	/
while_lstm_cell_8_4923549_0:
м░	*
while_lstm_cell_8_4923551_0:	░	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_8_4923547:	░	-
while_lstm_cell_8_4923549:
м░	(
while_lstm_cell_8_4923551:	░	Ив)while/lstm_cell_8/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╡
)while/lstm_cell_8/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_8_4923547_0while_lstm_cell_8_4923549_0while_lstm_cell_8_4923551_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         м:         м:         м*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_8_layer_call_and_return_conditional_losses_4923508r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:02while/lstm_cell_8/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity2while/lstm_cell_8/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         мР
while/Identity_5Identity2while/lstm_cell_8/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:         мx

while/NoOpNoOp*^while/lstm_cell_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_8_4923547while_lstm_cell_8_4923547_0"8
while_lstm_cell_8_4923549while_lstm_cell_8_4923549_0"8
while_lstm_cell_8_4923551while_lstm_cell_8_4923551_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         м:         м: : : : : 2V
)while/lstm_cell_8/StatefulPartitionedCall)while/lstm_cell_8/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
: 
╪P
╩
&sequential_7_lstm_8_while_body_4923350D
@sequential_7_lstm_8_while_sequential_7_lstm_8_while_loop_counterJ
Fsequential_7_lstm_8_while_sequential_7_lstm_8_while_maximum_iterations)
%sequential_7_lstm_8_while_placeholder+
'sequential_7_lstm_8_while_placeholder_1+
'sequential_7_lstm_8_while_placeholder_2+
'sequential_7_lstm_8_while_placeholder_3C
?sequential_7_lstm_8_while_sequential_7_lstm_8_strided_slice_1_0
{sequential_7_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_8_tensorarrayunstack_tensorlistfromtensor_0Y
Fsequential_7_lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0:	░	\
Hsequential_7_lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0:
м░	V
Gsequential_7_lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0:	░	&
"sequential_7_lstm_8_while_identity(
$sequential_7_lstm_8_while_identity_1(
$sequential_7_lstm_8_while_identity_2(
$sequential_7_lstm_8_while_identity_3(
$sequential_7_lstm_8_while_identity_4(
$sequential_7_lstm_8_while_identity_5A
=sequential_7_lstm_8_while_sequential_7_lstm_8_strided_slice_1}
ysequential_7_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_8_tensorarrayunstack_tensorlistfromtensorW
Dsequential_7_lstm_8_while_lstm_cell_8_matmul_readvariableop_resource:	░	Z
Fsequential_7_lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource:
м░	T
Esequential_7_lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource:	░	Ив<sequential_7/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOpв;sequential_7/lstm_8/while/lstm_cell_8/MatMul/ReadVariableOpв=sequential_7/lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOpЬ
Ksequential_7/lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       К
=sequential_7/lstm_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_7_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_8_tensorarrayunstack_tensorlistfromtensor_0%sequential_7_lstm_8_while_placeholderTsequential_7/lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0├
;sequential_7/lstm_8/while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOpFsequential_7_lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes
:	░	*
dtype0Ї
,sequential_7/lstm_8/while/lstm_cell_8/MatMulMatMulDsequential_7/lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_7/lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	╚
=sequential_7/lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOpHsequential_7_lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
м░	*
dtype0█
.sequential_7/lstm_8/while/lstm_cell_8/MatMul_1MatMul'sequential_7_lstm_8_while_placeholder_2Esequential_7/lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	╫
)sequential_7/lstm_8/while/lstm_cell_8/addAddV26sequential_7/lstm_8/while/lstm_cell_8/MatMul:product:08sequential_7/lstm_8/while/lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	┴
<sequential_7/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOpGsequential_7_lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:░	*
dtype0р
-sequential_7/lstm_8/while/lstm_cell_8/BiasAddBiasAdd-sequential_7/lstm_8/while/lstm_cell_8/add:z:0Dsequential_7/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	w
5sequential_7/lstm_8/while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :м
+sequential_7/lstm_8/while/lstm_cell_8/splitSplit>sequential_7/lstm_8/while/lstm_cell_8/split/split_dim:output:06sequential_7/lstm_8/while/lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splitб
-sequential_7/lstm_8/while/lstm_cell_8/SigmoidSigmoid4sequential_7/lstm_8/while/lstm_cell_8/split:output:0*
T0*(
_output_shapes
:         мг
/sequential_7/lstm_8/while/lstm_cell_8/Sigmoid_1Sigmoid4sequential_7/lstm_8/while/lstm_cell_8/split:output:1*
T0*(
_output_shapes
:         м┴
)sequential_7/lstm_8/while/lstm_cell_8/mulMul3sequential_7/lstm_8/while/lstm_cell_8/Sigmoid_1:y:0'sequential_7_lstm_8_while_placeholder_3*
T0*(
_output_shapes
:         мЫ
*sequential_7/lstm_8/while/lstm_cell_8/ReluRelu4sequential_7/lstm_8/while/lstm_cell_8/split:output:2*
T0*(
_output_shapes
:         м╥
+sequential_7/lstm_8/while/lstm_cell_8/mul_1Mul1sequential_7/lstm_8/while/lstm_cell_8/Sigmoid:y:08sequential_7/lstm_8/while/lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         м╟
+sequential_7/lstm_8/while/lstm_cell_8/add_1AddV2-sequential_7/lstm_8/while/lstm_cell_8/mul:z:0/sequential_7/lstm_8/while/lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         мг
/sequential_7/lstm_8/while/lstm_cell_8/Sigmoid_2Sigmoid4sequential_7/lstm_8/while/lstm_cell_8/split:output:3*
T0*(
_output_shapes
:         мШ
,sequential_7/lstm_8/while/lstm_cell_8/Relu_1Relu/sequential_7/lstm_8/while/lstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         м╓
+sequential_7/lstm_8/while/lstm_cell_8/mul_2Mul3sequential_7/lstm_8/while/lstm_cell_8/Sigmoid_2:y:0:sequential_7/lstm_8/while/lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мЖ
Dsequential_7/lstm_8/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ╝
>sequential_7/lstm_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_7_lstm_8_while_placeholder_1Msequential_7/lstm_8/while/TensorArrayV2Write/TensorListSetItem/index:output:0/sequential_7/lstm_8/while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥a
sequential_7/lstm_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ш
sequential_7/lstm_8/while/addAddV2%sequential_7_lstm_8_while_placeholder(sequential_7/lstm_8/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_7/lstm_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :╖
sequential_7/lstm_8/while/add_1AddV2@sequential_7_lstm_8_while_sequential_7_lstm_8_while_loop_counter*sequential_7/lstm_8/while/add_1/y:output:0*
T0*
_output_shapes
: Х
"sequential_7/lstm_8/while/IdentityIdentity#sequential_7/lstm_8/while/add_1:z:0^sequential_7/lstm_8/while/NoOp*
T0*
_output_shapes
: ║
$sequential_7/lstm_8/while/Identity_1IdentityFsequential_7_lstm_8_while_sequential_7_lstm_8_while_maximum_iterations^sequential_7/lstm_8/while/NoOp*
T0*
_output_shapes
: Х
$sequential_7/lstm_8/while/Identity_2Identity!sequential_7/lstm_8/while/add:z:0^sequential_7/lstm_8/while/NoOp*
T0*
_output_shapes
: ┬
$sequential_7/lstm_8/while/Identity_3IdentityNsequential_7/lstm_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_7/lstm_8/while/NoOp*
T0*
_output_shapes
: ╡
$sequential_7/lstm_8/while/Identity_4Identity/sequential_7/lstm_8/while/lstm_cell_8/mul_2:z:0^sequential_7/lstm_8/while/NoOp*
T0*(
_output_shapes
:         м╡
$sequential_7/lstm_8/while/Identity_5Identity/sequential_7/lstm_8/while/lstm_cell_8/add_1:z:0^sequential_7/lstm_8/while/NoOp*
T0*(
_output_shapes
:         мЭ
sequential_7/lstm_8/while/NoOpNoOp=^sequential_7/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp<^sequential_7/lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp>^sequential_7/lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Q
"sequential_7_lstm_8_while_identity+sequential_7/lstm_8/while/Identity:output:0"U
$sequential_7_lstm_8_while_identity_1-sequential_7/lstm_8/while/Identity_1:output:0"U
$sequential_7_lstm_8_while_identity_2-sequential_7/lstm_8/while/Identity_2:output:0"U
$sequential_7_lstm_8_while_identity_3-sequential_7/lstm_8/while/Identity_3:output:0"U
$sequential_7_lstm_8_while_identity_4-sequential_7/lstm_8/while/Identity_4:output:0"U
$sequential_7_lstm_8_while_identity_5-sequential_7/lstm_8/while/Identity_5:output:0"Р
Esequential_7_lstm_8_while_lstm_cell_8_biasadd_readvariableop_resourceGsequential_7_lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0"Т
Fsequential_7_lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resourceHsequential_7_lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0"О
Dsequential_7_lstm_8_while_lstm_cell_8_matmul_readvariableop_resourceFsequential_7_lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0"А
=sequential_7_lstm_8_while_sequential_7_lstm_8_strided_slice_1?sequential_7_lstm_8_while_sequential_7_lstm_8_strided_slice_1_0"°
ysequential_7_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_8_tensorarrayunstack_tensorlistfromtensor{sequential_7_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_8_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         м:         м: : : : : 2|
<sequential_7/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp<sequential_7/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp2z
;sequential_7/lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp;sequential_7/lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp2~
=sequential_7/lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp=sequential_7/lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
: 
╩
┬
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924239

inputs&
conv1d_7_4924221:
conv1d_7_4924223:!
lstm_8_4924226:	░	"
lstm_8_4924228:
м░	
lstm_8_4924230:	░	#
dense_10_4924233:	м
dense_10_4924235:
identityИв conv1d_7/StatefulPartitionedCallв dense_10/StatefulPartitionedCallвlstm_8/StatefulPartitionedCallў
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_7_4924221conv1d_7_4924223*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv1d_7_layer_call_and_return_conditional_losses_4923818б
lstm_8/StatefulPartitionedCallStatefulPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0lstm_8_4924226lstm_8_4924228lstm_8_4924230*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_8_layer_call_and_return_conditional_losses_4924178Ф
 dense_10/StatefulPartitionedCallStatefulPartitionedCall'lstm_8/StatefulPartitionedCall:output:0dense_10_4924233dense_10_4924235*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_4923986x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         н
NoOpNoOp!^conv1d_7/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall^lstm_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         : : : : : : : 2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2@
lstm_8/StatefulPartitionedCalllstm_8/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ЛK
Ц
C__inference_lstm_8_layer_call_and_return_conditional_losses_4923968

inputs=
*lstm_cell_8_matmul_readvariableop_resource:	░	@
,lstm_cell_8_matmul_1_readvariableop_resource:
м░	:
+lstm_cell_8_biasadd_readvariableop_resource:	░	
identityИв"lstm_cell_8/BiasAdd/ReadVariableOpв!lstm_cell_8/MatMul/ReadVariableOpв#lstm_cell_8/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         мS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         мc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskН
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes
:	░	*
dtype0Ф
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Т
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
м░	*
dtype0О
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Й
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	Л
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:░	*
dtype0Т
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splitm
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*(
_output_shapes
:         мo
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*(
_output_shapes
:         мv
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         мg
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*(
_output_shapes
:         мД
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         мy
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         мo
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*(
_output_shapes
:         мd
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         мИ
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         м:         м: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4923883*
condR
while_cond_4923882*M
output_shapes<
:: : : : :         м:         м: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         м*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         м*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         м[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         м╜
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Т
╕
(__inference_lstm_8_layer_call_fn_4924755
inputs_0
unknown:	░	
	unknown_0:
м░	
	unknown_1:	░	
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_8_layer_call_and_return_conditional_losses_4923786p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         м`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╔	
╡
.__inference_sequential_7_layer_call_fn_4924010
conv1d_7_input
unknown:
	unknown_0:
	unknown_1:	░	
	unknown_2:
м░	
	unknown_3:	░	
	unknown_4:	м
	unknown_5:
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallconv1d_7_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_4923993o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_nameconv1d_7_input
▒	
н
.__inference_sequential_7_layer_call_fn_4924382

inputs
unknown:
	unknown_0:
	unknown_1:	░	
	unknown_2:
м░	
	unknown_3:	░	
	unknown_4:	м
	unknown_5:
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924239o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╞j
╪
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924708

inputsJ
4conv1d_7_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_7_biasadd_readvariableop_resource:D
1lstm_8_lstm_cell_8_matmul_readvariableop_resource:	░	G
3lstm_8_lstm_cell_8_matmul_1_readvariableop_resource:
м░	A
2lstm_8_lstm_cell_8_biasadd_readvariableop_resource:	░	:
'dense_10_matmul_readvariableop_resource:	м6
(dense_10_biasadd_readvariableop_resource:
identityИвconv1d_7/BiasAdd/ReadVariableOpв+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpвdense_10/BiasAdd/ReadVariableOpвdense_10/MatMul/ReadVariableOpв)lstm_8/lstm_cell_8/BiasAdd/ReadVariableOpв(lstm_8/lstm_cell_8/MatMul/ReadVariableOpв*lstm_8/lstm_cell_8/MatMul_1/ReadVariableOpвlstm_8/whilei
conv1d_7/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        У
conv1d_7/Conv1D/ExpandDims
ExpandDimsinputs'conv1d_7/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         д
+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_7/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ╗
conv1d_7/Conv1D/ExpandDims_1
ExpandDims3conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_7/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:╚
conv1d_7/Conv1DConv2D#conv1d_7/Conv1D/ExpandDims:output:0%conv1d_7/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
Т
conv1d_7/Conv1D/SqueezeSqueezeconv1d_7/Conv1D:output:0*
T0*+
_output_shapes
:         *
squeeze_dims

¤        Д
conv1d_7/BiasAdd/ReadVariableOpReadVariableOp(conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
conv1d_7/BiasAddBiasAdd conv1d_7/Conv1D/Squeeze:output:0'conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         f
conv1d_7/ReluReluconv1d_7/BiasAdd:output:0*
T0*+
_output_shapes
:         W
lstm_8/ShapeShapeconv1d_7/Relu:activations:0*
T0*
_output_shapes
:d
lstm_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_8/strided_sliceStridedSlicelstm_8/Shape:output:0#lstm_8/strided_slice/stack:output:0%lstm_8/strided_slice/stack_1:output:0%lstm_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мИ
lstm_8/zeros/packedPacklstm_8/strided_slice:output:0lstm_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    В
lstm_8/zerosFilllstm_8/zeros/packed:output:0lstm_8/zeros/Const:output:0*
T0*(
_output_shapes
:         мZ
lstm_8/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мМ
lstm_8/zeros_1/packedPacklstm_8/strided_slice:output:0 lstm_8/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_8/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    И
lstm_8/zeros_1Filllstm_8/zeros_1/packed:output:0lstm_8/zeros_1/Const:output:0*
T0*(
_output_shapes
:         мj
lstm_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Р
lstm_8/transpose	Transposeconv1d_7/Relu:activations:0lstm_8/transpose/perm:output:0*
T0*+
_output_shapes
:         R
lstm_8/Shape_1Shapelstm_8/transpose:y:0*
T0*
_output_shapes
:f
lstm_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_8/strided_slice_1StridedSlicelstm_8/Shape_1:output:0%lstm_8/strided_slice_1/stack:output:0'lstm_8/strided_slice_1/stack_1:output:0'lstm_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╔
lstm_8/TensorArrayV2TensorListReserve+lstm_8/TensorArrayV2/element_shape:output:0lstm_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Н
<lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ї
.lstm_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_8/transpose:y:0Elstm_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥f
lstm_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
lstm_8/strided_slice_2StridedSlicelstm_8/transpose:y:0%lstm_8/strided_slice_2/stack:output:0'lstm_8/strided_slice_2/stack_1:output:0'lstm_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЫ
(lstm_8/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp1lstm_8_lstm_cell_8_matmul_readvariableop_resource*
_output_shapes
:	░	*
dtype0й
lstm_8/lstm_cell_8/MatMulMatMullstm_8/strided_slice_2:output:00lstm_8/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	а
*lstm_8/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp3lstm_8_lstm_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
м░	*
dtype0г
lstm_8/lstm_cell_8/MatMul_1MatMullstm_8/zeros:output:02lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Ю
lstm_8/lstm_cell_8/addAddV2#lstm_8/lstm_cell_8/MatMul:product:0%lstm_8/lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	Щ
)lstm_8/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp2lstm_8_lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:░	*
dtype0з
lstm_8/lstm_cell_8/BiasAddBiasAddlstm_8/lstm_cell_8/add:z:01lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	d
"lstm_8/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :є
lstm_8/lstm_cell_8/splitSplit+lstm_8/lstm_cell_8/split/split_dim:output:0#lstm_8/lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_split{
lstm_8/lstm_cell_8/SigmoidSigmoid!lstm_8/lstm_cell_8/split:output:0*
T0*(
_output_shapes
:         м}
lstm_8/lstm_cell_8/Sigmoid_1Sigmoid!lstm_8/lstm_cell_8/split:output:1*
T0*(
_output_shapes
:         мЛ
lstm_8/lstm_cell_8/mulMul lstm_8/lstm_cell_8/Sigmoid_1:y:0lstm_8/zeros_1:output:0*
T0*(
_output_shapes
:         мu
lstm_8/lstm_cell_8/ReluRelu!lstm_8/lstm_cell_8/split:output:2*
T0*(
_output_shapes
:         мЩ
lstm_8/lstm_cell_8/mul_1Mullstm_8/lstm_cell_8/Sigmoid:y:0%lstm_8/lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         мО
lstm_8/lstm_cell_8/add_1AddV2lstm_8/lstm_cell_8/mul:z:0lstm_8/lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         м}
lstm_8/lstm_cell_8/Sigmoid_2Sigmoid!lstm_8/lstm_cell_8/split:output:3*
T0*(
_output_shapes
:         мr
lstm_8/lstm_cell_8/Relu_1Relulstm_8/lstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         мЭ
lstm_8/lstm_cell_8/mul_2Mul lstm_8/lstm_cell_8/Sigmoid_2:y:0'lstm_8/lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мu
$lstm_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  e
#lstm_8/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_8/TensorArrayV2_1TensorListReserve-lstm_8/TensorArrayV2_1/element_shape:output:0,lstm_8/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥M
lstm_8/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         [
lstm_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ч
lstm_8/whileWhile"lstm_8/while/loop_counter:output:0(lstm_8/while/maximum_iterations:output:0lstm_8/time:output:0lstm_8/TensorArrayV2_1:handle:0lstm_8/zeros:output:0lstm_8/zeros_1:output:0lstm_8/strided_slice_1:output:0>lstm_8/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_8_lstm_cell_8_matmul_readvariableop_resource3lstm_8_lstm_cell_8_matmul_1_readvariableop_resource2lstm_8_lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         м:         м: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_8_while_body_4924617*%
condR
lstm_8_while_cond_4924616*M
output_shapes<
:: : : : :         м:         м: : : : : *
parallel_iterations И
7lstm_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ь
)lstm_8/TensorArrayV2Stack/TensorListStackTensorListStacklstm_8/while:output:3@lstm_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         м*
element_dtype0*
num_elementso
lstm_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         h
lstm_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
lstm_8/strided_slice_3StridedSlice2lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_8/strided_slice_3/stack:output:0'lstm_8/strided_slice_3/stack_1:output:0'lstm_8/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         м*
shrink_axis_maskl
lstm_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          м
lstm_8/transpose_1	Transpose2lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_8/transpose_1/perm:output:0*
T0*,
_output_shapes
:         мb
lstm_8/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    З
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes
:	м*
dtype0Ф
dense_10/MatMulMatMullstm_8/strided_slice_3:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_10/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ь
NoOpNoOp ^conv1d_7/BiasAdd/ReadVariableOp,^conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp*^lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp)^lstm_8/lstm_cell_8/MatMul/ReadVariableOp+^lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp^lstm_8/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         : : : : : : : 2B
conv1d_7/BiasAdd/ReadVariableOpconv1d_7/BiasAdd/ReadVariableOp2Z
+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2V
)lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp)lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp2T
(lstm_8/lstm_cell_8/MatMul/ReadVariableOp(lstm_8/lstm_cell_8/MatMul/ReadVariableOp2X
*lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp*lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp2
lstm_8/whilelstm_8/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ЛK
Ц
C__inference_lstm_8_layer_call_and_return_conditional_losses_4925357

inputs=
*lstm_cell_8_matmul_readvariableop_resource:	░	@
,lstm_cell_8_matmul_1_readvariableop_resource:
м░	:
+lstm_cell_8_biasadd_readvariableop_resource:	░	
identityИв"lstm_cell_8/BiasAdd/ReadVariableOpв!lstm_cell_8/MatMul/ReadVariableOpв#lstm_cell_8/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         мS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         мc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskН
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes
:	░	*
dtype0Ф
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Т
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
м░	*
dtype0О
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Й
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	Л
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:░	*
dtype0Т
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splitm
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*(
_output_shapes
:         мo
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*(
_output_shapes
:         мv
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         мg
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*(
_output_shapes
:         мД
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         мy
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         мo
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*(
_output_shapes
:         мd
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         мИ
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         м:         м: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4925272*
condR
while_cond_4925271*M
output_shapes<
:: : : : :         м:         м: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         м*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         м*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         м[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         м╜
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╔
Ф
E__inference_conv1d_7_layer_call_and_return_conditional_losses_4923818

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpв"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        Б
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         Т
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : а
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:н
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
А
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:         *
squeeze_dims

¤        r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Б
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         Д
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ы
Е
H__inference_lstm_cell_8_layer_call_and_return_conditional_losses_4923508

inputs

states
states_11
matmul_readvariableop_resource:	░	4
 matmul_1_readvariableop_resource:
м░	.
biasadd_readvariableop_resource:	░	
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	░	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
м░	*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ░	s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:░	*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         мW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         мV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         мO
ReluRelusplit:output:2*
T0*(
_output_shapes
:         м`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:         мU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         мW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         мL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:         мd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:         мY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         м[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         м[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         мС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         :         м:         м: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:PL
(
_output_shapes
:         м
 
_user_specified_namestates:PL
(
_output_shapes
:         м
 
_user_specified_namestates
я
╪
&sequential_7_lstm_8_while_cond_4923349D
@sequential_7_lstm_8_while_sequential_7_lstm_8_while_loop_counterJ
Fsequential_7_lstm_8_while_sequential_7_lstm_8_while_maximum_iterations)
%sequential_7_lstm_8_while_placeholder+
'sequential_7_lstm_8_while_placeholder_1+
'sequential_7_lstm_8_while_placeholder_2+
'sequential_7_lstm_8_while_placeholder_3F
Bsequential_7_lstm_8_while_less_sequential_7_lstm_8_strided_slice_1]
Ysequential_7_lstm_8_while_sequential_7_lstm_8_while_cond_4923349___redundant_placeholder0]
Ysequential_7_lstm_8_while_sequential_7_lstm_8_while_cond_4923349___redundant_placeholder1]
Ysequential_7_lstm_8_while_sequential_7_lstm_8_while_cond_4923349___redundant_placeholder2]
Ysequential_7_lstm_8_while_sequential_7_lstm_8_while_cond_4923349___redundant_placeholder3&
"sequential_7_lstm_8_while_identity
▓
sequential_7/lstm_8/while/LessLess%sequential_7_lstm_8_while_placeholderBsequential_7_lstm_8_while_less_sequential_7_lstm_8_strided_slice_1*
T0*
_output_shapes
: s
"sequential_7/lstm_8/while/IdentityIdentity"sequential_7/lstm_8/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_7_lstm_8_while_identity+sequential_7/lstm_8/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         м:         м: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
:
√8
╩
while_body_4924982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_8_matmul_readvariableop_resource_0:	░	H
4while_lstm_cell_8_matmul_1_readvariableop_resource_0:
м░	B
3while_lstm_cell_8_biasadd_readvariableop_resource_0:	░	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_8_matmul_readvariableop_resource:	░	F
2while_lstm_cell_8_matmul_1_readvariableop_resource:
м░	@
1while_lstm_cell_8_biasadd_readvariableop_resource:	░	Ив(while/lstm_cell_8/BiasAdd/ReadVariableOpв'while/lstm_cell_8/MatMul/ReadVariableOpв)while/lstm_cell_8/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ы
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes
:	░	*
dtype0╕
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	а
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
м░	*
dtype0Я
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Ы
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	Щ
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:░	*
dtype0д
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splity
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*(
_output_shapes
:         м{
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*(
_output_shapes
:         мЕ
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         мs
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*(
_output_shapes
:         мЦ
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         мЛ
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         м{
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*(
_output_shapes
:         мp
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         мЪ
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:         мy
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:         м═

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         м:         м: : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
: 
╛
╚
while_cond_4923715
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4923715___redundant_placeholder05
1while_while_cond_4923715___redundant_placeholder15
1while_while_cond_4923715___redundant_placeholder25
1while_while_cond_4923715___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         м:         м: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
:
К9
Е
C__inference_lstm_8_layer_call_and_return_conditional_losses_4923786

inputs&
lstm_cell_8_4923702:	░	'
lstm_cell_8_4923704:
м░	"
lstm_cell_8_4923706:	░	
identityИв#lstm_cell_8/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         мS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         мc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskў
#lstm_cell_8/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_8_4923702lstm_cell_8_4923704lstm_cell_8_4923706*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         м:         м:         м*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_8_layer_call_and_return_conditional_losses_4923656n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╜
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_8_4923702lstm_cell_8_4923704lstm_cell_8_4923706*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         м:         м: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4923716*
condR
while_cond_4923715*M
output_shapes<
:: : : : :         м:         м: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         м*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         м*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         м[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         мt
NoOpNoOp$^lstm_cell_8/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_8/StatefulPartitionedCall#lstm_cell_8/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
╔
Ф
E__inference_conv1d_7_layer_call_and_return_conditional_losses_4924733

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpв"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        Б
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         Т
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : а
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:н
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
А
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:         *
squeeze_dims

¤        r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Б
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         Д
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
оK
Ш
C__inference_lstm_8_layer_call_and_return_conditional_losses_4924922
inputs_0=
*lstm_cell_8_matmul_readvariableop_resource:	░	@
,lstm_cell_8_matmul_1_readvariableop_resource:
м░	:
+lstm_cell_8_biasadd_readvariableop_resource:	░	
identityИв"lstm_cell_8/BiasAdd/ReadVariableOpв!lstm_cell_8/MatMul/ReadVariableOpв#lstm_cell_8/MatMul_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         мS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         мc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskН
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes
:	░	*
dtype0Ф
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Т
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
м░	*
dtype0О
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Й
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	Л
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:░	*
dtype0Т
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splitm
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*(
_output_shapes
:         мo
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*(
_output_shapes
:         мv
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         мg
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*(
_output_shapes
:         мД
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         мy
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         мo
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*(
_output_shapes
:         мd
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         мИ
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         м:         м: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4924837*
condR
while_cond_4924836*M
output_shapes<
:: : : : :         м:         м: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         м*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         м*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         м[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         м╜
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
√8
╩
while_body_4924837
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_8_matmul_readvariableop_resource_0:	░	H
4while_lstm_cell_8_matmul_1_readvariableop_resource_0:
м░	B
3while_lstm_cell_8_biasadd_readvariableop_resource_0:	░	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_8_matmul_readvariableop_resource:	░	F
2while_lstm_cell_8_matmul_1_readvariableop_resource:
м░	@
1while_lstm_cell_8_biasadd_readvariableop_resource:	░	Ив(while/lstm_cell_8/BiasAdd/ReadVariableOpв'while/lstm_cell_8/MatMul/ReadVariableOpв)while/lstm_cell_8/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ы
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes
:	░	*
dtype0╕
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	а
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
м░	*
dtype0Я
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Ы
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	Щ
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:░	*
dtype0д
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splity
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*(
_output_shapes
:         м{
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*(
_output_shapes
:         мЕ
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         мs
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*(
_output_shapes
:         мЦ
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         мЛ
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         м{
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*(
_output_shapes
:         мp
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         мЪ
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:         мy
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:         м═

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         м:         м: : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
: 
√8
╩
while_body_4925272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_8_matmul_readvariableop_resource_0:	░	H
4while_lstm_cell_8_matmul_1_readvariableop_resource_0:
м░	B
3while_lstm_cell_8_biasadd_readvariableop_resource_0:	░	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_8_matmul_readvariableop_resource:	░	F
2while_lstm_cell_8_matmul_1_readvariableop_resource:
м░	@
1while_lstm_cell_8_biasadd_readvariableop_resource:	░	Ив(while/lstm_cell_8/BiasAdd/ReadVariableOpв'while/lstm_cell_8/MatMul/ReadVariableOpв)while/lstm_cell_8/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ы
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes
:	░	*
dtype0╕
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	а
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
м░	*
dtype0Я
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Ы
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	Щ
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:░	*
dtype0д
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splity
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*(
_output_shapes
:         м{
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*(
_output_shapes
:         мЕ
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         мs
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*(
_output_shapes
:         мЦ
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         мЛ
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         м{
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*(
_output_shapes
:         мp
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         мЪ
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:         мy
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:         м═

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         м:         м: : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
: 
╠	
ў
E__inference_dense_10_layer_call_and_return_conditional_losses_4925376

inputs1
matmul_readvariableop_resource:	м-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	м*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         м: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
√8
╩
while_body_4924093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_8_matmul_readvariableop_resource_0:	░	H
4while_lstm_cell_8_matmul_1_readvariableop_resource_0:
м░	B
3while_lstm_cell_8_biasadd_readvariableop_resource_0:	░	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_8_matmul_readvariableop_resource:	░	F
2while_lstm_cell_8_matmul_1_readvariableop_resource:
м░	@
1while_lstm_cell_8_biasadd_readvariableop_resource:	░	Ив(while/lstm_cell_8/BiasAdd/ReadVariableOpв'while/lstm_cell_8/MatMul/ReadVariableOpв)while/lstm_cell_8/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ы
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes
:	░	*
dtype0╕
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	а
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
м░	*
dtype0Я
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Ы
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	Щ
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:░	*
dtype0д
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splity
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*(
_output_shapes
:         м{
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*(
_output_shapes
:         мЕ
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         мs
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*(
_output_shapes
:         мЦ
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         мЛ
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         м{
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*(
_output_shapes
:         мp
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         мЪ
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:         мy
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:         м═

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         м:         м: : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
: 
√8
╩
while_body_4923883
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_8_matmul_readvariableop_resource_0:	░	H
4while_lstm_cell_8_matmul_1_readvariableop_resource_0:
м░	B
3while_lstm_cell_8_biasadd_readvariableop_resource_0:	░	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_8_matmul_readvariableop_resource:	░	F
2while_lstm_cell_8_matmul_1_readvariableop_resource:
м░	@
1while_lstm_cell_8_biasadd_readvariableop_resource:	░	Ив(while/lstm_cell_8/BiasAdd/ReadVariableOpв'while/lstm_cell_8/MatMul/ReadVariableOpв)while/lstm_cell_8/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ы
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes
:	░	*
dtype0╕
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	а
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
м░	*
dtype0Я
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Ы
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	Щ
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:░	*
dtype0д
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splity
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*(
_output_shapes
:         м{
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*(
_output_shapes
:         мЕ
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         мs
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*(
_output_shapes
:         мЦ
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         мЛ
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         м{
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*(
_output_shapes
:         мp
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         мЪ
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:         мy
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:         м═

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         м:         м: : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
: 
╛
╚
while_cond_4925271
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4925271___redundant_placeholder05
1while_while_cond_4925271___redundant_placeholder15
1while_while_cond_4925271___redundant_placeholder25
1while_while_cond_4925271___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         м:         м: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
:
дA
к

lstm_8_while_body_4924617*
&lstm_8_while_lstm_8_while_loop_counter0
,lstm_8_while_lstm_8_while_maximum_iterations
lstm_8_while_placeholder
lstm_8_while_placeholder_1
lstm_8_while_placeholder_2
lstm_8_while_placeholder_3)
%lstm_8_while_lstm_8_strided_slice_1_0e
alstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0:	░	O
;lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0:
м░	I
:lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0:	░	
lstm_8_while_identity
lstm_8_while_identity_1
lstm_8_while_identity_2
lstm_8_while_identity_3
lstm_8_while_identity_4
lstm_8_while_identity_5'
#lstm_8_while_lstm_8_strided_slice_1c
_lstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensorJ
7lstm_8_while_lstm_cell_8_matmul_readvariableop_resource:	░	M
9lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource:
м░	G
8lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource:	░	Ив/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOpв.lstm_8/while/lstm_cell_8/MatMul/ReadVariableOpв0lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOpП
>lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╔
0lstm_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0lstm_8_while_placeholderGlstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0й
.lstm_8/while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp9lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes
:	░	*
dtype0═
lstm_8/while/lstm_cell_8/MatMulMatMul7lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	о
0lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp;lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
м░	*
dtype0┤
!lstm_8/while/lstm_cell_8/MatMul_1MatMullstm_8_while_placeholder_28lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	░
lstm_8/while/lstm_cell_8/addAddV2)lstm_8/while/lstm_cell_8/MatMul:product:0+lstm_8/while/lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	з
/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp:lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:░	*
dtype0╣
 lstm_8/while/lstm_cell_8/BiasAddBiasAdd lstm_8/while/lstm_cell_8/add:z:07lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	j
(lstm_8/while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Е
lstm_8/while/lstm_cell_8/splitSplit1lstm_8/while/lstm_cell_8/split/split_dim:output:0)lstm_8/while/lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splitЗ
 lstm_8/while/lstm_cell_8/SigmoidSigmoid'lstm_8/while/lstm_cell_8/split:output:0*
T0*(
_output_shapes
:         мЙ
"lstm_8/while/lstm_cell_8/Sigmoid_1Sigmoid'lstm_8/while/lstm_cell_8/split:output:1*
T0*(
_output_shapes
:         мЪ
lstm_8/while/lstm_cell_8/mulMul&lstm_8/while/lstm_cell_8/Sigmoid_1:y:0lstm_8_while_placeholder_3*
T0*(
_output_shapes
:         мБ
lstm_8/while/lstm_cell_8/ReluRelu'lstm_8/while/lstm_cell_8/split:output:2*
T0*(
_output_shapes
:         мл
lstm_8/while/lstm_cell_8/mul_1Mul$lstm_8/while/lstm_cell_8/Sigmoid:y:0+lstm_8/while/lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         ма
lstm_8/while/lstm_cell_8/add_1AddV2 lstm_8/while/lstm_cell_8/mul:z:0"lstm_8/while/lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         мЙ
"lstm_8/while/lstm_cell_8/Sigmoid_2Sigmoid'lstm_8/while/lstm_cell_8/split:output:3*
T0*(
_output_shapes
:         м~
lstm_8/while/lstm_cell_8/Relu_1Relu"lstm_8/while/lstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         мп
lstm_8/while/lstm_cell_8/mul_2Mul&lstm_8/while/lstm_cell_8/Sigmoid_2:y:0-lstm_8/while/lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мy
7lstm_8/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : И
1lstm_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_8_while_placeholder_1@lstm_8/while/TensorArrayV2Write/TensorListSetItem/index:output:0"lstm_8/while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥T
lstm_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_8/while/addAddV2lstm_8_while_placeholderlstm_8/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
lstm_8/while/add_1AddV2&lstm_8_while_lstm_8_while_loop_counterlstm_8/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_8/while/IdentityIdentitylstm_8/while/add_1:z:0^lstm_8/while/NoOp*
T0*
_output_shapes
: Ж
lstm_8/while/Identity_1Identity,lstm_8_while_lstm_8_while_maximum_iterations^lstm_8/while/NoOp*
T0*
_output_shapes
: n
lstm_8/while/Identity_2Identitylstm_8/while/add:z:0^lstm_8/while/NoOp*
T0*
_output_shapes
: Ы
lstm_8/while/Identity_3IdentityAlstm_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_8/while/NoOp*
T0*
_output_shapes
: О
lstm_8/while/Identity_4Identity"lstm_8/while/lstm_cell_8/mul_2:z:0^lstm_8/while/NoOp*
T0*(
_output_shapes
:         мО
lstm_8/while/Identity_5Identity"lstm_8/while/lstm_cell_8/add_1:z:0^lstm_8/while/NoOp*
T0*(
_output_shapes
:         мщ
lstm_8/while/NoOpNoOp0^lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp/^lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp1^lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_8_while_identitylstm_8/while/Identity:output:0";
lstm_8_while_identity_1 lstm_8/while/Identity_1:output:0";
lstm_8_while_identity_2 lstm_8/while/Identity_2:output:0";
lstm_8_while_identity_3 lstm_8/while/Identity_3:output:0";
lstm_8_while_identity_4 lstm_8/while/Identity_4:output:0";
lstm_8_while_identity_5 lstm_8/while/Identity_5:output:0"L
#lstm_8_while_lstm_8_strided_slice_1%lstm_8_while_lstm_8_strided_slice_1_0"v
8lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource:lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0"x
9lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource;lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0"t
7lstm_8_while_lstm_cell_8_matmul_readvariableop_resource9lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0"─
_lstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensoralstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         м:         м: : : : : 2b
/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp2`
.lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp.lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp2d
0lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp0lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
: 
╛
╚
while_cond_4924092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4924092___redundant_placeholder05
1while_while_cond_4924092___redundant_placeholder15
1while_while_cond_4924092___redundant_placeholder25
1while_while_cond_4924092___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         м:         м: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
:
дA
к

lstm_8_while_body_4924454*
&lstm_8_while_lstm_8_while_loop_counter0
,lstm_8_while_lstm_8_while_maximum_iterations
lstm_8_while_placeholder
lstm_8_while_placeholder_1
lstm_8_while_placeholder_2
lstm_8_while_placeholder_3)
%lstm_8_while_lstm_8_strided_slice_1_0e
alstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0:	░	O
;lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0:
м░	I
:lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0:	░	
lstm_8_while_identity
lstm_8_while_identity_1
lstm_8_while_identity_2
lstm_8_while_identity_3
lstm_8_while_identity_4
lstm_8_while_identity_5'
#lstm_8_while_lstm_8_strided_slice_1c
_lstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensorJ
7lstm_8_while_lstm_cell_8_matmul_readvariableop_resource:	░	M
9lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource:
м░	G
8lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource:	░	Ив/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOpв.lstm_8/while/lstm_cell_8/MatMul/ReadVariableOpв0lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOpП
>lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╔
0lstm_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0lstm_8_while_placeholderGlstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0й
.lstm_8/while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp9lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes
:	░	*
dtype0═
lstm_8/while/lstm_cell_8/MatMulMatMul7lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	о
0lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp;lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
м░	*
dtype0┤
!lstm_8/while/lstm_cell_8/MatMul_1MatMullstm_8_while_placeholder_28lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	░
lstm_8/while/lstm_cell_8/addAddV2)lstm_8/while/lstm_cell_8/MatMul:product:0+lstm_8/while/lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	з
/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp:lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:░	*
dtype0╣
 lstm_8/while/lstm_cell_8/BiasAddBiasAdd lstm_8/while/lstm_cell_8/add:z:07lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	j
(lstm_8/while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Е
lstm_8/while/lstm_cell_8/splitSplit1lstm_8/while/lstm_cell_8/split/split_dim:output:0)lstm_8/while/lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splitЗ
 lstm_8/while/lstm_cell_8/SigmoidSigmoid'lstm_8/while/lstm_cell_8/split:output:0*
T0*(
_output_shapes
:         мЙ
"lstm_8/while/lstm_cell_8/Sigmoid_1Sigmoid'lstm_8/while/lstm_cell_8/split:output:1*
T0*(
_output_shapes
:         мЪ
lstm_8/while/lstm_cell_8/mulMul&lstm_8/while/lstm_cell_8/Sigmoid_1:y:0lstm_8_while_placeholder_3*
T0*(
_output_shapes
:         мБ
lstm_8/while/lstm_cell_8/ReluRelu'lstm_8/while/lstm_cell_8/split:output:2*
T0*(
_output_shapes
:         мл
lstm_8/while/lstm_cell_8/mul_1Mul$lstm_8/while/lstm_cell_8/Sigmoid:y:0+lstm_8/while/lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         ма
lstm_8/while/lstm_cell_8/add_1AddV2 lstm_8/while/lstm_cell_8/mul:z:0"lstm_8/while/lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         мЙ
"lstm_8/while/lstm_cell_8/Sigmoid_2Sigmoid'lstm_8/while/lstm_cell_8/split:output:3*
T0*(
_output_shapes
:         м~
lstm_8/while/lstm_cell_8/Relu_1Relu"lstm_8/while/lstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         мп
lstm_8/while/lstm_cell_8/mul_2Mul&lstm_8/while/lstm_cell_8/Sigmoid_2:y:0-lstm_8/while/lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мy
7lstm_8/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : И
1lstm_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_8_while_placeholder_1@lstm_8/while/TensorArrayV2Write/TensorListSetItem/index:output:0"lstm_8/while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥T
lstm_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_8/while/addAddV2lstm_8_while_placeholderlstm_8/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
lstm_8/while/add_1AddV2&lstm_8_while_lstm_8_while_loop_counterlstm_8/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_8/while/IdentityIdentitylstm_8/while/add_1:z:0^lstm_8/while/NoOp*
T0*
_output_shapes
: Ж
lstm_8/while/Identity_1Identity,lstm_8_while_lstm_8_while_maximum_iterations^lstm_8/while/NoOp*
T0*
_output_shapes
: n
lstm_8/while/Identity_2Identitylstm_8/while/add:z:0^lstm_8/while/NoOp*
T0*
_output_shapes
: Ы
lstm_8/while/Identity_3IdentityAlstm_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_8/while/NoOp*
T0*
_output_shapes
: О
lstm_8/while/Identity_4Identity"lstm_8/while/lstm_cell_8/mul_2:z:0^lstm_8/while/NoOp*
T0*(
_output_shapes
:         мО
lstm_8/while/Identity_5Identity"lstm_8/while/lstm_cell_8/add_1:z:0^lstm_8/while/NoOp*
T0*(
_output_shapes
:         мщ
lstm_8/while/NoOpNoOp0^lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp/^lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp1^lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_8_while_identitylstm_8/while/Identity:output:0";
lstm_8_while_identity_1 lstm_8/while/Identity_1:output:0";
lstm_8_while_identity_2 lstm_8/while/Identity_2:output:0";
lstm_8_while_identity_3 lstm_8/while/Identity_3:output:0";
lstm_8_while_identity_4 lstm_8/while/Identity_4:output:0";
lstm_8_while_identity_5 lstm_8/while/Identity_5:output:0"L
#lstm_8_while_lstm_8_strided_slice_1%lstm_8_while_lstm_8_strided_slice_1_0"v
8lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource:lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0"x
9lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource;lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0"t
7lstm_8_while_lstm_cell_8_matmul_readvariableop_resource9lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0"─
_lstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensoralstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         м:         м: : : : : 2b
/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp2`
.lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp.lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp2d
0lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp0lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
: 
▒r
Б
#__inference__traced_restore_4925675
file_prefix6
 assignvariableop_conv1d_7_kernel:.
 assignvariableop_1_conv1d_7_bias:5
"assignvariableop_2_dense_10_kernel:	м.
 assignvariableop_3_dense_10_bias:?
,assignvariableop_4_lstm_8_lstm_cell_8_kernel:	░	J
6assignvariableop_5_lstm_8_lstm_cell_8_recurrent_kernel:
м░	9
*assignvariableop_6_lstm_8_lstm_cell_8_bias:	░	&
assignvariableop_7_adam_iter:	 (
assignvariableop_8_adam_beta_1: (
assignvariableop_9_adam_beta_2: (
assignvariableop_10_adam_decay: 0
&assignvariableop_11_adam_learning_rate: #
assignvariableop_12_total: #
assignvariableop_13_count: @
*assignvariableop_14_adam_conv1d_7_kernel_m:6
(assignvariableop_15_adam_conv1d_7_bias_m:=
*assignvariableop_16_adam_dense_10_kernel_m:	м6
(assignvariableop_17_adam_dense_10_bias_m:G
4assignvariableop_18_adam_lstm_8_lstm_cell_8_kernel_m:	░	R
>assignvariableop_19_adam_lstm_8_lstm_cell_8_recurrent_kernel_m:
м░	A
2assignvariableop_20_adam_lstm_8_lstm_cell_8_bias_m:	░	@
*assignvariableop_21_adam_conv1d_7_kernel_v:6
(assignvariableop_22_adam_conv1d_7_bias_v:=
*assignvariableop_23_adam_dense_10_kernel_v:	м6
(assignvariableop_24_adam_dense_10_bias_v:G
4assignvariableop_25_adam_lstm_8_lstm_cell_8_kernel_v:	░	R
>assignvariableop_26_adam_lstm_8_lstm_cell_8_recurrent_kernel_v:
м░	A
2assignvariableop_27_adam_lstm_8_lstm_cell_8_bias_v:	░	
identity_29ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9т
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*И
value■B√B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHк
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B ░
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*И
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOpAssignVariableOp assignvariableop_conv1d_7_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_7_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_10_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_10_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_4AssignVariableOp,assignvariableop_4_lstm_8_lstm_cell_8_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_5AssignVariableOp6assignvariableop_5_lstm_8_lstm_cell_8_recurrent_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_6AssignVariableOp*assignvariableop_6_lstm_8_lstm_cell_8_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:Л
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_iterIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_11AssignVariableOp&assignvariableop_11_adam_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_conv1d_7_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_conv1d_7_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_10_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_10_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_lstm_8_lstm_cell_8_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:п
AssignVariableOp_19AssignVariableOp>assignvariableop_19_adam_lstm_8_lstm_cell_8_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_lstm_8_lstm_cell_8_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_conv1d_7_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv1d_7_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_10_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_10_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_8_lstm_cell_8_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:п
AssignVariableOp_26AssignVariableOp>assignvariableop_26_adam_lstm_8_lstm_cell_8_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_27AssignVariableOp2assignvariableop_27_adam_lstm_8_lstm_cell_8_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ╖
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: д
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_29Identity_29:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
є
З
H__inference_lstm_cell_8_layer_call_and_return_conditional_losses_4925442

inputs
states_0
states_11
matmul_readvariableop_resource:	░	4
 matmul_1_readvariableop_resource:
м░	.
biasadd_readvariableop_resource:	░	
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	░	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
м░	*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ░	s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:░	*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         мW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         мV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         мO
ReluRelusplit:output:2*
T0*(
_output_shapes
:         м`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:         мU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         мW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         мL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:         мd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:         мY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         м[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         м[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         мС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         :         м:         м: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         м
"
_user_specified_name
states/0:RN
(
_output_shapes
:         м
"
_user_specified_name
states/1
╓?
╤
 __inference__traced_save_4925581
file_prefix.
*savev2_conv1d_7_kernel_read_readvariableop,
(savev2_conv1d_7_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop8
4savev2_lstm_8_lstm_cell_8_kernel_read_readvariableopB
>savev2_lstm_8_lstm_cell_8_recurrent_kernel_read_readvariableop6
2savev2_lstm_8_lstm_cell_8_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_conv1d_7_kernel_m_read_readvariableop3
/savev2_adam_conv1d_7_bias_m_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableop?
;savev2_adam_lstm_8_lstm_cell_8_kernel_m_read_readvariableopI
Esavev2_adam_lstm_8_lstm_cell_8_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_8_lstm_cell_8_bias_m_read_readvariableop5
1savev2_adam_conv1d_7_kernel_v_read_readvariableop3
/savev2_adam_conv1d_7_bias_v_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableop?
;savev2_adam_lstm_8_lstm_cell_8_kernel_v_read_readvariableopI
Esavev2_adam_lstm_8_lstm_cell_8_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_8_lstm_cell_8_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ▀
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*И
value■B√B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHз
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B └
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_7_kernel_read_readvariableop(savev2_conv1d_7_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop4savev2_lstm_8_lstm_cell_8_kernel_read_readvariableop>savev2_lstm_8_lstm_cell_8_recurrent_kernel_read_readvariableop2savev2_lstm_8_lstm_cell_8_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv1d_7_kernel_m_read_readvariableop/savev2_adam_conv1d_7_bias_m_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop;savev2_adam_lstm_8_lstm_cell_8_kernel_m_read_readvariableopEsavev2_adam_lstm_8_lstm_cell_8_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_8_lstm_cell_8_bias_m_read_readvariableop1savev2_adam_conv1d_7_kernel_v_read_readvariableop/savev2_adam_conv1d_7_bias_v_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop;savev2_adam_lstm_8_lstm_cell_8_kernel_v_read_readvariableopEsavev2_adam_lstm_8_lstm_cell_8_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_8_lstm_cell_8_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *+
dtypes!
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ё
_input_shapes▐
█: :::	м::	░	:
м░	:░	: : : : : : : :::	м::	░	:
м░	:░	:::	м::	░	:
м░	:░	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	м: 

_output_shapes
::%!

_output_shapes
:	░	:&"
 
_output_shapes
:
м░	:!

_output_shapes	
:░	:

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	м: 

_output_shapes
::%!

_output_shapes
:	░	:&"
 
_output_shapes
:
м░	:!

_output_shapes	
:░	:($
"
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	м: 

_output_shapes
::%!

_output_shapes
:	░	:&"
 
_output_shapes
:
м░	:!

_output_shapes	
:░	:

_output_shapes
: 
оK
Ш
C__inference_lstm_8_layer_call_and_return_conditional_losses_4925067
inputs_0=
*lstm_cell_8_matmul_readvariableop_resource:	░	@
,lstm_cell_8_matmul_1_readvariableop_resource:
м░	:
+lstm_cell_8_biasadd_readvariableop_resource:	░	
identityИв"lstm_cell_8/BiasAdd/ReadVariableOpв!lstm_cell_8/MatMul/ReadVariableOpв#lstm_cell_8/MatMul_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         мS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :мw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         мc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskН
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes
:	░	*
dtype0Ф
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Т
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
м░	*
dtype0О
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Й
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:         ░	Л
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:░	*
dtype0Т
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splitm
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*(
_output_shapes
:         мo
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*(
_output_shapes
:         мv
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         мg
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*(
_output_shapes
:         мД
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*(
_output_shapes
:         мy
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*(
_output_shapes
:         мo
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*(
_output_shapes
:         мd
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*(
_output_shapes
:         мИ
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*(
_output_shapes
:         мn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         м:         м: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4924982*
condR
while_cond_4924981*M
output_shapes<
:: : : : :         м:         м: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ,  ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         м*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         м*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         м[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         м╜
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
В

╘
lstm_8_while_cond_4924453*
&lstm_8_while_lstm_8_while_loop_counter0
,lstm_8_while_lstm_8_while_maximum_iterations
lstm_8_while_placeholder
lstm_8_while_placeholder_1
lstm_8_while_placeholder_2
lstm_8_while_placeholder_3,
(lstm_8_while_less_lstm_8_strided_slice_1C
?lstm_8_while_lstm_8_while_cond_4924453___redundant_placeholder0C
?lstm_8_while_lstm_8_while_cond_4924453___redundant_placeholder1C
?lstm_8_while_lstm_8_while_cond_4924453___redundant_placeholder2C
?lstm_8_while_lstm_8_while_cond_4924453___redundant_placeholder3
lstm_8_while_identity
~
lstm_8/while/LessLesslstm_8_while_placeholder(lstm_8_while_less_lstm_8_strided_slice_1*
T0*
_output_shapes
: Y
lstm_8/while/IdentityIdentitylstm_8/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_8_while_identitylstm_8/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         м:         м: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
:
╩
┬
I__inference_sequential_7_layer_call_and_return_conditional_losses_4923993

inputs&
conv1d_7_4923819:
conv1d_7_4923821:!
lstm_8_4923969:	░	"
lstm_8_4923971:
м░	
lstm_8_4923973:	░	#
dense_10_4923987:	м
dense_10_4923989:
identityИв conv1d_7/StatefulPartitionedCallв dense_10/StatefulPartitionedCallвlstm_8/StatefulPartitionedCallў
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_7_4923819conv1d_7_4923821*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv1d_7_layer_call_and_return_conditional_losses_4923818б
lstm_8/StatefulPartitionedCallStatefulPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0lstm_8_4923969lstm_8_4923971lstm_8_4923973*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         м*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_8_layer_call_and_return_conditional_losses_4923968Ф
 dense_10/StatefulPartitionedCallStatefulPartitionedCall'lstm_8/StatefulPartitionedCall:output:0dense_10_4923987dense_10_4923989*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_4923986x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         н
NoOpNoOp!^conv1d_7/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall^lstm_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         : : : : : : : 2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2@
lstm_8/StatefulPartitionedCalllstm_8/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
є
З
H__inference_lstm_cell_8_layer_call_and_return_conditional_losses_4925474

inputs
states_0
states_11
matmul_readvariableop_resource:	░	4
 matmul_1_readvariableop_resource:
м░	.
biasadd_readvariableop_resource:	░	
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	░	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
м░	*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ░	s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:░	*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ░	Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         м:         м:         м:         м*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         мW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         мV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         мO
ReluRelusplit:output:2*
T0*(
_output_shapes
:         м`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:         мU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         мW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         мL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:         мd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:         мY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         м[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         м[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         мС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         :         м:         м: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         м
"
_user_specified_name
states/0:RN
(
_output_shapes
:         м
"
_user_specified_name
states/1
Щ	
м
%__inference_signature_wrapper_4924344
conv1d_7_input
unknown:
	unknown_0:
	unknown_1:	░	
	unknown_2:
м░	
	unknown_3:	░	
	unknown_4:	м
	unknown_5:
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallconv1d_7_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__wrapped_model_4923441o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_nameconv1d_7_input
Ж$
х
while_body_4923716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_8_4923740_0:	░	/
while_lstm_cell_8_4923742_0:
м░	*
while_lstm_cell_8_4923744_0:	░	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_8_4923740:	░	-
while_lstm_cell_8_4923742:
м░	(
while_lstm_cell_8_4923744:	░	Ив)while/lstm_cell_8/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╡
)while/lstm_cell_8/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_8_4923740_0while_lstm_cell_8_4923742_0while_lstm_cell_8_4923744_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         м:         м:         м*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_8_layer_call_and_return_conditional_losses_4923656r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:02while/lstm_cell_8/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity2while/lstm_cell_8/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         мР
while/Identity_5Identity2while/lstm_cell_8/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:         мx

while/NoOpNoOp*^while/lstm_cell_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_8_4923740while_lstm_cell_8_4923740_0"8
while_lstm_cell_8_4923742while_lstm_cell_8_4923742_0"8
while_lstm_cell_8_4923744while_lstm_cell_8_4923744_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         м:         м: : : : : 2V
)while/lstm_cell_8/StatefulPartitionedCall)while/lstm_cell_8/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         м:.*
(
_output_shapes
:         м:

_output_shapes
: :

_output_shapes
: "╡	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╜
serving_defaultй
M
conv1d_7_input;
 serving_default_conv1d_7_input:0         <
dense_100
StatefulPartitionedCall:0         tensorflow/serving/predict:чн
█
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
▌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
┌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
╗
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias"
_tf_keras_layer
Q
0
1
'2
(3
)4
%5
&6"
trackable_list_wrapper
Q
0
1
'2
(3
)4
%5
&6"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
э
/trace_0
0trace_1
1trace_2
2trace_32В
.__inference_sequential_7_layer_call_fn_4924010
.__inference_sequential_7_layer_call_fn_4924363
.__inference_sequential_7_layer_call_fn_4924382
.__inference_sequential_7_layer_call_fn_4924275┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z/trace_0z0trace_1z1trace_2z2trace_3
┘
3trace_0
4trace_1
5trace_2
6trace_32ю
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924545
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924708
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924296
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924317┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z3trace_0z4trace_1z5trace_2z6trace_3
╘B╤
"__inference__wrapped_model_4923441conv1d_7_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╤
7iter

8beta_1

9beta_2
	:decay
;learning_ratemomp%mq&mr'ms(mt)muvvvw%vx&vy'vz(v{)v|"
	optimizer
,
<serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ю
Btrace_02╤
*__inference_conv1d_7_layer_call_fn_4924717в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zBtrace_0
Й
Ctrace_02ь
E__inference_conv1d_7_layer_call_and_return_conditional_losses_4924733в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zCtrace_0
%:#2conv1d_7/kernel
:2conv1d_7/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
5
'0
(1
)2"
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

Dstates
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ъ
Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_32 
(__inference_lstm_8_layer_call_fn_4924744
(__inference_lstm_8_layer_call_fn_4924755
(__inference_lstm_8_layer_call_fn_4924766
(__inference_lstm_8_layer_call_fn_4924777╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zJtrace_0zKtrace_1zLtrace_2zMtrace_3
╓
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_32ы
C__inference_lstm_8_layer_call_and_return_conditional_losses_4924922
C__inference_lstm_8_layer_call_and_return_conditional_losses_4925067
C__inference_lstm_8_layer_call_and_return_conditional_losses_4925212
C__inference_lstm_8_layer_call_and_return_conditional_losses_4925357╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zNtrace_0zOtrace_1zPtrace_2zQtrace_3
"
_generic_user_object
°
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses
X_random_generator
Y
state_size

'kernel
(recurrent_kernel
)bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
ю
_trace_02╤
*__inference_dense_10_layer_call_fn_4925366в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z_trace_0
Й
`trace_02ь
E__inference_dense_10_layer_call_and_return_conditional_losses_4925376в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z`trace_0
": 	м2dense_10/kernel
:2dense_10/bias
,:*	░	2lstm_8/lstm_cell_8/kernel
7:5
м░	2#lstm_8/lstm_cell_8/recurrent_kernel
&:$░	2lstm_8/lstm_cell_8/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
a0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЗBД
.__inference_sequential_7_layer_call_fn_4924010conv1d_7_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
.__inference_sequential_7_layer_call_fn_4924363inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
.__inference_sequential_7_layer_call_fn_4924382inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЗBД
.__inference_sequential_7_layer_call_fn_4924275conv1d_7_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЪBЧ
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924545inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЪBЧ
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924708inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
вBЯ
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924296conv1d_7_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
вBЯ
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924317conv1d_7_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
╙B╨
%__inference_signature_wrapper_4924344conv1d_7_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_conv1d_7_layer_call_fn_4924717inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_conv1d_7_layer_call_and_return_conditional_losses_4924733inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
РBН
(__inference_lstm_8_layer_call_fn_4924744inputs/0"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
(__inference_lstm_8_layer_call_fn_4924755inputs/0"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ОBЛ
(__inference_lstm_8_layer_call_fn_4924766inputs"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ОBЛ
(__inference_lstm_8_layer_call_fn_4924777inputs"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
лBи
C__inference_lstm_8_layer_call_and_return_conditional_losses_4924922inputs/0"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
лBи
C__inference_lstm_8_layer_call_and_return_conditional_losses_4925067inputs/0"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
йBж
C__inference_lstm_8_layer_call_and_return_conditional_losses_4925212inputs"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
йBж
C__inference_lstm_8_layer_call_and_return_conditional_losses_4925357inputs"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
5
'0
(1
)2"
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
н
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
╒
gtrace_0
htrace_12Ю
-__inference_lstm_cell_8_layer_call_fn_4925393
-__inference_lstm_cell_8_layer_call_fn_4925410╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zgtrace_0zhtrace_1
Л
itrace_0
jtrace_12╘
H__inference_lstm_cell_8_layer_call_and_return_conditional_losses_4925442
H__inference_lstm_cell_8_layer_call_and_return_conditional_losses_4925474╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zitrace_0zjtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_dense_10_layer_call_fn_4925366inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_dense_10_layer_call_and_return_conditional_losses_4925376inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
N
k	variables
l	keras_api
	mtotal
	ncount"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
РBН
-__inference_lstm_cell_8_layer_call_fn_4925393inputsstates/0states/1"╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
-__inference_lstm_cell_8_layer_call_fn_4925410inputsstates/0states/1"╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
лBи
H__inference_lstm_cell_8_layer_call_and_return_conditional_losses_4925442inputsstates/0states/1"╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
лBи
H__inference_lstm_cell_8_layer_call_and_return_conditional_losses_4925474inputsstates/0states/1"╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
m0
n1"
trackable_list_wrapper
-
k	variables"
_generic_user_object
:  (2total
:  (2count
*:(2Adam/conv1d_7/kernel/m
 :2Adam/conv1d_7/bias/m
':%	м2Adam/dense_10/kernel/m
 :2Adam/dense_10/bias/m
1:/	░	2 Adam/lstm_8/lstm_cell_8/kernel/m
<::
м░	2*Adam/lstm_8/lstm_cell_8/recurrent_kernel/m
+:)░	2Adam/lstm_8/lstm_cell_8/bias/m
*:(2Adam/conv1d_7/kernel/v
 :2Adam/conv1d_7/bias/v
':%	м2Adam/dense_10/kernel/v
 :2Adam/dense_10/bias/v
1:/	░	2 Adam/lstm_8/lstm_cell_8/kernel/v
<::
м░	2*Adam/lstm_8/lstm_cell_8/recurrent_kernel/v
+:)░	2Adam/lstm_8/lstm_cell_8/bias/vб
"__inference__wrapped_model_4923441{'()%&;в8
1в.
,К)
conv1d_7_input         
к "3к0
.
dense_10"К
dense_10         н
E__inference_conv1d_7_layer_call_and_return_conditional_losses_4924733d3в0
)в&
$К!
inputs         
к ")в&
К
0         
Ъ Е
*__inference_conv1d_7_layer_call_fn_4924717W3в0
)в&
$К!
inputs         
к "К         ж
E__inference_dense_10_layer_call_and_return_conditional_losses_4925376]%&0в-
&в#
!К
inputs         м
к "%в"
К
0         
Ъ ~
*__inference_dense_10_layer_call_fn_4925366P%&0в-
&в#
!К
inputs         м
к "К         ┼
C__inference_lstm_8_layer_call_and_return_conditional_losses_4924922~'()OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "&в#
К
0         м
Ъ ┼
C__inference_lstm_8_layer_call_and_return_conditional_losses_4925067~'()OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "&в#
К
0         м
Ъ ╡
C__inference_lstm_8_layer_call_and_return_conditional_losses_4925212n'()?в<
5в2
$К!
inputs         

 
p 

 
к "&в#
К
0         м
Ъ ╡
C__inference_lstm_8_layer_call_and_return_conditional_losses_4925357n'()?в<
5в2
$К!
inputs         

 
p

 
к "&в#
К
0         м
Ъ Э
(__inference_lstm_8_layer_call_fn_4924744q'()OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "К         мЭ
(__inference_lstm_8_layer_call_fn_4924755q'()OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "К         мН
(__inference_lstm_8_layer_call_fn_4924766a'()?в<
5в2
$К!
inputs         

 
p 

 
к "К         мН
(__inference_lstm_8_layer_call_fn_4924777a'()?в<
5в2
$К!
inputs         

 
p

 
к "К         м╧
H__inference_lstm_cell_8_layer_call_and_return_conditional_losses_4925442В'()Вв
xвu
 К
inputs         
MвJ
#К 
states/0         м
#К 
states/1         м
p 
к "vвs
lвi
К
0/0         м
GЪD
 К
0/1/0         м
 К
0/1/1         м
Ъ ╧
H__inference_lstm_cell_8_layer_call_and_return_conditional_losses_4925474В'()Вв
xвu
 К
inputs         
MвJ
#К 
states/0         м
#К 
states/1         м
p
к "vвs
lвi
К
0/0         м
GЪD
 К
0/1/0         м
 К
0/1/1         м
Ъ д
-__inference_lstm_cell_8_layer_call_fn_4925393Є'()Вв
xвu
 К
inputs         
MвJ
#К 
states/0         м
#К 
states/1         м
p 
к "fвc
К
0         м
CЪ@
К
1/0         м
К
1/1         мд
-__inference_lstm_cell_8_layer_call_fn_4925410Є'()Вв
xвu
 К
inputs         
MвJ
#К 
states/0         м
#К 
states/1         м
p
к "fвc
К
0         м
CЪ@
К
1/0         м
К
1/1         м┬
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924296u'()%&Cв@
9в6
,К)
conv1d_7_input         
p 

 
к "%в"
К
0         
Ъ ┬
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924317u'()%&Cв@
9в6
,К)
conv1d_7_input         
p

 
к "%в"
К
0         
Ъ ║
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924545m'()%&;в8
1в.
$К!
inputs         
p 

 
к "%в"
К
0         
Ъ ║
I__inference_sequential_7_layer_call_and_return_conditional_losses_4924708m'()%&;в8
1в.
$К!
inputs         
p

 
к "%в"
К
0         
Ъ Ъ
.__inference_sequential_7_layer_call_fn_4924010h'()%&Cв@
9в6
,К)
conv1d_7_input         
p 

 
к "К         Ъ
.__inference_sequential_7_layer_call_fn_4924275h'()%&Cв@
9в6
,К)
conv1d_7_input         
p

 
к "К         Т
.__inference_sequential_7_layer_call_fn_4924363`'()%&;в8
1в.
$К!
inputs         
p 

 
к "К         Т
.__inference_sequential_7_layer_call_fn_4924382`'()%&;в8
1в.
$К!
inputs         
p

 
к "К         ╖
%__inference_signature_wrapper_4924344Н'()%&MвJ
в 
Cк@
>
conv1d_7_input,К)
conv1d_7_input         "3к0
.
dense_10"К
dense_10         