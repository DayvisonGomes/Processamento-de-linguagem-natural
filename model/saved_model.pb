ёЋ9
Ж,╗,
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
љ
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(љ
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
А
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeѕ
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestypeѕ
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttypeѕ
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttypeѕ
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
ї
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
е
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeѕ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
│
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
Ї
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Ќ
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
Ц
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	ѕ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
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
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
Ш
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint         
Ф
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleіжelement_dtype"
element_dtypetype"

shape_typetype:
2	
џ
TensorListReserve
element_shape"
shape_type
num_elements#
handleіжelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ
ћ
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
ѕ"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28╗б7
Ё
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ўu *%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	ўu *
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
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
є
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*&
shared_namelstm/lstm_cell/kernel

)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes

: @*
dtype0
џ
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*0
shared_name!lstm/lstm_cell/recurrent_kernel
Њ
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel*
_output_shapes

:@*
dtype0
~
lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_namelstm/lstm_cell/bias
w
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes
:@*
dtype0
ј
lstm_1/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: **
shared_namelstm_1/lstm_cell_1/kernel
Є
-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/kernel*
_output_shapes

: *
dtype0
б
#lstm_1/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *4
shared_name%#lstm_1/lstm_cell_1/recurrent_kernel
Џ
7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_1/recurrent_kernel*
_output_shapes

: *
dtype0
є
lstm_1/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_namelstm_1/lstm_cell_1/bias

+lstm_1/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/bias*
_output_shapes
: *
dtype0
l

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name1549*
value_dtype0	
|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
Њ
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ўu *,
shared_nameAdam/embedding/embeddings/m
ї
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m*
_output_shapes
:	ўu *
dtype0
ѓ
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
ћ
Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*-
shared_nameAdam/lstm/lstm_cell/kernel/m
Ї
0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m*
_output_shapes

: @*
dtype0
е
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
А
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m*
_output_shapes

:@*
dtype0
ї
Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/lstm/lstm_cell/bias/m
Ё
.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes
:@*
dtype0
ю
 Adam/lstm_1/lstm_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/m
Ћ
4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/m*
_output_shapes

: *
dtype0
░
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
Е
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m*
_output_shapes

: *
dtype0
ћ
Adam/lstm_1/lstm_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/lstm_1/lstm_cell_1/bias/m
Ї
2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/m*
_output_shapes
: *
dtype0
Њ
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ўu *,
shared_nameAdam/embedding/embeddings/v
ї
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v*
_output_shapes
:	ўu *
dtype0
ѓ
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
ћ
Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*-
shared_nameAdam/lstm/lstm_cell/kernel/v
Ї
0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v*
_output_shapes

: @*
dtype0
е
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
А
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v*
_output_shapes

:@*
dtype0
ї
Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/lstm/lstm_cell/bias/v
Ё
.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes
:@*
dtype0
ю
 Adam/lstm_1/lstm_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/v
Ћ
4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/v*
_output_shapes

: *
dtype0
░
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
Е
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v*
_output_shapes

: *
dtype0
ћ
Adam/lstm_1/lstm_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/lstm_1/lstm_cell_1/bias/v
Ї
2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/v*
_output_shapes
: *
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
Б¤
Const_4Const*
_output_shapes	
:ќu*
dtype0*т╬
value┌╬Bо╬ќuB7zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzBzzzzzzzzzzzzzzzzzzzzzzzzBzzzzzzzzzzzB
zzzzzzzzzzBzzzzzzzzBzzzzzzBzzzBzumbisBzumbieBzumbiBzueroBzueriaBzuerettionsBzuerasBzueraBzueiroB
zueirinhasB	zueirinhaBzueirasBzueiraBzueiBzueaBzudoBzuavamBzuarBzuandoBzuadosBzuadoBzuadinhaBzuadaBzuaarBzuaBzuBzotacBzosBzoneBzonasBzonaBzombiesB	zombiemodBzombieBzoeirosBzoeiroBzoeiraBzoarBzoandoBzoamBzoadosBzoadoBzoadinhoBzoadaBzoaBzoB	zitadelleBziraelBzinhaBzimmerBzikaBzikBzigzagB
ziguezagueBzicaBziaBzgspuyBzesBzerouBzerosBzeroBzergBzeremBzereiBzereBzerariaBzeraremBzeraramBzerarBzerandoBzeramosBzeramBzeradoBzeraBzerBzenyattaBzelosBzeloBzeldinhaB	zeladoresBzeladorBzdvBzcdgfrB	zaralhadoBzangadoBzByutubersByummyByukesByudiByuBytByrBypuByouveByoutubesB	youtubersByoutuberByoutubeByoutuByouthByourselfByoursB	youreallyByoureByourB
youngbloodByoungByoullByouByotubeByopByookaByoloB
yoioooopppByoByjpB	yjnjnghmhBygbvByetB	yesterdayByesByepByenneferByenByearsByearByeahByazawaByatchByahByaByBxxxxxxxxxxxBxxxxquickshotBxxmlgBxxiBxxamaBxxBxvideosBxuxaBxulaBxtBxsBxrtxBxpandBxpBxoxoBxouBxopBxoneBxodoBxmanBxliBxixiBxivBxiterBxitBxingariaBxingaremBxingarBxingandoBxingamentosB
xingamentoBxingamBxingadoBxingadBxingaBxingBximosBximoBximbicaBximasBximaBxicosBxicoBxicasBxicaBxiasB	xfgjxvhxhBxffxvgbB	xenoverseBxenofBxenBxddxB	xddddddddBxddddBxddBxdBxcomBxcBxboxBxbaBxatoBxandyBxandeBxamaBxadrezBxBwwwwwwooooowwwwwBwwwBwwfBwweBwwBwthBwtfhBwtfBwtBwrittenBwritingBwriteB	wrestlingB	wrestlersBwrestlerBwraithBwpprsBwppBwowBwouldntBwouldBwosBworthsB	worthlessBworthBworstBworshopBworseBworldsBworldoftrucksBworldBworkshopBworksBworkingBworkedBworkBworgBwordsBwordgenBwordB	wooooooooBwoodsBwoodBwontBwondersB
wonderfullB	wonderfulBwonBwomenBwomansBwollyBwollayBwolframBwolfensteinBwolfBwolayBwolBwokeBwmBwlidBwizardB	witnessedBwithoutBwithcerBwithBwitcherB
witchcraftBwitBwishedBwishBwipesBwipeoutBwipeBwinterBwinsBwinrarBwinningBwinnigBwingsuitBwineBwindsBwindowsBwindownsBwindowBwinBwillzaumBwillingBwilliamBwillamBwillBwileBwildcardBwildBwikiBwiiBwigglingBwiggleBwiedzminBwidowBwidhtB
widescreenBwideBwictherBwichBwhyBwhoreBwholeBwhoBwhiteBwhitBwhisBwhileBwhichBwhereasBwhereBwhenBwhellsBwheelsBwheelerBwheelBwheatleyBwhattttttttttttBwhatsBwhateverB	whatahellBwhatBwgzkBwestBwesseBwesrdtfyuhjiBwesleyBweskerBwereBwentBwellBweirdBweimarBweekendBweekBweebBwebBweaponsBweaponBweakBweBwcBwaysBwayBwavesBwaveBwatteverBwaterBwatchingBwatcherBwatchedBwatchB	watafoqueBwastedBwasteBwasntB
washingtonBwasdBwasBwarzBwarsBwarnsBwarningBwarnigBwarnedBwarnB	warhammerBwarfereBwarfareB	warehouseBwardBwarcraftBwarBwantsBwantedBwantBwannabeBwannaBwandererBwalterBwaltBwalppesB	walpapersBwalpaperBwallsB
wallpapersB	wallpaperB
wallpapaerBwalljumpB
wallhackerBwallhackBwalletsB	wallapersBwallaceBwallBwalkingBwalkBwaitingBwaitinBwaitedBwaitBwaistB
waifuzinhaBwaifusBwahammerBwagnerBwagBwaaaaghBwBvzsBvxhttpsBvwBvvosoBvultoBvulnerabilidadesBvulnerBvulgoBvulgaBvulcBvucBvtncBvtmncBvtfBvsyncBvsffffBvsfdBvsfBvsBvruuuuuuuuuuuuuuuuuuuumBvruuuuuuuuumBvruumBvrumBvrauBvramBvrBvqtijemcBvpnBvozesBvozeriosBvozBvoxelizadosBvoxelBvovBvouBvotosBvotoBvoteBvotadasBvossosBvossoBvossaBvosmecBvortexBvordakaiBvorazesBvooBvontadesBvontadeBvonBvomitoBvomitarB	vomitandoBvomitamBvomBvolvoBvolumeBvoltouBvoltoBvoltinhaBvoltemBvolteiBvolteBvoltavamBvoltavaBvoltasseBvoltasBvoltaremBvoltareiBvoltaramBvoltarBvoltanteBvoltandoBvoltanbalivedoplaystationBvoltamBvoltadoBvoltadeBvoltadaBvoltaB
volkswagenBvolgarrBvolantesBvolanteBvolantaBvolBvoipBvoidBvoiceBvoeBvodelloBvocesBvoceisBvoceBvocBvoarBvoandoBvoamBvoadoresBvoadorasBvoadoraBvoaBvoBvmsBvmBvlwzBvlwBvladofBvizinhosBvizinhoBvizinhasBvizimaBvixxxxBvivosBvivoBvividoBvividaBviviBviveuBviveremBviverBvivendoB	vivenciarBvivemosBvivemBviveBvivasB	vivamenteBvivaBviuBvitoriasBvitoriaBvitorBvitimasBvitimaBvitalBvitaisBvitBvisualsBvisualmenteB	visualizoBvisualizersBvisualizationB
visualizarBvisualBvisuaisBvistosBvistoBvistaBvisouBvisivelmenteBvisivelBvisiveisBvisitarB
visitantesBvisitBvisionBvisibilidadeBvishiBvisheBvishBvisceralBvisaoBvisandoBvisamBvisBvirusBvirtudesBvirtualmenteBvirtualBvirtuaisBvirouBvirotesBviroB
virilidadeBvirgensBvirgemBviremBvireiBvireBvircomBviravaBvirasseBviraremBviraramBviraraBvirarBvirandoBviramBviradoBviradaBviraBvirBviperBvipBviosBviolentoBviolentaB	violenciaB	violationBvioladoBviolBvioBvinteBvintageBvinhoBvinhetaBvinhaBvingouBvingarBvinganBvindosBvindoBvindasBvindaB
vincularamBvincularB	vinculadoB	vinculadaBvinciusBvinciBvimosBvimB	villagersBvillageB	vilazinhaBvilasB	vilarejosBvilarejoBvilaBvilBvijarB!viiidaaaaaaaaaaaaaaaaaaaaaaaaaaaaBviiBvigorBvigiandoBvigiaBvigBvierwersBvieremBvieramBvierBvidrosBvidroBvidradoBvidoBvidiosBvideosB
videogamesB	videogameBvideoBvidentesBvideBvidasBvidaaaaaaaaaaaaaaaBvidaBvictoriaBvictorBvictimsBvictimBviciouBviciosoBvicioBvicieiBvicieBviciateBviciarBviciantementeBvicianteBviciadosBviciadoBviciadinhosBviciadaBviciaBviceralBviceBvicaBvibesBvibeBviavelBviaveisBviaturasBviajoBviajemBviajeiBviajeBviajavamBviajavaBviajarBviajandoBviajadoBviajaBviagensBviagemBviageBviadosBviadoBviadaoBviableB
viabilizarBviaBviBvgaBvezesBvezBveyB	veteranosBveteranoBvestirB
vestimentaBvestidosBvestidoBvestiBvesselBvesesBvesasadadadsadsadBvesBveryBvertigemBverticalizaBverticalidadeBverticalBvertenteBversusBversoesBversoBversionsBversionBversatilidadeBversaoBversaBversB
vermintideBvermelhoB	vermelhasBvermelhaBverisB
verifiqueiB	verificarBverificaBveriB
vergonhosoB
vergonhosaB
vergonhiceB	vergonhasBvergonhaBveremosBveremBvereditoBverdurasBverdejantesBverdeBverdadeirosB
verdadeiroBverdadeirasBverdadeiramenteB
verdadeiraBverdadeBverdadBverboBverbasBverbaBverasBveraBverBventuraBventosBventoB
ventiladorBvenomBvenoBvenhoBvenhamBvenhaB
vengerbergBvenezaBvenenosBvenenoBvendoBvendidosBvendidoBvendidasBvendidaBvendiBvendeuBvenderemBvenderamBvenderBvendendoBvendemB
vendedoresBvendedorBvendeBvendasBvendadosBvendaBvendBvencidosBvenciBvenceuBvenceremBvencerBvencendoBvencedorBvenceBvencBvenBvemosBvemBvelsBvelozesBvelocityBvelocidadesB
velocidadeBveloBvelmenteBvelhosBvelhooowBvelhoB	velhinhosBvelhinhoBvelhaBvelenBvelejarB	velejandoBveleBvelasBvelBvejoBvejamosBvejamBvejaBveisBveioBveiculosBveiculoBveicularBveiaBveiBvegetouBvegetalBvegetaisBvegetaB	veganmodeBveemBvecerBveBvdeBvddBvcsBvcBvaziosBvazioBvaziasBvaziaBvazaBvaultsBvaultBvatangesBvatagensBvastosBvastoBvastidBvastasB
vastamenteBvastaB	vasculharBvarrerBvarreBvarnaBvarisBvariousBvariosBvarietyB	varietiesB
variedadesB	variedadeBvariavesB	variaveisBvariatyBvariasBvariarB	variantesBvarianteBvariandoBvariamBvariadosBvariadoBvariadasBvariadaBvariaBvariBvaraBvarBvaporBvapoBvapeBvaoB	vantajosoB	vantajosaB	vantagensBvantagemBvanishedBvanillaBvaniaBvampiroBvamosBvamoBvamboraBvalveBvaluesBvaluableBvaltBvalorizeBvalorizandoB	valorizamBvalorizadosB
valorizadoBvalorizaBvaloresBvalorantBvalorBvalleyBvaliosaBvalidoB
validationBvalidarB	validandoBvaliantBvaliaBvalheBvalhaBvalewBvaleuBvaleriaBvaleremBvaleramBvalerBvalendoBvalemBvaleBvalaBvalBvaisBvairBvaiiiiiiBvaidadeBvaiBvagueemBvaguearBvagrantBvagosBvagoBvagasBvagarosamenteBvagandoB	vagabundoB	vagabundaBvagaBvagBvadiaBvadiBvacuumBvacumBvacinaBvacilouBvaciloB	vacilaremBvacasBvacaBvacBvaBvBuyrggBuwuBuuuuuuuuuhhhhhhhhBuuuhBuumaButterlyButrapassadoB	utrapacouButopiaButlrajeButilizouButilizoButilizeB	utilizavaButilizarB
utilizandoButilizamB
utilizadosButilizadoresB
utilizadorB	utilizadoB
utilizadasB	utilizadaButilizaButilizButilityButilitB	utilidadeButilButicaButensButeisButcButB	usurfruirBusufruirBusufluirBusuariosBusuarioBusuallyBusuBustaoBusoBusingBusinaBushushBusersBuserBusemBuselessBuseiBusefullBusedBuseasBuseBusdBusaveisBusavamBusavaBusasseBusarmadurasBusariosBusaremBusaramBusarBusandoBusamosBusamB
usahsuahsaBusageBusadosBusadoBusadasBusadaBusabilidadeBusaBusB	uruguaiosBurubuBursosBursoBurlBurinarBurightBurgentementeBurgenteBurgentBurgBureasBurdoBurbanosBurbanasBurBuqemBuqeBuptadesBupsBuppBupouBuploadBupiniBupgradesBupgradeBupeiBupdatesBupdatedBupdateBupcomingBupavaBuparBupandoBupamosBupaBupBuouBuntilBunthinkableB	untenableBunsBunredeemableBunrecognizedBunrealBunprecedentedBunplayeableB	unplaybleB
unplayableBunoBunnistalledB	unninstalBunnecessarilyBunluckyBunlocksBunlockedBunlockB	unlimitedBunlessBunknownB	universosBuniversoBuniversidadeBuniverseBuniuBunityBunitsBunitBunissexuaisBunironicallyBuninstallingBuninstallerBunindoBunimedB	uniformesBuniformeBunidosBunidoBunidadesBunidadeBunicosB	unicornioBunicoBunicasBunicaBuniB	unhealthyBunfunBunfulfilledBunfortunatelyBunfortunatellyB
unfinishedBunfairBuneBundyingB
underwaterB	undertaleB
understandBunderdogBunderB	unchartedBuncaB
unbreakbleBunbreakableBunbelivableBunbelievableB
unbearableB
unbalancedBunasBunacceptableBunableBunaBunB	umjogobomBumjBumbrellaB
umbalancedBumasB	umaaaaaaaBumaaaaaBulxB	ultrawideBultrapassouBultrapasseiBultrapassarBultrapassandoBultrapassagensBultrapassadosBultrapassadoBultrapassadasBultramegacoolBultraBultimosBultimoBultimateBultimasBultimamenteBultimaB	ultilizarBultilizandoBultilizaBulteroBulaBukhuefeBukBujBuivandoBuivaBuiuiBuitoBuiBuhuuuBuhuulBuhnBuhlB*uheuehuehuehuheuheuheuheuheuehuheuheuheuheB
uhauahuahaBuglyBugaBufBueBudosBudoBudiosBudioBudBucluBuckBubutnuBubuntuBubisoftBubiBuberBuavBuauBuashaushausBuapeipiBuamBuaiBuaaaaaaBuBtypesBtypeBtycoonBtwtichesBtwoBtwitterBtwitchBtwistsBtwistizinhoBtwistBtwinsBtwentyBtweetsBtwBtvBtuzadoBtutututuBtutoriasBtutorialB	tutoriaisBtutoriaBturtlesBturtleBturretsBturnsBturnosBturnoBturningBturnedBturnBturmaBturistasBturismoBturdBturcosBturboBtuoBtunnelsB	tunnelingBtunnelesB	tunnelersBtunnelerBtunneleBtunnelarB
tunnelandoBtunnelBtunnedB
tunellingsB	tunellersBtunellarB
tuneleirosBtunelarB	tunelandoBtunelamBtuneladoresBtuneladoBtumuloBtumorB
tumbleweedBtumbasBtulosBtuloB	tudtorialBtudooooooooooooBtudooooooooooBtudoallBtudoBtudeBtudBtttBttkBtsyqucxtqvqBtsBtryingBtryhardsBtryhardandoBtryhardBtryedBtryBtrustBtruquesBtrupeB	trukersmpBtrukBtrueBtruculBtrucksBtruckmpBtruckingB
truckersmpB	truckermpB	truckbookBtruckB	trucidadoBtruBtroxaBtroveBtrovB	trouxesseB	trouxeramBtrouxeBtrouxasBtrouxaBtroupeBtroughBtroubleBtroqueiBtroqueB	tropicaisBtropeBtropasBtropaBtroopsBtronarBtrombadinhaBtrollsBtrolloBtrollarB	trollandoBtrollanBtrollamB	trollagemBtrollaBtrollBtrolarBtrolandoBtrolagemBtrolaBtrojanBtroianasBtrocoB	trocentosBtrocasBtrocaramBtrocarBtrocandoBtrocamosBtrocadosBtrocadoBtrocaBtroBtrixBtrivialBtriunfoBtristezaBtristesBtristeBtrissBtripulantesB	tripuladoB	tripuladaBtripulaBtriploB	triplicarBtripleaBtripleBtriplasBtriplaBtripasBtripB	triologiaBtrioBtrinketsBtringBtrilogiaBtrilhosBtrilhasBtrilhadoBtrilhaBtrigoBtriggerBtriedBtricosBtricoBtrickierBtricaBtributosBtribosBtrialBtriBtrfhjfgB	trezentasBtreylerBtreyarchBtrevasBtretasBtretaBtresBtrensBtreneiBtremidoBtremerB	tremendosBtremendoB	tremendasBtremendamenteBtremendaBtremeBtrembledBtremBtreinosBtreinoBtreinarBtreinamentoBtreinadoBtreinadaBtreesBtreeBtrecoBtrechosBtrechoBtreatedBtreasureBtreBtrckBtraziaBtrazeremBtrazerBtrazendoBtrazemBtrazBtravouBtravnadoB	travestisBtravestBtravesseiroBtravesarBtraveledBtravelBtravecosBtraveBtravavaBtravasseBtravaramBtravarBtravandoBtravamosBtravamentosB
travamentoBtravamBtravadosBtravadoBtravadasBtravadaBtravadBtravaBtraumasBtraumaBtratosBtratoresBtratorBtratoBtrateBtratasseBtratarBtratandoB
tratamentoBtratamBtratadosBtratadoBtratadaBtrataBtrasitBtrasintoBtrashBtraseiroBtrasBtrarBtraquinagensBtrapsBtrapperBtrapaceirosB
trapaceiroBtrapaBtrapBtranstornosB
transtornoB	transposiBtransportesB
transporteBtransportarBtransportadoBtransportadasB
transportaBtransplantadoBtransparenteBtransparecerBtransparBtransouBtransmitiramB
transmitirBtransmitidoBtransmitidaB
transmitemB	transmissBtranslationBtranslatingBtransitoB	transitarBtransiBtransgrediuBtransgenerosBtransformouBtransformersBtransformaramBtransformarBtransformamBtransformadoBtransformadaB
transformaB	transformBtransfigurandoBtransferidoBtransferBtransbordandoBtransarB
transacoesBtransaB
tranquilosB	tranquiloBtranquillitatisBtranquilidadeBtranquilamenteB	tranquilaBtranqueirasBtrancoBtrancarB	trancadosB	trancadasBtrancaB
trampolinsBtrampoBtrampaB	trambolhoBtramasBtramaBtrajetoBtrajetBtrajesBtrajeBtrainB	traillersBtraillerBtrailersBtrailerBtraidorBtragaBtragB
traficanteBtrafegoB	trafegadoBtraduziuBtraduzissemB
traduziremBtraduzirB
traduzidosB	traduzidoB
traduzidasB	traduzidaB
tradutoresBtraduBtradingBtradicionalBtradicionaisBtraderB	trademarkB	tractoresBtracksBtrackingBtraceB	trabalhouB
trabalhosoB
trabalhosaB	trabalhosBtrabalhoBtrabalhavamB
trabalhavaBtrabalharamB	trabalharBtrabalhandosBtrabalhandoB	trabalhamBtrabalhadosBtrabalhadoresBtrabalhadorB
trabalhadoB
trabalhadaBtrabalhaBtrabalhBtraaBtraBtrBtprraBtpdoBtpBtoxidadeBtoxicosBtoxicoB
toxicidadeBtoxicasBtoxicaBtoxicBtownBtowerB	toupeirasBtoughBtoudosBtouchscreenBtouchBtoucaBtouBtottallyBtotosoBtotensBtotemsBtotemB	totamenteB
totalmenteBtotallyBtotalizandoB
totalidadeBtotalBtotaisBtostadorBtossedBtossB	tosquinhaBtoscosBtoscoBtoscasBtoscaBtoscBtorturarB
torturanteB
torturandoB
torturadosB
torturadorBtorturaBtortuosaBtortoBtortaBtorroBtorretasBtorresBtorrentBtorreBtorrarBtorrandoBtorramB
torradeiraBtornouBtornoBtornemBtorneiosBtorneiBtorneBtornavamBtornavaBtornasseBtornariaBtornaramBtornarBtornandoBtornamBtornadosBtornadoB
tornadinhoBtornaBtornB	tormentosBtormentBtoriasBtorcidaBtorcerBtorcendoBtorceBtorcaBtorasBtorBtoquinhoBtoquesBtoqueiBtoqueBtopzeraBtopsterBtopssimoBtopsonBtopsBtopppppBtoppppBtopppB	toppersonBtopperrBtopperBtoppBtopouBtopoBtoplineBtopisterBtopiBtopersonBtopemBtopeiBtopeBtopBtoopBtooopBtooooooooopBtooodosBtoolsBtookBtooBtonturaBtontoBtonsBtonouBtonosBtonoB	toneladasBtonasBtonaBtomouBtomosBtomoBtomemBtomeiBtomeBtombasseBtombadoBtombBtomavaBtomassoBtomarrrBtomaremBtomaramBtomaraBtomarBtomanokuBtomandoBtomamBtomadasBtomadaBtomaBtomBtolkienBtolkenianosB	toleravelB	toleranteBtolerBtoldBtokensBtogetherBtodosBtodomBtodoBtodinhoBtodinhaBtodiamBtodayBtodaviaBtodasBtodaosBtodaBtocouBtocoBtochaBtocaremBtocarBtocanteBtocandoBtocaBtobogBtobaaBtoaBtoBtncBtmncBtmbBtmatoBtmaisBtlgdBtlgBtldrBtldlBtlBtksBtkaBtkBtivessesBtiveseBtiveresBtivelBtiveceBtiuuuuBtitulosBtituloBtitlesBtitleBtitansBtitanicamenteB	titanfallBtitanBtitBtisBtirouB	tiroteiosBtiroteioBtirosBtiroBtiremBtireiBtiredBtireBtirassemBtiraremBtiraramBtirarBtirandoBtiramBtiradosBtiradoBtiradasBtiradaBtiraBtipsBtiposBtipoBtipicoBtioBtinkBtinindoBtinhosoBtinhamosBtimusBtimosBtimooBtimoBtimmyBtimmuBtimizadoBtimizaBtimingBtimesBtimerBtimeoutBtimeBtimasBtimaBtimBtiltsBtilteBtiltarBtiltanteBtiltaBtillBtileBtilapiaBtilBtigresaBtightBtigelaBtiersBtierBtidpoBtidoBtidasBticosBticoBticketsBticketBtichetsBticasB	ticamenteBticaBtiagoBtiaBtiBthxBthwBthumbsBthsiBthrustmasterB	thrustersBthrowBthroughBthrewB	thresholdBthreeBthqBthoughtBthoughBthoseBthonBthompsonBthomasBthoBthnkBthisBthirdBthinksBthinkingBthinkBthingsBthingBthighsBthievesBthiefsB
thiaguinhoBtheyveBtheyreBtheyllBtheyBtheseBthermalBtheresB	thereforeBthereBtheodoreBtheoBthenB
themselvesBthemBtheirBtheeBtheBthatsBthatBthasBthanksBthankBthanBthBtgaBtfBtextureBtexturasB	texturarsBtexturaBtextsBtextosBtextoBtextilBtextBtexasBtetoBteteuBtetasBtetarBtetaBtesturasBtestoBtestingBtestesBtestersBtestemBtesteiBtesteBtestaremBtestaramBtestarBtestandoBtestamBtestadoBtestadaBtestaBtestBtesourosBtesouroBtesesBteseBtesBtertminandoB	terrribleBterrosBterroristasB
terroristaB	terroristBterrorBterroBterrivelmenteBterrivelB	terriveisB	territoryBterritoriosB
territorioBterritorialBterritB
terrifyingB	terrifiedBterriblyB	terriblesBterribleB
terrestresB	terrestreBterrenosBterrenoBterrasBterrariaBterraBterrBteroriaBtermsBtermosBtermoBterminouBterminoBtermineiBtermineB	terminavaB
terminaremB
terminaramBterminarB
terminandoB	terminaloBterminalB
terminadorB	terminadoB
terminadasB	terminadaBterminaBterminBteressantesBterenoBteremB	terceirosBterceiroBterceiraBterarBteramBteraBterBteorizarBteoricamenteBteoriasBteoriaBteorBteolBtentouBtentoBtentivasBtentivaBtentemosBtentemBtenteiBtenteB
tentativasB	tentativaBtentasseBtentaremBtentareiBtentaramBtentarBtentantoBtentandoBtentamosBtentamBtentadoBtentaBtensoBtensaBtensBtenqueBtenqBtenoBtenisBtenenteB	tenebrosoBtendoB	tendiniteBtendidoBtendiaBtendiBtendenciosaB	tendenciaBtendemBtendeBtendasBtendBtenBtemqBtempsBtemposB
temporarioBtemporariamenteBtemporalB
temporadasB	temporadaBtemporBtempoBtempleB	templariaBtempinhoBtempestadesB
tempestadeBtemperoBtemperaturaBtemperamentoBtemperamentalBtemperamentaisBtemperalmentalBtempaoBtempBtemidaBtemersBtemeriaBtemerBtematicoB	tematicasBtematicaBtemasBtemaBteloBtellsBtellerBtellBtelinhaBtelhoBtelhadosBtelhadoBtelevisBteletrasportaBteletransporteBteletransportarBteletransportandoBteletransportamBteletransportaBteleportingB
teleportesB	teleporteB
teleportarBteleportandoB
teleportamBteleportadoB	teleportaBtelemBteleBtelasBtelaBtejogueiBteisBteimososBteimosoBteimaBteiaBtegiaBteenBteemBtediosoBtediosamenteBtediosaBtedioresBtedioBtedianteBtecnologicasBtecnologiasB
tecnologiaBtecnolBtecnicosBtecnicoBtecnicasBtecnicamenteBtecnicaBteclasBtecladosBtecladoBteclaBtecidosB
technologyBtechnologicalB	technicalBtechBteatroBteaserBteamworkBteamsBteamplayB	teammatesBteamBteabegBteabagBteaBtdsBtdmBtdBtchowBtchamaBtchaBtchBtcgsBtcgBtboiBtboBtbnBtbmBtbhBtbBtaxaBtavoBtavernaBtavamBtavaBtausBtauntBtaulsBtaughtBtauBtatuagemBtatuadorBtattooBtatooBtaticoBtaticasBtaticalBtaticaBtasteBtasksBtaskBtaserBtasB	tartarugaBtargetBtarefasBtarefaBtardeBtaradosBtarBtaquicardiaBtappBtapinhaBtapearBtaparBtapaBtaoBtantosBtantoBtantasBtantaBtanqueBtannanBtanksBtankoBtankeiBtankBtangaBtangBtandoBtanannanBtananBtanBtampoucoBtamparBtamosBtamingBtamerBtambemjaBtambemBtambBtamanhosBtamanhoBtamanhaBtamanduaBtamBtalzBtalvezBtalvesBtalsBtaloBtalkingBtalkBtaligadoB
talentososB	talentosaBtalentosBtalentoBtalassofobiaBtalBtakesBtakedownBtakeBtaisBtahaBtahBtagsBtagB	tafazendoBtacouBtacoBtacarBtacadoBtacaB
tabuleirosB	tabuleiroBtabuasBtabuBtabletsBtabletopBtabletBtablesBtableBtabelaBtabBtaBtBszszszszszszszszszszBszBsystemBsyncadaBsyncBsymphonyBswordBswitchBswfsBswfBswedesBswdsBswatBswallowBswaggerBsvvBsvBsuvivorsBsuvivorBsuviveB	suvisenteB	suveniresBsuvBsuuaBsutisBsutilBsustosBsustoBsustentavelB
sustentadoBsustentaB
suspiciousBsuspenseBsuspensBsuspeitoB	suspeiterB
suspeitavaB	suspectedBsusaBsusBsurvsB	survivourBsurvivosB	survivorsBsurvivorBsurvivoB	surviversBsurviverBsurviveB	survivalsBsurvivalhorrorBsurvivalBsurvirosBsurvbvBsurvBsurusuusBsurubaBsurtoB	surroundsBsurrenderedBsurrealBsurpresoB	surpresasBsurpresaB
surprendeuBsurpreendidoB
surpreendiBsurpreendeuBsurpreenderBsurpreendentesBsurpreendentementeBsurpreendenteBsurpreendendoBsurpreendemB
surpreendeBsurpreedenteBsurgiuBsurgisseBsurgiramBsurgirBsurgindoB
surgimentoBsurgidoBsurgiaBsurgemBsurgeBsurfacesBsureBsurdoBsupriseBsuprirBsuprindoB	suprimidoBsuprimentosBsupresasBsupresaBsupremoB
supreendeuB
suppressedBsupposedB
supportingBsupporteBsupportBsupplyBsupostoBsupostamenteBsupostaBsuposeBsuportouBsuportoBsuportesBsuporteBsuportarBsuportaBsuportBsupimpaBsupervalorizadoBsupervalorizadaB
superstarsBsuperouBsupernintendoBsupermercadoBsupermanBsuperioridadeB
superioresBsuperiorB	superfulaBsuperficialBsuperficiaisBsuperfBsuperestimadoBsuperestimadasBsupereB	superasseBsuperarB	superandoBsuperamBsuperadoBsuperaBsuperBsupeeerrBsupBsuouBsuorceBsuorBsunshineBsunmBsunkBsunBsumularBsummerBsumiuBsumiremBsumiramBsumirBsumidoB	sumarizarBsumaBsulistasBsulfBsulamericanosBsulamericanoBsulBsujoBsujestBsujeitoBsujeiraBsujaB	suitcasesBsuicidasBsuicidarBsuicBsugouBsugiroBsuggestsBsuggestB
sugestivasBsugestBsugeriuBsugerirBsugereBsugarBsugaBsufisticadaBsuficientesBsuficientementeB
suficienteBsuffersB	sufferingBsufferBsuedBsuecoBsudokuB	suculentoB	suculentaBsucoBsucksBsuckBsuchBsucessosBsucessorBsucessoBsucedidaBsucedeBsuccessB	succeededBsucataBsubtopewdiepieB	subtituloBsubterrB
substitutoB
substituirBsubstituidasB	substituiBsubstituBsubstantialBsubstancialmenteBsubstancialBsubstBsubsoloB
subscribedB	subscribeB
subnauticaBsubmetralhadorasBsubmetoB
submetidosBsubmeterB
submersivoB
submarinosB	submarinoB	submarinaBsublimeB	subjulgarBsubjugarBsubiuBsubisseBsubirBsubindoBsubidasBsubidaBsubiaB
subestimeiB	subestimeBsubdesenvolvidoBsubBsuavizarB
suavizandoBsuaveBsuarBsuadosBsuadoBsuadaBstyleBstuttersB
stutteringBstupidBstunningBstunBstuffBstudyBstudiosBstuckBstubbleBstteamB
strugglingBstruggleBstrongerBstrongBstrollBstrofesBstrofeBstrodeBstrikesBstrikersBstrikeBstriaB	stressingBstressedBstressBstrenghtBstremarBstreetBstreamsniperB
streamlineB	streamersBstreamerB
streamandoBstreamB	strawpollBstravaganzaBstrategyBstrategicalBstrangerBstrangeB	strandingBstraightBstorytellingB	storylineBstoryBstormBstoriesBstoreBstopsBstoppedBstopBstonesBstoneBstompaBstompBstodeBstimosBstimoBstimaBstillBsticosBsticoBstickBsticasBsticaBstiaBsteveBsteroidsBstepsBstepBstencilBstemaBsteelBsteanBsteamworkshopB	steamrollBsteampoweredBsteamosBsteamcommunityBsteamchartsBsteamBstealthBstealphBstealingBstayedBstayBstatusesBstatusBstatsBstatesBstateBstatBstasBstarveB
starvationBstartupBstartsBstarterBstartedBstartBstarsBstarringBstareBstardewB	starcraftB
starbreezeBstarBstandsBstandardB
standaloneBstandBstaminaBstalkBstaleB
stagnationBstaggerBstageBstaffsBstaffBstacksBstackBstaBsssBssqngBssolaBssimosBssimoBssimasBssimaBssicosBssicoBssicaBssethtzeentachBssemosBsseisBsseBssdBssarosBssaroB
ssandstormBssalaBsrvidorBsreBsquareBsquadsBsquadBsqnBspywaresBspywareBspyroBspyBspursBspritesBspriteBsprintBspringBsprayBspotsBspotifyBspotBsportsBsportBspookyB	spontocomBspolearBspokenBspoilersBspoilerBsplitscreenBsplitBsplinterBsplashBspiritBspinnofBspinBspikesBsperosBspentBspendBspelunkyBspellsB	spellfireB	speedrunsBspeedrunB	speedhackBspeedBspectateB	spectadorBspecsBspecificB	speciallyBspecialBspecB
speaciallyBspawnsBspawneiBspawnarBspawnamBspawnaBspawnBspawmBspawBspareBspammingBspammersBspammarBspamarBspamBspainBspaceinvaderBspaceBspaBspBsozinhosBsozinhoBsozinhasBsozinhaBsozinBsowB	souzasoulBsouthBsouteiBsourceB
soundtrackBsoundsBsoundfxBsoundB
soulsborneBsoulsBsoulBsouceBsoubesseBsouberemBsouberamBsouberBsoubeBsotnBsotdB	sossegadoBsosinhoBsortudoBsorteadoBsorteBsorryBsorrisosBsorrisoBsorrirB
sorridenteBsorrateiramenteBsorosoosBsoqueBsoqBsoproBsophBsopaBsoooBsoonBsonyBsonsBsonorosBsonoroBsonorizaBsonorasBsonoraBsonoplastiaB	sonolentoBsonoBsonicBsonhouBsonhosBsonhoBsonheiBsonharBsonhandoBsonhamBsonhadoBsonhaBsongsBsongBsonegamBsomzinhoBsomulaBsomsB	somewhereBsomewayB	sometimesBsometimeB	somethingBsomeoneBsomenteBsomemBsomehowBsomedayBsomeBsombrioBsombriaBsombrasBsombraBsomarBsomadoBsomadaBsomaBsomBsolvingBsolvedBsolveBsolutionB
solucionemBsolucionaveisBsolucionassemB
solucionarBsolucionadoBsolucionadaBsolucaoBsoluBsoltoB	soltassemBsoltaramBsoltarBsoltandoBsoltamBsoltaBsolosBsololoBsoloB	solitarioBsolitB	solidarioBsolidaBsolidBsolicitoB	soliciteiBsolicitandoBsolicitadosBsoldiersBsoldierBsoldadosBsoldadoBsoldadinhosB
solcitandoBsolarBsolaireBsoladoBsolBsohBsoftwereB	softwaresBsoftwareB	softhouseBsoftBsofroBsofrivelB
sofrimentoBsofridoBsofriaBsofriBsofreremBsofreramBsofrerBsofrendoBsofremBsofreBsofrBsofisticadoBsofBsoesBsoddenBsodaBsocorroBsocorrerBsocoB	sociedadeBsocialmenteB
socializarB	socializaBsocialBsociaisBsociabilidadeBsocegadoBsoccerBsocandoBsocaBsobrteviventesBsobrouBsobrivivenciaB	sobrinhosB	sobrevivoB
sobreviveuBsobreviveteB
sobreviverBsobreviventoBsobreviventesBsobreviventeBsobrevivendoBsobrevivenciaB	sobreviveBsobrevivBsobrevimentesBsobrevimenteBsobrevienteB	sobretudoBsobressalenteBsobressaindoBsobresaiB
sobrepujarB
sobrepondoBsobrenaturalBsobrenaturaisB	sobremesaBsobrehumanasBsobrecargamBsobreBsobraramBsobrandoBsobradoBsobraBsobmriaBsoberbaBsobemBsobeBsobbreBsobBsoakedBsoaBsoBsnowBsnortedB
sniperxxxxBsnipersBsniperB	sniiiiiifBsniffBsnesBsnapBsmpBsmosBsmokeBsmokBsmoBsmithBsmhBsmgsBsmgBsmarterBsmartBsmallerBsmallB	smackdownBslugBslsBslowlyBslowerBslowBslotsBslotBsloopBslkBslipsBsliperyBslimesBslimBslightlyBsliB
slendermanBsleeveBsleepBsledBslcBslaughteredBslasherBslashBslaBskyrimBskypeBskylinesBskyicaroBskyBskrikeBskirmishBskiparBskipB	skinzinhaBskinsBskinBskilsBskillsB	skillfullBskilledBskillBskelligeBsjwBsjehfkjsdjklfsfBsixB	situationB	situacoesBsituacionaisBsituacaoBsituaBsitosBsitoBsitiadaBsitesBsitemaBsiteBsitadoBsitBsistinaBsistemasBsistemaBsistemBsisnseramenteBsirvaBsirvBsirisiisBsiriBsiplesBsiosB
sintonizarBsintoniaBsintoBsintaBsinplesBsinphonyBsinopseBsinonimoBsinoBsinkholeBsinkBsinistroBsinistraBsininhoB
singularesBsingularB
singplayerBsinglesBsinglerBsingleplayerB
singleplayBsinglepayerBsingleBsingingBsingelosBsingBsinfoniaBsinergiaBsindromeBsincronizarB
sincronizaB	sincroniaBsincerosBsinceroBsinceridadeBsinceramenteBsinceB
sinalizadoBsinalizaB	sinaleiraBsinalBsinaisBsinBsimultaneousBsimultaneosBsimultaneamenteB	simultaneBsimultB
simuleitorB	simulatorB	simulatedBsimularB	simulanteB	simulandoBsimuladoresB	simuladorBsimuladoBsimuladaB
simulacoesBsimulacBsimulaBsimulB	simudadorBsimsBsimplyBsimplizmenteB
simplistasB	simplistaBsimplismenteBsimplisBsimplifyBsimplificadosBsimplificadaB
simplificaB	simplificBsimplicidadeBsimplestBsimplespenteBsimplesmentoBsimplesmenteBsimplesBsimplementeBsimpleBsimplBsimpesmenteB
simpatizarB	simpaticoBsimpBsimosBsimoBsimnplesmenteBsimmonsBsimmmmmmmmmmmmmBsimmmmBsimmBsimilaridadesB	similaresBsimilarBsimcityB
simbologiaBsimboloBsimbolismosBsimaBsimBsilvarBsilosBsilksongBsilkBsilentB
silenciosoBsilencioB	silenciarBsilenciadoresBsilenciadorB
silenciadaBsilenceBsilBsigoB
significouBsignificativosBsignificativoBsignificativasBsignificativamenteBsignificativaBsignificariaB
significarBsignificantBsignificamenteB
significamBsignificadoB	significaBsignifcaBsigamBsigaBsifudeBsifodakkBsiemBsiegeBsidoBsidesBsideralB
sidequestsB	sidequestBsidedBsideBsidBsicosBsicoBsicasB	sicamenteBsicakkkBsicaBsiberiaBsiBshuttingBshutdownBshrineBshrekBshowsBshownBshowingBshowcaseBshowBshovelBshouldveBshouldntBshouldBshottingBshotgunsBshotgunBshotBshortBshopsBshoppingBshopBshootersBshooterBshootB	shoooooowBshittyBshitsBshitloadBshitBshiraiBshipyardBshipsBshippingBshipBshinerayBshineBshiftingBshiftBshieldBshepardBshellBsheBsharedfilesBshardsBshardBshapeBshameBshakespeareBshakatakagamesBshadowsBshadowBshadersBshBsguirBsgtBsgBsfmBsexyB	sexualizaBsexuaisBsextoBsextaBsexoBsexistaBsevidoBseverosBseveroBseveramenteBseveralBseveraBseverBsevenBsetupBsettlersB
settlementBsettledBsettingsBsetrataBsetoresBsetorBsetembroBseteBsetasBsetappBsetadoBsetadaBsetaBsetBsessionBsessBsesibilidadeBsesBserviuBservirBservindoBservidosB
servidoresBservidorBservidoB	servidiorBservidaBservicoBserviamBserviaBserviBservesBserversBserverB	serventiaBservemBservedBserveBservBsertoBsertezaBserrilhadosBserrariaBserraBserosBserisimoB	seriouslyB
seriousllyBseriousBseriosBserioBseringaBseriesB	seriedadeBserieBseriasB
seriamenteBserialBseriadeBsergipeBsereseesBseresBseremBseraBsequestraramB
sequestrarBsequestradoBsequerB	sequentesB	sequenciaBsequelaBsequelBsequB	sepultadoBseparouBsepareBsepararB	separandoB	separadosBseparadoB	separadasBseparadamenteBseparadaBseparBsenzalaBsentouBsentiuB	sentirmosBsentiriaBsentirBsentindoBsentimosBsentimentosB
sentimentoBsentidosBsentidoBsentiaBsentiBsentemBsenteBsentarBsentaBsensoBsensivelmenteBsensivelBsensibilidadeBsenseBsensationalBsensasionalB sensaciooooooonallllllllllllllllBsensacionalBsensacionaisBsensaBsensBsenodBsenoBseninhaBsenhoriaBsenhoraBsenhorBsenhaBsendsBsendoBsendBsenarioBsenaoBsenB=sempreeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeBsempreBsemoreBsemiBsementesBsemelhantesB
semelhanteBsemelhanBsemearBsemanasBsemanalBsemanaisBsemanaB	selvagensBselvagemBselvaBselokoBseloBsellBselfBseletoB	selecionoB	selecioneB
selecionarBselecionadoBseleBselarBseladoBselaBsekiroBsejeBseisBseiosB
seilamenteBseilaBseiBsehlokoBseguroBsegureBseguravaBsegurasBsegurarB	segurandoBseguranBseguramenteBseguraBsegunoBsegundosBsegundoBsegundasBsegundariasBsegundaBseguiteBseguisseBseguiramBseguirB	seguintesBseguinteBseguindoBseguimosBseguidosB
seguidoresBseguidorBseguidoBseguidasBseguidamenteBseguidaBseguiaBseguiBseguemBsegueBsegregamBsegredosBsegredoB
segociandoB	segmentosBsegaBsegBseesBseenaBseenBseemsBseekBseeingBseedsBseedBseeBsedoBsedentoBsedentBsedeBsedativoBsecurityBsecundariasB
secundariaBsecundBseculosB
secudariasBsecretsBsecretosBsecretoBsecretasBsecretaBsecondsBsecondBsecoBsecibilidadeBsecasBsecarBsecanteBsecandoBsecalharBsecaBsecBseassonBseasonsBseasonB	searchingBsearchBseamothBseagleBseagladeBseagateBseaB$sdmbouivredsioerjmdberbdfxwserhbgwseBsdfBsdewwBsddsBsdadsaBsdBscumBsculosBsculoBsculasBsculaBscsBscrollsBscriptsBscriptBscrewedBscrewBscrennBscremsBscreenshotsBscreensBscreenmanegerBscreenmanagerBscreenBscreamBscratchBscrapB
scramblingBscoutBscoredBscoreBscorchedearthBscootinBscoolBscoobyBscimosBscimoBschoonerBschoolBschemeB	scenariosBscenarioBscaryBscaresBscareBscaraBscarBscapeBscaniasBscaniaBscanBscamBscaleBsbreBsazonaisBsaysBsayingBsayedBsayajinBsayBsaxonBsawBsavesBsaveroB	savepointBsavegameBsavedBsaveBsavanaBsaushuhsauhsuBsaudosistasB
saudosismoBsaudeBsaudavelBsaudadesmarioBsaudadesBsaudadeB	saudacoesBsaudaBsaudBsaturnoBsaturnB	saturadosBsaturadoBsaturaBsativaB	satisfiedBsatisfezB
satisfeitoB
satisfeitaB
satisfazerB
satisfazemBsatisfazBsatisfatoriamenteBsatisfatoriaBsatisfatBsatisfaB	satanismoBsatanicoBsatanasBsatanBsataBsatBsasukeBsaskiaBsasBsarroBsargentoBsardasBsarcasmoBsarasaasBsaraBsaquillBsaquearBsaqueBsapphireBsaporraBsapohaB	sapkowskiBsapkowskBsaoB	santuarioBsantuBsantosBsantoBsantanaBsantaB	sanitarioBsanidadeBsanguinBsanguesBsangueB
sangreantaBsangramentoBsangraBsaneB
sanduichesB	sanduicheB
sandstormsB	sandstormBsandroBsandboxBsandB	sanctuaryBsanadasBsanBsamuraiBsamsungBsamplesBsamosBsamesBsamerdaBsameBsamBsalvouBsalvosBsalvoBsalvemBsalveiBsalveBsalvaremBsalvaramBsalvarBsalvandoB
salvamentoBsalvamBsalvadorBsalvaBsaltosBsaltoB
saltitanteBsalterBsaltarBsaltaBsaltBsalsatheoneBsalsanosseusjogosB
salsagamesBsalsaBsalientoB	salientarBsaliBsalgadosBsalgadoBsalgadasBsalgadBsalesBsalenBsaleBsalasBsalarioBsaladaBsalaBsalBsakcBsaiuBsaisseBsairiaBsairemBsairamBsairBsaioBsaindoBsailingBsailedBsaidoBsaidasBsaidaBsaidBsaibamBsaibaBsaiamBsaiaBsaiBsahusahauhuBsaguBsagradaBsagasBsagaBsafezoneBsafeportBsafeBsafadoBsafadezaBsafadesaBsafadaBsaemBsadobossrushBsadlyBsadboxBsadB
sacrificouB
sacrificioB
sacrificesB
sacrificarB	sacrificaBsacrifBsacrBsacolasBsacodeBsacoB	saciedadeBsaciarBsacerdotisaBsacarB	sacanagemBsacanaBsacadasBsacadaBsacaBsabreBsabotarBsabotamB
sabotagensBsabotageBsaboresBsaborBsaboneteB
sabiamenteBsabiamBsabiaBsabersBsaberiaBsaberemBsaberBsabenosBsabendoBsabemosBsabemBsabeBsaasBsaaaacoB
saaaaaaaaoBsaBsBrzeaBryzenBryimBrxBrvoresBrvoreBruyfuyBrustBrussosBrussoBrussiansBrussianBrussasBrussaBrushingBrushersBrushedBrusharBrushadoBrushaBrushBrusBruralBrunsBrunningBrunnersBrunnerBrunawaysBrunBrumoresBrumoB	rummagingBrummageBruminarBrumbleBrumaBrumBrulesBruirB	ruinzinhoB	ruinzinhaBruinzinBruinsBruiningBruinedBruinBruimmmmmmmmmmmmBruimmmmBruimmmBruimmBruimkkkkkkkkkkkkkkkkkkkkkkBruimeizeBruimBruikmBruidoBruiBrugasBrufflesBruelaBrudimentaresBrudiculoBrudesBrucharBrubostaBrubleB	ruberbandBrubbishBruasBruaBruB	rtyerftgdBrtxBrtszinhoBrtsBrticasBrticaBrthgfhBrsrsrsBrsrsBrsinbowBrsBrrivelBrrimoBrrimaBrraBrrBrpjzBrpiosBrpgzBrpgsBrpgBrpBrozaBroyaleBroxoBroxaB	roupinhasBroupinhaBroupasBroupaBroundsBroundBrougeBroubouBroubosBrouboBroubeiBroubarBroubandoBroubadosBroubadoBroubadasBroubadaBroubadBroubaBrotinasBrotinaBroteirosBroteiroBroteirizadoBrotasBrotaBrostoBrostersBrosterBrosteiaBrosasBrosaBropB	rooseveltBroonieBroomsBroomB	roolbacksBronnieB	rondeandoBrondandoBroncoB
ronaldinhoBromuloBromancesBromBrollsBrollingBrollercoastersBrollercoasterBrollerB	rollbacksBrollbackBrollBrolhaBroletaBroleplayBrolebackBroleBrolavamBrolarBrolandoB
rolamentosB	rolamentoBrolalikeBrolaBroisBroimBroihaB
roguelitesB	rogueliteB
roguelikesB	roguelikeBrogueBroedynBrodoviasBrodoviariosBrodoviaBrodouBrodopiosBrodopiamBrodoBrodiandoBrodeiBrodeandoBrodeBrodavaBrodasseBrodariaBrodaramBrodarBrodapBrodandoBrodamBrodaerBrodadoBrodadasBrodadaBrodaBroculoBrocksBrockBrochasBrobustoBrobozB	roboticosB	roboticasBroboticBrobosBroboBrobloxB	robertsonBrobbedBrobadosBrobadoBrobBroadBroachBroBrnoBrniaBrngBrmulaBrminoBrmicaBrmbBrmBrlyBrlBrizadasBriviaBriverB	rivalizarBrivalBrivaisBritualBritoBritmoBriteBritBrisosBriskBriseBriscoBrisciBriscaB
risadinhasBrisadasBrisadaBrirBriquinhoBriquezasBriquezaBriquBrippedBripoffBripcodBripBriotBriosBriopardenseBrioBrinsBrinoBringueBrindoBrincipalmenteBrimworldBrimosBrimBrilBrigirosamenteBrigidosBrightBriftsBriftBriflesBrifleB
rificulousBriesBrieBridiuloB
ridiculousBridiculoB	ridiculasBridiculamenteBridiculaBriddleBridasBridaBridBricosBricoBriclesBrichBricasBricardoBricaBribiBriazinhaBriasBriannonBriamenteBrialistaBriadosBriaBriBrgpBrgnBrgbBrgBrfluoBrezouverB	rezerandoBrezeBrezarBrezandoBrezaBreyesBrewrewrwerwerBreworkB	rewardingBrewardB	revolversBrevolverB
revolutionBrevolucionouBrevolucionarioBrevolucionarBrevolucionaB
revolucionB	revoltingBrevoltantesBrevoltantementeB
revoltanteB	revoltadoBrevokedBrevoadaBrevividaBreviverBreviveBreviuBrevistosB
revistinhaBrevisiteB	revisitarBrevisitBrevisarBrevisBreviravoltasBreviravoltaBrevirarBrevilBreviewsB	reviewingBreviewBreverterBreverseBreversalBreversaBreverieBreveremBreverBrevenderBreveleBrevelationsBrevelarB	revelandoBrevelamBreveladoBrevelaBrevancheBrevBreunirBreumatologistaBretrovisoresB
retrovisorB	retrogadoBretrocessosB
retrocessoBretrocedendoBretroB	retribuiuBretratoBretrataB
retrancudaB
retrabalhoBretraBretrBretornouBretornoB
retornaramBretornarB
retornandoBretornaBretornBretorB	retomaramBretomarBretoBretirouBretiroBretiremBretireB	retiraramBretirarB	retirandoBretiramentoBretiramB	retiradosB	retiradasBretiradaBretiraBretinadesgastadaBretificaBrethinkBretardoBretardemBretardedBretardasB
retardadosB	retardadoB
retardadasB	retardadaBretardB
retangularBretaliaBretalhosBretaBresurrectedBresumouBresumoB	resumiriaBresumirB	resumindoBresumidoBresumidamenteBresumidaBresumemBresumeB
resulvesemBresultouBresultarB
resultandoB
resultadosB	resultadoBresultaBresultBrestritoB
restritivoB	restritasBrestritaB
restringirB	restringeBrestriBrestouBrestoB	restaureiBrestauranteB
restauradoB
restauradaBrestartBrestaramB	restantesBrestanteBrestanhoBrestadoBrestaBrestB
ressusitarBressuscitarB	ressurgirBressucitadoB	ressolverBressarciramBressalvoB	ressalvasBressalvaBressaltoB	ressaltarBressaltandoB	respostasBrespostaBresponsivosB
responsivoBresponsividadeB
responsiveBresponseBresponsaveisBresponsabilizamBresponsabilidadeBresponsaBresponsBrespondoBrespondidosB
respondiamB	respondiaB	respondeuBresponderemB	responderBrespondendoB	respondemBrespondeBrespondaBrespiroBrespirarBrespeitoB	respeitemBrespeitariaB	respeitarB	respeitaoBrespeitandoB	respeitamBrespeitaBrespeitBrespectivosB
respectivoBrespectivelyBrespectivasBrespectivamenteB
respectivaBrespectBrespecBrespawnsB	respawnarB	respawnamBrespawnaBrespawnBrespawB	resourcesBresourceBresolvoB
resolvidosB	resolvidoBresolviBresolveuB
resolveremB
resolveramBresolverB
resolvendoBresolvemB	resolvedoBresolveBresolvamBresolvaB
resolutionBresoluBresoleuBreskinBresistirBresistentesB
resistenteBresistenciaBresisteBresistBresinaBresidualBresidentB
residenciaBresideBresidB	resgritroBresgateBresgatarB	resgatadoBresgataBresetsBresetouBreseteiB	resetaramBresetarBresetamBresetadoBresetaBresetBreservouBreservarBreservaBresenhasBresenhaBresceberBresalvaBresaltoBresaltarBresB
requisitosB	requisitoBrequisitadoBrequirementsBrequiredBrequireB	requintesB
requestingB
requesitosB
requeridosB
requerendoBrequeremBrequerB	requeiramBreputaB
repulsivosBrepudiBreproveiB
reprovariaBreprovarBreprovamB
reproduzirBreproduzindoB
reproduzemB
reproduzamB
reprodutorBreproduBrepresentouBrepresentarBrepresentanteBrepresentadosBrepresentadoB
representaBrepostosBreportsBreporteiBreportarBreportamB
reportadosB	reportadoBreportaBreportBrepliedBreplicarBrepletosBrepletoBrepletasBrepletaBreplaysBreplayBreplaseBreplaceBrepitoB
repititivoBrepitaBrepetitivosB
repetitivoBrepetitividadeB
repetitiveBrepetitivasBrepetitivamenteB
repetitivaBrepetitionsBrepetitiavasB	repetiramBrepetirB	repetindoB	repetidosBrepetidoB	repetidasBrepetidamenteBrepetidaBrepetiaBrepetiBrepeteB
repetaculeB	repetaculBrepetBrepertB	repercussB
repentinosBrepentinamenteBrepenteB
repentanceBrepenseB
repensariaB
repensaremB
repensadasBrepeleBrepeatBreparosBreparoBrepareB	reparavamBrepararaBrepararB	reparandoB	reparadorBreparadoBreparaB
repairlessBrepairBreoBrenteBrentBrenovarB	renovandoB	renovadorBrenovaB	renomadasBrendeuB
renderizarBrenderizandoBrenderizadoB	renderizaBrenderB	rendentorBrendemBrendeBrendasBrendaBrenaultBrenascerBrenascentistaB
renacenciaBremovingBremovidoB	removidasBremovidaB
removeuserBremoveuB	removeremB	removeramBremoverB	removendoBremovedBremoveBremovaBremoteBremotamenteBremorsoBremontarB	remomendoBremoduladosB	remodelarBremodelagemB
remodeladoBremnantBremindsBremeteBremetamBrememberBremediarBrembulsoBrembousoB
rembourserBremboursementBrembolsoB	rembolseiBrembolsaremB	rembolsarBrembolsaBremasterizadoB
remasteredBremasterBremasteBremapearBremakesBremakeBremainsBremBrelutoBreluteiB	relutanteBrelmBrellyB	reliquiasBreliquiaBreliqiaB
religiosasB	religiosaBreligionBreligiBrelicBrelevosBrelevoBreleveiBrelevavaB	relevariaBrelevarB
relevantesB	relevanteB	relevandoB	relevanceB	relevadosBrelevBreletivamenteBrelembroB	relembrarBrelembraBrelembrB
releembrarBreleasesBreleasedBreleaseBrelaxouB	relaxenteBrelaxarB
relaxantesB	relaxanteB	relaxandoBrelaxamentoBrelaxadoBrelaxadaBrelaxaBrelatouBrelatosBrelatoBrelativoBrelativistaB
relativelyB	relativasBrelativamenteBrelativaBrelationBrelatedBrelatavaBrelatarB	relatandoBrelatBrelanB
relacionarBrelacionamentoBrelacionadosBrelacionadoBrelacionadasBrelacionadaBrelacionBrelaBrelBrejogarBrejogabilidadeB	reistaleiBreisB	reintalarB
reinstalouB
reinstaleiB
reinstalarBreinstalandoB	reinstalaBreinosBreinoBreiniciuB	reinicieiB	reiniciarBreiniciandoBreinicializaBreiniciaBreinadoBreinaBreiasBreiBregularmenteBregularBregrinhaBregretB
regressivaBregressBregrediuBregredirBregreBregrasBregraBregoB	registrosBregistradasB
registradaBregisterBregionsB
regionlockBregionalB	regionaisBregionBregioesBregidasBregiaoBregiB	regenerarB	regeneramBregeneraBregeditB	regardingBregaloBrefutarBrefutadoBrefusesBrefundBrefriBrefreshBrefoundB	reformulaBreformasBreforBreflexosBreflexoBrefletirBreflecteB	refizeramBrefiroBrefinadoBrefinadaBreferirB	referindoB	referidosBreferidoB	referenteBreferenciasBreferencialB
referenciaBrefereBreferBrefensBrefemBrefeitosBrefeitoBrefeitasBrefeiBrefazerB	refazendoBrefazBrefaBrefBreestabelecerB
reescreverB	reentalarB
reenstalarBreenderizadoBreencontraremB	reencontrB
reenbolsarBreemolsoBreembouB
reembolssoB	reembolsoB
reembolsemB
reembolseiBreembolsavaBreembolsaramB
reembolsarBreembolsandoBreembolsadoB	reembolsaB
reembolosoBreebolsoB
reebolsadoB	reduzisseB	reduziriaBreduzirB	reduzindoB	reduzidosBreduzidaBreducingBredranksBredownloadingBredorBredondoBredirecionarBredirecionaBredimirBredigirBredesB	redengineB
redemptionB	redefinirB	redeemingBredeBredditBredaBredBrecusarBrecusadoBrecusaBrecursosBrecursoB	recuperouB	recupereiBrecuperaramB	recuperarBrecuperandoB
recuperadoB
recuperadaBrecuperaBrecuosBrecuoBrecuarBrecrutarB
recrutandoBrecrutaBrecruitBrecriarB	recriandoBrecreateBrecoverBrecorteB
recortadasBrecorrerBrecorrentesB
recorrenteB	recopensaB	recoomendB	reconstruBreconhesendoB	reconheseB	reconhecoBreconhecimentoBreconhecidoB
reconheceuBreconheceramB
reconhecerB
reconhecenB	reconheceBreconheBreconfigurarB
reconectarB	reconectaBreconB
recompesasBrecompenssadoB
recompenssB
recompenseBrecompensavaBrecompensasBrecompensamBrecompensadoraBrecompensadorBrecompensadoB
recompensaB
recommendoBrecommendedBrecommendationBrecommendableB	recommendB	recomentoB	recomendsB
recomendouB	recomendoB
recomendeiBrecomendavelBrecomendavaBrecomendasseBrecomendariaBrecomendareiBrecomendaramB
recomendarBrecomendandoB
recomendamBrecomendadosBrecomendadoBrecomendadissimoBrecomendadissBrecomendadasBrecomendadaB
recomendadB	recomendaBrecomendBrecomedoBrecomeBrecolorsBrecolherBrecoletaBrecoilsBrecoilB	recognizeBreclamouBreclamoBreclameiBreclameB	reclamavaBreclamarB
reclamandoBreclamamBreclamaBreciclamB
recicladosB	recicladoB	recicladaBrecheioBrecheadoB
receptivosBreceptBrecentlyBrecentesBrecentementeBrecenteBrecentBrecemB	receivingBreceivesBreceitasB
receitandoBreceitaBreceioBreceboBrecebimentoB	recebidosBrecebidoB	recebidasBrecebiBrecebeuB	receberemB	receberamBreceberB	recebendoB	recebemosBrecebemBrecebeBrecebaBreccomendationB	reccomendB
recarregarBrecarregandoB	recarregaBrecargaBrecantoBrecalledB	recalcadoBrecadosBrecadoBrecaBrecBrebroB
rebreatherBreboteBreboquesBreboqueB	rebootingBrebocoBrebiteBrebirthBrebeldesBrebeldeB
rebaixadasBreaverB	reavaliarBreasonsB
reasonlessBreasonB
reascenderBreasB
reaprenderB
reapareceuBreaparecendoBreapB	realzinhoBrealyBrealocarBrealmeteB
realmenteoB	realmenteBreallyBrealizouBrealizeiBrealizedB
realizaremBrealizarB
realizandoB
realizamosB
realizadosB	realizadoB
realizadasBrealizaBrealizBrealityB	realistmoBrealisticosB
realisticoB
realisticaB	realisticB	realistasBrealistaBrealismoBrealismBrealiseB	realidadeB
realementeBrealeaseBrealBreaisBreagirBreagemBreageBreadyBreadBreachedBreachB	reabrindoBreabertoBreaanalisarBreaBreBrduoBrdiosBrdiaBrdaBrdBrculosBrculoBrctwBrctsBrctBrcitosBrcitoBrcioBrciaBrcBrboleBrbitaBrbarosBrbaroBrbarasBrbBrazoavelmenteBrazoavelB	razoaveisBrazoB	razioavelBrazerBrazaoBrazaBrazBraymanBrawB
ravolutionBravenBraveBratsBratosBratoeiraBratoBratingBratificaBratherBratesBrateBratazanaBrasuavelmenteBrastrosBrastroB
rastreadorB	rastreadoBrastejarBrasparamBrasparBraspBrasosBrasoavelBrasoBrashBrasgueBrasgataBrasgarBrascunhoBrasaBrasBrarosBraroBrarityB
rarissimosBraridadeBrarelyBrareBrarasB	raramenteBraraBrarBrapubBraptoBraptadaBrapidoB	rapidinhoB	rapidinhaBrapidinBrapidezBrapidasBrapidaoBrapidamenteBrapidaB	rapaziadaBrapazBranshsBranquesBranqueamentoB	ranqueadoB
ranqueadasB	ranqueadaBranqueBranksBrankingsBrankingBrankedBrankearBrankeamentoB	rankeadosB	rankeadasBrankeadaBrankeBrankBrangesBrangeBrandyBrandonsBrandonBrandomsB
randomizarBrandomicamenteB	randomicaBrandomBrandBranBrampsBrampaBramoBrammmmBramificaBramboBramBraloBralhoBralfBralarBraladoBralaBrajadasBraizB	raivakjkjBraivaBraitBraisedBraiseBraiosBraioBrainhasBrainhaBraindowB
rainbowsixBrainbowBraimbowBraidsBraidesBraidersBraiderBraidBragesB	ragequitsBragequitBrageBragdollBragaBraftBradiosB
radioativaBradicalmenteBradianteBradianceBradiaBradeonBradarBracoonBrackBracistasBracistaBracismoBracionalidadeB
raciocinioB
raciocinarBraciocBracingBrachoB	rachaduraBrachaBracesBraceBraccoonBracconBracBraboBrabiBrabeBrabBraBrBquseBqurBquotesBquoteBquosBquizeramBquizerBquizaBquittersB	quittandoBquitsBquiteiBquiteBquitaremBquitarBquitandoBquitamBquitaBquitBquisitoB	quisessemBquisesseB	quisermosBquiseremBquiseramBquiserBйquiseeeeeerererererereeeeeeerrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrBquisBquinzeBquinzBquintoBquintaBquinquilhariasBquinasBquinaBquimicosBquilosBquilometragemBquilogramasB
quilibradoBquilerBquilBquietlyBquietBquicklyBquickeventsBquickBquicaBquiasBquiaBquiBqueueBquestsBquestoesB	questionsBquestionandoBquestionamentosBquestionamentoBquestionadosB	questionaBquestionBquestaoBquestBquesitosBquesitoBquesBqueroBqueridoBqueridesBqueridaBqueriamBqueriaBqueresBquererBquerendoBqueremosBqueremBquerBquepossaBquenteBquendaBquelesBquelaBquelBqueixoBqueixasBqueisBqueiramBqueiraBqueimouBqueimoBqueimeiBqueimeBqueimarBqueimadoBqueimaBqueicharBqueenBquedasBquedaBquebrouBquebroBquebremBquebreiBquebredoBquebrasBquebrarB	quebrandoBquebramB	quebradosBquebradoBquebradissimoB	quebradasBquebradaBquebraBquebardoBquatrosBquatrocentosBquatrocentasBquatroBquaseBquartosBquartoBquarteirBquartaB
quarentenaBquarantaineBquaquerBquaoBquantosBquantoBquantidadesB
quantidadeBquantiaBquantasBquandoiB
quandidadeBquanderBquandBqualquerBqualqueB	qualqauerBqualityB
qualificarB	qualificaB
qualidadesB	qualidadeBquakeB	quaisquerBquaisBquailtyBquadrosBquadroB
quadrinhosBquadrasB	quadranteB
quadradrosB	quadradosBquadradoBquadradinhoBquadraBquaaaseBquaBquBqtoBqteBqrBqquiserBqqrBqqqqBqqqBqqBqnwdplxBqndBqmBqipBqiBqeuB~qerkrwekrgkogkfrywrynwrynrwnrntrwhhwrtnrtethehhetwntrtnethethwtnrtnwetnqerherhqqhnnettnqerherhentttntneeerhqerhnettneetnrherheBqeBqdoBqauandoBqaBqBpyramidBpwBpvpzimBpvpsBpvpBpvfBpveBpuzzlesBpuzzleBpuzlesBpuzleBpuxoBpuxarBpuxandoBpuxamBpuxadoBpuxaBpuurhahahahahaBpuuladoBputzBputtingBputtaBputsBputosBputoBputinhoBputinhaBputasssssoooBputassoBputasBputariaBputaBputBpussyBpussiesBpushesBpushBpuseramBpurraBpuroB	puritanosBpureB	purchasedB	puramenteBpuraBpuntoBpunitivoBpunitivaB
punishmentBpunirBpunindoBpunidosBpunidoBpuniB
punhetandoBpunhetaBpunhadoBpunemBpuneBpunBpumpBpulsarBpulouBpulosBpuloBpulmBpuleiBpulavaBpulasseBpularemBpularBpulandoBpulamosBpulamBpuladoBpulaBpuffBpufBpudesseBpuderemBpuderBpudeB
publishersB	publisherB	publiqueiBpublicouBpublicosBpublicoBpublicidadeBpublicationBpublicasB
publicaremB
publicaramBpublicarBpublicamBpublicadoresB	publicadoBpublicaBpublicBpubgBpuBptsBptimoBpticoBpterosBpteroBptBpsychonautsBpsxBpsulasBpssoBpspBpsnBpsiquiB
psicopatasB	psicopataBpsicolBpsicoativasBpsicBpseudoBpscyhonautsBpsBprzybyB	prrrrrrtoBprraBprqBproximosBproximoBproximidadeBproximaBproxBprovouBprovocarB
provocandoBprovocamB	provocadoB
provocadasBprovocaBprovisBprovidenciasBprovidBproverBproveitososBproveitosasBproveitoB	provedoraBproveBprovavelmenteBprovavelBprovasBprovarBprovandoBprovamBprovaBprovBproudBprotonBprotestoBprotegoB
protegidasBprotegerB
protectionBproteBprotagonistasBprotagonistaBprotagonismoB
prostitutoBprostitutasB
prostitutaBprossigoBprossigaB
prosseguirBprosseguindoBprosseguimentoB	prosseguiB	prossegueB	prosperarBprosBproqueB	propulsorBpropulsBpropsBproprositalmenteBpropriosBproprioBproprietBpropriedadesBpropriedadeBpropriasBpropriamenteBpropriaBpropostoB	propostasBpropostamasBpropostaB	propositoBpropositalmenteB
propositalBpropositadaBproposesBproposalBproporcionouBproporcionavaBproporcionaremBproporcionarBproporcionandoBproporcionamBproporcionaBproporBpropioBpropiBproperlyBproperB	propblockB
propagandoB
propagandaBpropBproofB
pronunciarBpronunciamentoB
pronunciamBprontosBprontoB
prontificaBprontaBpronlemaBpromoverBpromoveB	promotionBpromosBpromocionalBpromocaoBpromocBpromoB
promissoraB	promissorBpromissaB	promisingBpromiseBpromeverBprometoB
prometidosB	prometidoB
prometidasB	prometidaB	prometiamBprometiaBprometiBprometeuB
prometeramBprometerBprometemBprometeBprometamBpromesseB	promessasBpromessaB	prolongamB
prolongadoBprolongadasBprologoB
proletarioBprolemasBprojetosBprojetoBprojetilB	projeteisB
projetandoB
projetadosB	projetadoBprojektBprojectB
proibitivaB
proibidadaB	progridemBprogrideB	progressoBprogressistaBprogressionB
progressaoBprogressB	progredirBprogredindoBprogredimosB
progredidoB	progrediaBprogreBprogramsB	programouBprograminhaB	programasB	programarBprogramandoB
programaisBprogramadosBprogramadoresBprogramadorB
programadoBprogramadasB
programadaBprogramacaoBprogramaBprogramB	progamadoBprogamaBprofundoBprofundidadeBprofundezasBprofundamenteBprofundaBprofundB	profitingBprofissionalBprofissionaisBprofissBproficiBprofetasBproezaBproduziuBproduzirB
produzindoB
produzidosB	produzidoB	produzidaBproduzemBproduzBprodutosB
produtoresB
produtorasB	produtoraBprodutorBprodutoBprodutividadeB
produtivasBprodutBproductBproduBprodBprocurouBprocuroBprocuremBprocureiBprocureB	procuravaB
procurasseBprocurasBprocurarB
procurandoB
procuramosBprocuramB
procuradosB	procuradoBprocuraBprocrastinaBproconBprocomB	processosBprocessoB	processarBprocessamentoBprocessadosBprocessadorB
processadoBprocessB	proceededBproceedBproceduralmenteB
proceduralBprocedimentosBprocedimentoBprocedeBproblemsBprobleminhasBprobleminhaBproblematizarBproblematicoB	problemasBproblemaBproblemBprobablyBprobabilidadeBproBprmeiraBpriviteBprivilegiadosBprivilegiadasB
privilegiaBprivilBpriveiraBprivatoBprivateBprivadosBprivadoBprivadasBprivadaBprisonBprisioneirosBprisioneiroBprisioneersBprisaoBprisBpriosB	priorizarBpriorizandoB	priorizamBpriorizaBpriorityBprioritizesBprioridadesBprioBprintsBprinsipalmenteB	principioBprincipiantesBprincipeBprincipalmeteBprincipalmenteB	principalB
principaisBprincesaBprincBprimosB	primorosaBprimorBprimoB	primeirosBprimeiroB	primeirasBprimeiramenteBprimeiraBprimasBprimaryB	primariasBprimaBprimBpricipalmenteBpricesBpriceBpriasBpriaBprezaramBprezamBprezaBprevistoB
previsivelBprevisBpreviousBpreviosoBpreviewsBpreviaBpreventBprevendaBprevejoB
prevalecemBpreucupassemBprettyBpretosBpretoBpretextoBpretensiosidadeBpretensBpretendoB
pretendidoB	pretendiaB	pretendemBpretendeBpretasBpretaBpresunB
presumablyBprestouB	prestigioBprestesBprestemBpresteBprestavaB
prestassemBprestarB	prestandoBprestamB	prestadasBprestaBprestBpressureB	pressioneBpressionavaB
pressionarBpressasBpressaBpressBpresosBpresoB	presisavaBpresisaB
presidenteBpresetsBpresetB	preservarBpresentinhoB	presentesB
presenteiaBpresenteadosBpresenteadoBpresenteB
presencieiB
presenciarBpresenciandoBpresencaBpresenBpresasBpresaBprequelBprepraB
prepotenteBpreparoB
preparesseBpreparemBprepareBprepararB
preparandoB
preparadosB	preparadoBpreparaB
preoucuparB	preocupemBpreocupeBpreocuparamB	preocuparBpreocupandoB	preocupamBpreocupadosBpreocupadasB
preocupadaBpreocupaBprenteBprendiaBprendeuB	prendesseB	prenderamBprenderB	prendendoBprendemBprendeBprendamBprendaBpremiumBpremissaBpremiseBpremiosBpremioBpremiassBpremiarBpremiadoBpremiadaBpremiaBpremeditadoB	prematuraBpremadeBpreludeBprejuizoB
prejudiqueB
prejudicouB	prejudicoBprejudicialBprejudiciaisB
prejudicarBprejudicandoB
prejudicamBprejudicadosBprejudicadoBprejudicadaB	prejudicaBprejuBpreguiB	pregressoBpregosBpregoBprefiroBprefiramBpreferiuB
preferiramBpreferirB
preferidosB	preferidoB
preferidasB	preferidaBpreferiaBpreferiBpreferencialmenteBpreferencialBpreferenciaBpreferemBprefereBpreferB
prefeituraBprefeitoBprefeitaB
preenchidoB	preencherBpreencheBpredroBpredominantesBpredominandoB
prediletasB	prediletaBpredictableBpredictBpredeterminadasBpredeterminadaBpredecessorB
precursoraBpreconceituosasBpreconceitoBprecoBprecizoB	precissarBprecisouBprecisoBpreciseiBpreciseB	precisavaB
precisariaB	precisaraBprecisarBprecisaoB
precisandoB
precisamosBprecisamenteBprecisamBprecisaBprecisBprecipitadoBpreciosoBpreciosaB	precificaBpreciasBprecendentesB
precedenteBprecedeBprecauB	precariasBprecaBprecBpreBprdiBprazosBprazoB	prazerosoB	prazerosaBprazerBpraymeBpraxeBprawnBpratoBpratiqueBpraticoBpraticarBpraticamenteB	praticadoBpraticaBpratasBprataBprasoBprasBpraiseBpraiasBpraiaBpragasBpragaBpracticamenteBpracticallyB
pracarambaBpracaraiBpraBprBpqppBpqpBpqBppvBpplsBpoxxxaBpoxaBpowerupsBpowersBpowerfulBpoweredBpowerBpowBpovosBpovoarBpovoadosBpovoadoBpovoBpovinhoBpouvaisBpoussssBpousoBpousaramBpouraBpourBpouquissimosBpouquissimoBpouquissimasB
pouquinhosB	pouquinhoBpouquiiiissimasBpouquBpoupaBpouncesBpoulaBpoudemBpoucosBpoucoBpoucasBpoucaBpotuguesBpotuguBpotterBpotionsB	potentialBpotentesBpotenteBpotencializarBpotencializadoBpotencialidadesBpotencialidadeB	potencialBpoteBpotatoesBpotatoBpotBposturaBpostsBpostosBpostoBpostesBposteriormenteBpostemBposteiBpostedBposteBpostarBpostagemBpostadosBpostBpossuoBpossuiuBpossuirBpossuioB	possuindoBpossuidoBpossuiaBpossuiBpossuemBpossueBpossuamBpossuaBpossuBpossoBpossivelmenteBpossivelB	possiveisBpossiuB
possitivosBpossibleBpossibilityBpossibilitiesBpossibilitandoBpossibilitamBpossibilitadoBpossibilitaBpossibilidadesBpossibilidadeBpossesBpossamosBpossamBpossaBpossBposkapdokaspokdasdoB	positivosBpositivoB
positivelyB	positivasB	positivarBpositivandoBpositivamenteBpositivaB	positionsB	positiivoB
posicionarBposicionamentoB
posicionamBposicionadoBposicionadaB	posicionaBposibilidadesBposiBposebelidadeBposB
porventuraBportuguesesB
portugueseB
portuguesaB	portuguesBportuguBportugalBportugBportsBportosBportoBporteBportasBportarBportantoBportalzinhoBportalBportaisBportadoBportabilidadeBportaBportBporrraBporreteBporreiroB	porreirasBporreBporrasBporradasBporradaBporraBporrB	porquinhoBporquerBporqueB	porquantoBporquBporqBporosBpornoBpornBpormenorBporissoBporfavorBporemBporcosBporcodioBporcoBporcentagemBporcausaBporcasB	porcariasBporcariaB
porcamenteBporcaBporaoBporaiBporadaB	poracariaBporaBpoqueB	populososBpopularizandoB
popularityBpopularidadeB	popularesBpopularBpopulaBpopuilaBpopBpoorlyBpoorBpoopBpoolBpontuarBpontuadoBpontuaBpontosBpontoBpontimB
pontilhadaBpontesBponteBpontariaBpontaBponotsBponidosBponhoBponheBponhaB	ponderadaBpomboBpombasBpomaresBpomarBpoluiBpoluBpolrraBpolonesaBpolonBpoloB	politicasBpoliticaBpolirB
polimentosB	polimentoBpolidoBpolidasBpolidaBpolicyBpolicialB	policiaisBpoliciaBpolenguinhoBpolegarBpolegadaBpoleBpolanaBpolBpokemonBpoisBpointsB	pointlessBpointBpoiaBpohnaBpohaaaBpohaBpohBpoggersBpogBpoeriaBpoemBpoeiraBpoeBpodwBpodridBpodresBpodreB	podolotraBpodiamBpodiaBpodesseBpodesB
poderzinhoB	poderososBpoderosoB	poderosasBpoderosaBpoderosBpodermosBpoderiamBpoderiaBpoderesB	poderemosBpoderemBpodereiBpoderaBpoderBpodendoBpodemosBpodemBpodeBpodcastsBpodcastBpodBpocoBpocketBpocasBpocaBpobresB
pobrementeBpobreBpoblemasBpoblemaBpoBpneusBpncBpmBplzBplusBplugueBplugsBpluginsBplssssssBplsssssBplsBplotsBplotBplobemasBploamordedeusBplmddsBplisBplieBplicasBpleyersBplenoB
plenamenteBplenaBpleaseBpleasBplaythroughBplaystationBplaysBplayngBplaylistBplayingBplaygroundsBplayesBplayersBplayercastbrasilB
playerbaseBplayerBplayedBplayboyBplayarBplayableBplayabilityBplayBplausBplaugueBplatinunBplatinouBplatinoBplatinemBplatineiBplatinarB	platinadoBplatinaB	platformsBplatformingBplatformersB
platformerBplatformBplataformerBplataformasB
plataformaB	plaquinhaBplantioBplantasBplantarBplantaBplantBplanosBplanoBplanningBplanetinhasBplanetcoasterBplanetasBplanetaBplanetB
planescapeBplanejoBplanejeB	planejavaBplanejarB
planejandoBplanejamentoB
planejadosB	planejadoBplaneBplanaBplanBplainBplagiosBplagioBplagasB	placementB
placeablesBplaceBplacasBplacarBplacaBplBpkasBpkB_pizzzzzzzzzzzzzzzzzzzzaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaBpizzaBpixlesBpixelsBpixelartB	pixeladosBpixeladoBpixeladaBpixelBpixealizadoB
pixealadosBpivoBpivBpiucaBpiuBpitzaBpitoBpitinhoBpitchulaBpitadaBpitBpistolsB
pistolinhaBpistolasBpistolaBpistolBpistasBpistaBpissesBpisouB	pisoteadoBpisoBpiseiBpiscouBpiscinasBpiscarBpiscandoBpiscamBpiscadasBpiscaBpisarBpisaoBpisandoBpisamB	pisadinhaBpisaBpiruzBpiromanBpirokasBpiratiarBpiratexB	pirateixoBpirateiBpirateeiB	piratebayB	pirateavaB
pirateandoBpiratasB	piratariaBpirataBpiratBpiranhasBpiradaBpirB	piqueirosBpiqueBpipsBpipocoBpipocasB	pipizinhoBpipitchuBpiparBpipBpiorouBpioresBpioravaBpioraremBpioraramBpiorarBpiorandoBpioramBpioradoBpioradaBpioraBpiorBpioneiroBpioneiraBpioBpinturasBpinturaBpintoBpintarBpintamBpintadoBpintaBpinpointBpingsBpingoBpingenteBpingaBpingBpincelBpimentaBpilotouBpilotoBpilotarB	pilotagemBpillarsBpilhandoB	pilhagensBpilhaBpileBpilastraBpilasBpilaresBpilarB	pilantrasBpilantragemBpiladoBpilaBpilBpikachuBpikaBpijiiinnnntoooooooBpigBpiegasBpiedadeBpiecesBpieceBpidosBpidoBpidasBpidaBpicturesBpictureBpicromaBpicosBpicoBpickedBpickBpiceBpicasB	picaretasBpicaretaB	picadeiroBpicadaBpicaBpiasBpiarataBpianoBpiadasBpiadaBpiaBpiBphysicsBphutoBphodaBphocusedBphdnoscBphdBphantomBpgBpfvrBpfvBpfpossoBpfffffBpffBpfBpexteBpexinhoB	pewdiepieBpewBpetsBpetroleoBpetaBpetBpesteBpesssoasBpessoasBpessoalmenteBpessoalBpessoaisBpessoaBpessimosBpessimoBpessimasBpessimamenteBpessimaBpessamBpessB	pesquiseiBpesquiseB
pesquisavaB	pesquisasB	pesquisarBpesquisadasB
pesquisadaBpesquisaBpesosBpesoBpescoBpescarB
pescadoresBpesarBpesandoBpesadosBpesadoBpesadissimoB	pesadinhoB	pesadelosBpesadeloBpesadasBpesadaBpesaaadoBpesaBpesBperucasBperucaBperturbaBpertoBpertinentesBpertencentesB	pertencemBpertenceBperssonagensBperspectivaB	persongemB
personallyBpersonalizarBpersonalizandoBpersonalizadosBpersonalizadoBpersonalizadasBpersonalizadaBpersonalizacaoBpersonalizaB
personalizBpersonalityBpersonalidadesBpersonalidadeBpersonalBpersonagensBpersonagemsB
personagemBpersonBpersoBpersizoB	persistiuB	persistirBpersistentesBpersistenteB	persistemBpersisteBpersistBpersigaBpersiaBperseptB	perseguiuB	perseguirBperseguindoB
perseguidoB
perseguidaBperseguiB	perpetuamBperolasBperoBpernasBpernaB
permitisseBpermitirB
permitindoB	permitidoB
permitidasB	permitidaB	permitiamBpermitiaBpermitemBpermiteBpermitamBpermitaBpermanentesBpermanentementeB
permanenteB	permanentBpermanenciaB
permanecesB
permanecerB
permanecemB	permaneceBpermaneB
permadeathBpermaBperksB
perkbuildsBperkBperitoBperiodosBperiodoBperiodicogamerBperiodicamenteB	perigososBperigosoB	perigosasBperigosBperigoBpericlesBpericiaB	perguntouBperguntoBpergunteB
perguntavaB	perguntasB	perguntarBperguntandoB	perguntamBperguntaB
pergonagemBperfumeB
performingBperformanceB
performadoB
performaceB
perfomanceBperfilB	perfeitosBperfeitoBperfeitinhoB	perfeitasBperfeitamentoBperfeitamenteBperfeitaBperfeicBperfeiB	perfectlyBperfectBperfeccionistaBpererecaBpereneBperdurarBperdoouBperdoeBperdoarBperdoadoBperdoaBperdoBperdidosBperdidoBperdidasBperdidaBperdiaBperdiBperdeuBperdesseBperderemBperderamBperderBperdendoBperdemosBperdemBperdeBperdasBperdaBperdBpercursoBpercpectiveB
percorridoB	percorrerBpercorreBpercoBpercksBperckBpercivalBperceptivelBperceptBpercepBperceboB	percebidoBpercebiBpercebeuB
perceberemB
perceberamBperceberB
percebendoB
percebemosBpercebemBpercebeBpercebamBpercebaBpercamBpercaBperanteBperambulandoBperaBperBpequenosBpequenoB
pequeninhaBpequeneBpequenasBpequenaBpequenBpeppaBpeopleB	penultimaBpentiumBpentesB	penteadosBpenteadoBpenteBpenssoBpensseiBpensseBpenssarBpenssaBpensouBpensoBpensemBpenseiBpenseB
pensavamosBpensavaB	pensativoBpensaremBpensareiBpensaramBpensarBpensandoBpensamentosB
pensamentoBpensamBpensadosBpensadorBpensadoBpensadasBpensadaBpensaBpenisB	penhascosBpeneiraBpenduremBpenduramB	penduradoBpendemBpenasBpenarBpenantB	penalizarB
penalizadoBpenalizaBpenalidadesB
penalidadeBpenadaBpenaBpenBpeludaB	pelomenosBpelesBpeleBpelamordedeusBpelamorBpeladosBpeladoBpeladaoBpelBpeixesBpeixeBpeitoBpeitinhoBpeideiBpeiceBpeguenoBpeguemBpegueiBpegueBpeguaBpegouBpegosBpegoBpegavaBpegassemBpegasseBpegariaBpegaremBpegaramBpegarBpegandopBpegandoBpegamBpegadosBpegadoBpegadasBpegadaBpegaB
peformanceBpeerBpeepBpedroBpedrinhoBpedreiroBpedrasBpedraoBpedradaBpedraBpedplqkroiktweplBpediuBpediriaBpediremBpediramBpedirBpedindoBpedidosBpedidoBpedidaBpediaBpediBpederBpedenteBpedemBpedeBpedantesBpedaisBpedagiosBpedacosB	pedacinhoBpedaBpedBpeculiaridadesBpeculiarBpecuBpecouBpecandoB
pecaminosaBpecamBpecadosBpecadoBpecaBpeasyBpearkBpeaceBpeBpdsBpdeBpdBpcwareBpcsBpcBpazBpaywallsBpaytowinBpayloadsBpaydayBpayBpavorosoBpavorBpautamBpausterBpausingBpausasBpausaBpausBpaupBpauloBpauB	patrulhasBpatrulhandoB
patrolandoBpatrocinavaBpatrocinadorBpatrocinadoBpatriarcadoBpatreonBpatraoBpatrBpatoBpatinsBpatinouB	patinagemBpatifarBpatientBpatienceBpathsBpathifinderB
pathfinderBpatheticB	pathbugerBpathBpateticoBpateticamenteB	patetandoBpatenteBpatchsBpatchesBpatcherBpatchBpatasBpatamarB	pataguadaBpatBpastelBpasteBpastasBpastandoBpastaBpastBpasswordBpasssarBpasssaBpassouBpassosBpassoBpassivosBpassivoBpassivasBpassivaBpassingBpassesBpasserBpassemBpasseioBpasseiamBpasseiBpassedBpassearBpasseBpassavaB
passatempoBpassasseBpassariaBpassaremBpassareiBpassaramBpassarBpassandoBpassamosBpassamB	passagensBpassagemBpassageirosBpassageBpassadosBpassadoBpassadasBpassadaBpassaBpassBpasmoBpasmemBpasmeBpasBpartyBpartsBpartiuBpartirBpartindoBpartimosBpartidoBpartidasB	partidadaBpartidaBparticularmenteBparticularesB
particularBparticulamenteB	particulaB	participoB	participeB
participarBparticipandoB
participamB	participaBpartiB
partezinhaBpartesBpartemBparteBpartBparseroBparquesBparqueBparouBparoBparkurBparktectBparkourBparkouBparkingBparkBpariuBparisBpariramBparfaitB
parentesesBparenBparemBpareiBparedesBparedeB	parecidosBparecidoB	parecidasBparecidaBpareciamBpareciaBpareceuB	pareceramBparecerB	parecendoBparecemBpareceB
pareamentoBpareadoBpareadasBpareBpardaBparcialmenteBparcialB
parchmentsB	parceriasBparceriaB	parceladoBparcelaB	parceirosBparceiroB	parceirasBparceiraBparavamBparavaBparasseBparasitaBparasBpararmosBpararemBparardeBpararamBpararBparaquedistasBparandoBparanBparamosB
parametrosBparamB
paralizadoB	paralisiaBparalisanteBparaleloB	paralelasBparalelaB	parafusosBparafraseandoBparadoxBparadosBparadoBparadiseBparadasBparadaBparaceB	parabrisaBparabensBparabenlizoBparabBparBpapoBpapinhoBpaperB
papelzinhoBpapelB
papaizitooBpapaiBpapacusBpapacuBpapaBpapBpaoB
panzerhundBpanteBpanoBpanicoBpangarB
panelinhasB	panelinhaBpanelaBpandoraBpandemiaB
pancadariaBpancadaBpamnacaBpalpitarBpalpBpalmoBpalletsBpalletBpalhoBpalhetesBpalhetaBpalhaBpaletsBpaletesBpaleteBpalavrasBpalavraBpalavrBpakasBpaixaoBpaixBpaisesB	paisagensBpaisagemBpaisBpaintBpainelBpainBpaiiiiBpaigeBpaidBpaiaBpaiBpaguemBpagueiBpagueBpagouBpagosBpagoBpaginaBpagesBpageBpagassemBpagasBpagariaBpagaramBpagarBpagandoBpagamosB	pagamentoBpagamBpagaBpaertieBpadronizadoBpadraoBpadrBpadariaBpactosBpacotesBpacoteBpacoBpacmanBpacksBpackageBpackBpacingBpacificBpacienteB	pacienciaBpaciBpachorraBpacedBpacataBpacasBpacBpabloBpabensBpaBpBozinhaBozadaBoxygenBoxxyBoxigenioBoxigBoxiBoxenfurtBowowowBownerBownBowiczBovrlBovrBovosBovoBoverviewB	overtoxicB	overratedB
overpricedBoverpoweredsB	overpowerBoverkillB
overcookedB
overbuggedBoverallBoverBouviuBouviriaBouviremBouviramBouviraBouvirBouvindoBouvidosBouvidoBouvidasBouviBouvemBouveBouutroBoutubroBoutstandingBoutsideBoutsBoutrosBoutroraBoutroBoutrasBoutraBoutpostBoutlastBoutfitBoutdatedBoutcamesBoutaBoutBousejaBousarBousadosBousadoBousadaB	ourselvesBoursBouroBourBougumaBotrosBotraBotmoBotmizaBotmimasBotimosB:otimooooooooooooooooooooooooooooooooooooooooooooooooooooooBotimooBotimoBotimizouBotimizemB
otimizaremB
otimizaramBotimizarB
otimizandoBotimizamB
otimizadosB	otimizadoB	otimizadaBotimizaBotimistaBotimismoB	otimazadoBotimasBotimaB	otherwiseBothersBotherBotemBotariosBotarioBotakusBotakuBotaBotBostsBostentamBostBossosBossoBossBososBosoBosistemaB	oservidorB	oseioquelBoseioqueB	oscinaldoBoscileB	oscilandoBoscilamBoscilaBosaBorrivelB
orquestralBorquestradasB	orquestraBoroB
ornamentosBorksB
originandoB	originalsBoriginalmenteBoriginalB	originaisBoriginaBoriginBorigensBorigemBorificioBorientedBorientarBoricoBoriB	orgulhosoBorgulhoBorgulharBorgasmoBorgaosBorgansBorganizaremB	organizarB
organizadoB
organizadaBorganizaBorgBorfanatoBorfBorelhaB
orealmenteBordinBorderB	ordenadasBordemBordasBorcsB	orcilandoB	orchestraBorcBoratBorasBoradoBoraBorBoqueBoquceBoquBoqB	optmizadoBoptionsBoptionB	optimizedBoptimizeBoptimizationBoptimizadossB
optimizadoBoptimizaBopteBoptaramBoptarBoptandoBoptamBoptaBopsBoprimidoB	opressoraBoppositeB
opperationBopostoBopostasBoportunidadesBoportunidadeB	oponentesBoponenteBopniaoBopniBopinionBopiniaoBopiniBopinarB
opicionaisB	operationBoperadosBoperacionalBoperacionaisBoperaBopensuseBopeningBopenedBopenBopcionalB	opcionaisBopcaoBopacaoBopacaBopaBopBooooBoooBoolhaBooBonzeBonuBontenBontemBonteBonsBonlyBonllineBonlinesBonlinenuncamaisBonlineBonlBonibusBoniBonesBoneBondulaBondemBondeBondasBondaBondBonceBonaveBonBomodoBomgBomeudeusBombrosBombroBomarBomB	ololollloBolivalBolistBolineBolindaB	olimpianoBolhouBolhosBolhoBolhemBolheiBolheBolharmosBolharesBolharamBolharBolhandoBolhanBolhamosBolhamBolhadaBolhaBolhBoleoBoldBolariaBolaBolBokramBokokkokoBokkkkkkkkkkkkkkkkkkkkkkkkkBokkBokcBokayBokBojogoB
oitocentasBoitoBoitmoBoikBoiiB
oihhiqlkgxBoieBoiaBoiBoharaBohBogxzjfqBogroBoggBogBofuscarB	ofuscandoBofuscadoB	ofuncionaBoftenBoficinaBoficialmenteBoficialBoficiaisBoficaisBoffsetBoffllineB
offlinenaoBofflineeBofflineBoffilineB
officiallyBofficialBoffersB	offeringsBofferB	offensiveBoffenseBoffendBoffB	ofertadosBofertadoBofertaB	oferendasBoferendaB	oferecidoBofereceuB
ofereceremBoferecerB
oferecendoBoferecemBofereceBofereB	ofensivosBofensivoBofensasBofensaBofendidoBofendiBofendemBofcBofBoesadoBoesBoekqoBodysseyBodosBodoBodiosoBodiomaBodioBodieoBodieiBodiavaBodiaremBodiarBodiadoBodiadasBodiBodeioBodeieiBodeiamBodeiaBodeBodBocuparBocupandoBocupamBocupadoBocupaBocumeBoculusBocultosBocultoBocultarBocultadoBocultaBoctoberBocresBocreBocorridoBocorriaBocorreuB	ocorreramBocorrerB	ocorrendoBocorremBocorreBocorrBocomeBocoBociosasBocinioBocidenteBochidoBocheBoceanosBoceanoBoccuredBoccurBocasionandoBocasionalmenteB
ocasionaisB
ocasionadoBocasionaBocasiBocarinaBocB	obvisoulyBobvioB
obviamenteBobtiveBobtidosBobtidoBobtidasBobtidaBobteveBobterBobtendoBobtenBobtemosBobtemBobteBobtB	obstructsB
obstaculosBobstB	obsoletosBobsoletoBobsessBobservouBobservarmosBobservarB
observandoB
observadosB
observadorBobservaBobscuroBobscurasBobscuraBobsBobrigatorioBobrigatoriedadeBobrigatoriamenteBobrigatB	obrigariaBobrigarB	obrigandoBobrigamB	obrigadosBobrigadoBobrigadaBobrigaBobrasBobraBoblivionBobjetosBobjetoB	objetivosBobjetivoBobjetivaB	objeitivoB	objectiveBobjBobgBobesoBobejtivoBobedecerBobdBobamaBoarBoamentoBoadoBoadasBnxtBnwnBnwiBnvoBnvizzioBnvidiaBnvideaBnvBnuvensBnuvemBnuuvemB
nuuunncaaaBnutsB	nutrienteBnutriBnussBnusBnurseBnuqakxBnuosBnuoBnundaBnuncaBnunB	numerososB	numerosasBnumerosBnumeroBnumcaBnumberBnuloB	nulidadesBnuleBnulaBnukemBnukedBnukeBnuitoBnuesBnudistasBnudezB	nuclearesBnuclearBnucaBnubladoBnuasBnuaBnuBntricasBntricaBntiumBnticosBnticoBntiBntesBnteBntdllBntcBntanosBnsulaBnsitoBnsiaBnsaBnsBnquoBnpcsBnpcBnowhereBnowadaysBnowBnovosBnovoaBnovoBnovinhoBnovinhaBnovigradB	novidadesBnovidadeBnovembroBnovelaBnovelBnoveisBnovatosBnovatoBnovataBnovasB	novamenteBnovaBnoturnaBnotoriedadeBnotionBnotificationB	notificarBnotificaBnoticiasBnoticiaBnoticedB
noticeablyBnothinkBnothingBnotesBnotepadBnotemBnoteiB	notebooksBnotebookBnoteBnotbookBnotasseBnotasBnotarmosBnotarBnotadoBnotadaBnotaaBnotaBnotB
nostalgicoB
nostalgiaeBnostalgiaaaaaB	nostalgiaBnostBnosseBnoskBnoscoperBnoruegaBnorteiaBnorteBnormalzinhoBnormalmenteB
normalizarBnormalBnormaisBnormailBnoraBnorBnopBnooseBnoooossaBnoobsBnoobBnonsenseB	nonlinearBnoneBnonBnomesmoBnomesBnomearBnomeaBnomeBnokiaBnojoBnojentosBnojentoBnojentasBnojentaBnoivaBnoitesBnoiteBnoiseBnoisBnoiceBnogoBnoedB
nocomplexxBnobresBnobreBnobodyBnobelBnobBnoaBnnytjBnnnnnnBnnenhumBnnBnmralBnmrB╗nmjujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujujuawjfffffffhhmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghghfhggggggggggggggggggBnlBnkhbhvBnkBniviBnivelarBnivelamentoBnivelBniveisBniugaBnitroBnitidezBnitidamenteBnitendoBnistoBnissoBnisBniquelBnipeBniosBnioBnintendoBninjasBninjaBninhosBninhoBninguemBninguBnineBnimosBnimoBnimasBnimaBnilfgaardiansB	nilfgaardBniguemBnightsB	nightmareB	nightfallBnightBnicosBnicoBnicksBnickBnicioBnichoBnicelyBniceBnicasBnicalisBnicaBnibusBniasBniaBnhamosBnhamoBnhBnguloBnguasBnguaBngmBngBnfimaBnfaseBneyBnextBnexoB
newgroundsBnewBnevoeiroBnevoaBneverwinterBneverBneveBnevascasBneutrosBneutroBneutralizarBneutraB	neuroniosBneurologicoBneurologicamenteBneurBnetworkBnetosBnetoBnethersB
nethermindBnetherBnetflixBnetcodeBnetBnestesBnesteBnestasBnestaBnessesBnesseBnessasBnessaBnescessarioBnescessBnesBnervousBnervososBnervosoBnerosBneroBnerfsBnerfemBnerfedBnerfaremBnerfaramBnerfaraBnerfarBnerfandoBnerfamBnerfadosBnerfadoBnerfadaBnerfaBnerfB	nerdzinhoB
nerdplayerBnerdmalditoBnerdBnerBnepiaBneosBneoBnenumaBnenhumaBnenhumBnenhuBnenBnemesisBnelesBneleBnelasBnelaBneitherBneisBneilBneighborhoodBneiBnehumaBnehumBnehBneguinBnegrosBnegroBnegritoBnegriceBnegrasBnegraBnegosBnegocioB	negociavaB	negociadoBnegociaBnegoBnegligenciadoB	negativosBnegativoBnegatividadesBnegatividadeB	negativeiBnegativeB	negativasB	negativarBnegativandoBnegativamenteB
negativadoBnegativaBnegaticaB	negarivosBnegaramBnegarB	negaolevoBnegadoBnegadasBnegadaBnegBneedsBneedBnedaBnecrosB
necrofagiaBnecessitavaBnecessitariaBnecessitaremB
necessitarBnecessitandoB
necessitamB	necessitaBnecessidadesBnecessidadeB	necessaryBnecessariosB
necessarioBnecessariasBnecessariamenteBnecessBneasBnearlyBnearbyBnearB
neandertalBneamenteBneaBneBndromeBndoBndioBndidosBndidoBndidasBndidaBndiaB
ndevolvidoBndaBndBnculoBncrivelmenteBncrivelBncipeBnciosaBnciosBncioBnciasBnciaBncerBncaaBnbaliveBnbaBnazistasBnazistaBnazaBnavyBnaviosBnavioBnavilB
navigationBnavesBnaverdaBnavegarB	navegadorBnavegaBnaveBnavalB	nauseandoBnaumBnauBnaturezaBnaturalmenteBnaturalidadeBnaturalBnaturaisBnativosBnativoBnativamenteBnativaBnationB	natimortoB
natalidadeBnatalBnataBnatB
nascimentoBnascidoBnasciBnasceuBnascesseBnasceremBnascerBnascendoBnascemBnasceBnasaB	narrativoB
narrativesB
narrativasB	narrativaBnarrarB
narradoresBnarradorBnarradaBnarraBnarizBnarcBnaquelesBnaqueleBnaquelasBnaquelaBnapoleB	naogosteiBnaoBnannanBnancyBnananBnanBnamotututututuBnamorrrrrrrrrB	namorilsoBnamoralzinhaBnamoralBnamoradoBnamoradaBnamesBnamedBnameBnamBnalticaBnalBnaisBnaipeBnaiceBnahhhBnahhBnahBnadoBnadinhaBnadicaBnadeBnadasBnadarBnadandoBnadaaaaaBnadaBnacionalidadeBnacionalB	nacionaisBnaaoB	naaaoooooBnBmzrBmyuitoBmyteamBmyresBmyrepBmyplayerBmyparkB	myminutesBmyleagueBmygmBmyersBmyerdierBmycolorBmycarrerB	mycarreerB	mycarrearBmycareerBmyBmxB
mwremasterBmwrBmwBmuyBmuuuuuuuuuuuuuuuuuuuuuuuuuuuitoBmuuuuuuuitaB
muuuuuuitoB
muuuuuitosBmuuuuitoB	muuuuitasBmuuuitoBmuuuitaBmuuitoBmutoB
mutiplayerB
mutileiserBmutchoBmutarBmutantesBmutanteBmutamBmutagBmutadoBmutaBmustardaBmustangBmustBmusiquinhasB
musiquinhaBmusicoBmusicianBmusicasBmusicalBmusicaBmusicBmuseuBmuscularBmusciaBmurroBmurosBmuroBmurmurosB	murderersBmurderBmuralhaBmuniBmundosBmundoooooooooooooooooooooooBmundoBmundiasBmundialmenteBmundialBmundiaisBmundiBmundanosBmultyplayerB
multplayerBmultplayBmultjogadorBmultitarefaB
multiplyerBmultipliqueiBmultiplicandoBmultiplicamB	multiplicBmultipleB
multiplayrBmultiplayersBmultiplayerB	multiplayBmultiplataformaB	multiplasB
multilaserBmultilarBmultijogadosBmultijogadorBmultidBmultiBmultasBmultarBmultadoBmulosBmuloBmulheresB	mulheradaBmulherBmulestaBmulequeBmulekadaBmulaBmuitosknasklaskjBmuitosBmuitooosB?muitoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooBmuitoooooooooooooooooBmuitooooooooooooooooB	muitoooooBmuitooooBmuitoooBmuitooBmuitoiBmuitobomB
muitissimoBmuitasBmuitaoBmuitaassBmuitaBmuitBmuiroBmuioBmuintoBmuiitoB
muiiitooooBmuiiitoB	muiiiiitoBmuierBmuieBmuiBmuhBmuertoBmudouBmudoBmudenBmudemBmudeiBmudeBmudavaBmudaremBmudareiBmudaramBmudarBmudandoBmudancasBmudanBmudamBmudadosBmudadoBmudadasBmudadaBmudaBmudBmuchoBmuchBmtuBmtttBmtsBmtoooooBmtoooBmtoBmtgBmtasBmtaBmtBmsmoBmsmBmserveBmsentidoBmsBmrBmploBmpbsBmpadaBmpBmozartBmozBmovoBmovimetaB
movimentosB	movimentoBmovimentariaB
movimentarBmovimentandoBmovimentadosBmovimentadoB	movimentaBmovimentBmoviesBmovieBmoviaBmoveuBmovesseBmovesBmoveremBmoverBmovendoB	movementsBmovementBmovemBmoveisBmoveBmousesBmouseBmouchBmotosserrasB
motosserraB	motosseraB	motoserraB
motoristasB	motoristaBmotoresBmotoraBmotorB
motoqueiroBmotoboyBmotoBmotivouBmotivosBmotivoBmotiveBmotivavaB	motivaramBmotivarB	motivadorBmotivaBmotionBmotarBmostrouBmostrosBmostravaB	mostrasseB	mostraramBmostrarB	mostrandoBmostramB	mostradosBmostradoBmostradaBmostraBmostlyBmostandoBmostBmoshBmoscasBmoscaBmosBmortosBmortoBmortesBmorteiroBmorteBmortasBmortalBmortaisBmortaBmortBmorrreuB	morrowindBmorrosBmorrokkkkkkkBmorroBmorridoBmorriaBmorriBmorreuBmorresseBmorreriaBmorreremBmorreramBmorreraBmorrerBmorrenduBmorrendoBmorremBmorreeBmorreBmorramBmorraBmoroBmornaBmorisBmoriBmorfeuBmorenaBmoreBmordidaBmordiBmordemBmorbusBmoravaBmorarBmorangosBmorangoBmoramB
moralzinhaBmoralBmoraisB
moradosresB	moradoresBmoradorBmoradiaBmoraBmorBmoonwalkB	moonlightBmoonBmoobsBmonyB
monumentosB	monumentoB
montruosasBmontrosBmontreuxBmontrealBmonthsB	montezumaBmontesBmonteiB	montegensBmonteB	montariasBmontariaBmontarB
montanhosaB	montanhasBmontanhaBmontandoBmontainsBmontagemBmontadosBmontaBmontB
monstruosoBmonstrosBmonstroBmonstrinhosBmonstraBmonstrBmonstersBmonsterBmonotonoB	monotoniaBmonotomoB
monotarefaBmonotanoBmonopolyBmonodoraBmonocromBmonoBmonkeysB	monitoresB	monitoramBmonitorBmonitesBmongosB
mongoloideBmongolBmongeBmongBmoneyB
monetizadoBmonetizaBmonastB	monarquiaBmonarkBmonalisaBmonBmomodoraBmomentumBmomentsBmomentosBmomentoBmomentB	momementoBmolhadoBmolezaB
molestadorBmolequeBmolecadinhaBmoleBmoldesBmoldeBmoldarBmolarBmolBmojangBmoitaBmofoBmofandoBmofadoBmofaBmoerBmoendoB	moedinhasBmoedasBmoedaBmodsBmodpackBmodosBmodoBmodinhaBmodifiedBmodificationsBmodificaremB	modificarBmodificandoBmodificadosB
modificadoBmodificadasB
modificadaBmodificaBmodesBmodernosBmodernoB
modernizarBmoderninhosBmodernaBmodernB	moderadosBmoderadorzinhoBmoderadoresBmoderadoB	moderadasBmoderadamenteBmoderaBmodelsBmodelosBmodeloB	modelagemB	modeladosBmodeBmoddersBmodderBmoddedBmodalidadesBmodaBmodBmochilaBmochiBmobsBmoboB
mobilidadeBmobileBmobasBmobaBmobBmoagemBmoBmnerdaBmnBmmxBmmrBmmorpgsBmmorpgBmmofpsBmmoBЁmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiiiiiiiiiiiiiiiiiiiiiittttttttttttttttttttttttoooooooooooooooooooooBmminhaBmmesmoBmmBmlkBmlhrB
mkngamesbrBmkBmizeraBmiyersBmixurucaBmixedBmixB	mivimentaBmiudaBmiuBmituBmitoBmitiuBmitbBmisturasB
misturandoBmisturamB
misturadosB	misturadoB	misturadaBmisturaBmistoB
misteriosoBmisteriosasBmisteriosamenteB
misteriosaB	misteriosBmisterioBmistakesBmistaBmistBmissoresBmissoesBmissionsBmissionariosBmissionBmissingBmissileBmisselBmissedBmissaoBmissaBmissBmisisonsBmiserosBmiseroBmisericordiosoBmisericBmiseravelmenteB	miseravelBmiserasBmiserBmisBmirouBmiravaBmirasBmirarBmirandoB
miraculousBmirabolantesBmirabolanteBmiraBmiquBmiossanBmiosBmiojoBmioBminutsBminutosBminutoB
minutinhosBminutesBminuteB
minusculosB	minusculoB
minuciososB	minuciosaBmintoBminsB
minotaurosBminoriaBminorBmininosBmininoBminimunBminimumBminimosBminimoB	minimizarBminimizaBminimasBminimapaBminimapBminimamenteBminimalistasBminimalistaBminimaB	minigamesBminigameB
minichefesB	minichefeBminibossB	miniaturaBminiBminhocaBminguemBmingeryB	minerinhoBminerarB	minerandoBmineraBminerB
mineirinhoB	minecraftBmineB	mindustryBmindsetB	mindblownBmindblowingBmindblowindB
mindblowigBmindBminasBminahBminaBminBmimimiBmimadosBmimBmiltonBmillllllB
millenniumBmillaBmillB	militaresBmilitarB
milhonarioBmilhoesBmilhoBmilharesBmilharalB	milhaeresBmilhB	milestoneBmileniosBmildBmilanersB	milagrosaBmilagreBmilBmikuBmikeBmiguelBmiguBmigrateBmigrandoBmigraBmightyBmightBmigalhaBmiersBmierdaaaaaaaaaaBmierdaBmidoBmidiaBmidesBmiddleBmidBmicrotransactionsBmicrotransaB	microsoftBmicroscB
microondasBmicromanagementB	microfoneBmicroBmicosBmicoBmichaelBmicasBmicaBmicBmiauBmiasBmiamiBmiBmhzBmgtowBmgBmeyersBmexidaBmexicanoBmexicanaBmexeramBmexerBmexendoBmexemBmexeBmexaBmeuuuuuBmeuuuuB
meudeuuuusBmeudeusBmeuaBmettleBmetterB
metrovaniaBmetrosexualBmetrosBmetroidvaniasBmetroidvaniaBmetroidvBmetroidivaniaBmetroidBmetroiBmetrodvaniaBmetroBmetralhadorasBmetralhadoraB
metralhadoBmetrBmetodosBmethodsBmetersBmeteramBmeterBmeteoroBmetendoBmetemBmeteB	metaslaveBmetasBmetarBmetalBmetafBmetadoBmetadeBmetaBmestreBmessyBmessesB	messengerBmessBmesoBmesmosBmesmoooBmesmiceBmesmasBmesmaBmesmBmesesB	mesclandoBmescladoBmesaBmesBmerrdaBmerosBmeroBmermBmeritoBmergulhoB	mergulharBmergulhandoB	mergulhamB
mergulhadoBmerecidoBmereciaBmereceuB	mereceriaBmerecerBmerecemBmereceBmereBmerdiciBmerdiBmerdasBmerdadeBmerdaaaaaaaaaaaaBmerdaaBmerdaBmerdBmerchantBmerchandiseBmercenarismoBmercenariosB
mercenarioBmercenariasBmercenBmercedezBmercedesBmerceBmercadoriasB
mercadoriaB
mercadoresBmercadorBmercadoBmercBmerasBmeraBmerBmeosBmeoBmenusBmenuBmentoBmentiuB
mentirososB	mentirosoB
mentirosasB	mentirosaBmentirasBmentiraBmentirBmentionBmentingaBmentemBmenteBmentalmenteBmentalidadeBmentalBmentaisB	menstrualB
menstruadoBmensalBmensaisB	mensagensBmensagenBmensagemBmenosprezemBmenosBmenoresBmenorBmenoBmeninosBmeninoBmeninasBmeninaBmeneiraBmendoBmendigosBmendigoB	mencioneiB	mencionarBmencionandoBmencionadosB
mencionadoBmencionaBmenbroBmenasBmenBmemosB	memorizarBmemoriasBmemoriaB
memoraveisBmemorBmemoBmemesBmementosBmementoBmemeBmembrosBmemBmelshorBmelonbomberB	melodramaBmeloB	meliantesBmelhroesBmelhorzinhaBmelhorsB
melhorrrrrBmelhorouB	melhoriasBmelhoriaBmelhoresBmelhoremB	melhoreemBmelhoreB
melhorasseBmelhorasBmelhorariamB
melhorariaB
melhoraremB
melhoraramBmelhorarBmelhorandooB
melhorandoBmelhoramentosBmelhoramentoBmelhoramB
melhoradosB	melhoradoB
melhoradasB	melhoradaBmelhoraBmelhorBmelhoorBmelhoBmeleeBmelandoB	melanciasBmelancBmeladoBmelBmejorBmeiosBmeioBmeiersBmeierBmeiaBmehhBmehBmegatrBmegasBmegamanB	megadriveBmegaBmegBmeetsBmeetBmeerdaBmeeeeeeeeeeeeeeeeeuBmedosBmedonhoBmedoBmediumBmeditarBmedirB	mediocresBmediocreBmedioBmedinhoBmedievalBmedidorBmedidasBmedidaBmedicoB	medicinesBmedicineBmedicinaBmediciBmedicamentosBmedianteBmedianosBmedianoBmedianasBmedianaBmediaBmedcoreBmedalhaBmedalBmedaBmedBmechiBmecherBmechendoBmecheBmechasB	mechanoidB	mechanicsBmechanicBmechaB
mecanizadoB
mecanismosB	mecanismoB	mecanincaB	mecanimasBmecanidaBmecanicsB	mecanicosBmecanicoB	mecanicasBmecanicamenteBmecanicaBmecBmeatchBmeatBmeasureBmeasBmeansBmeanBmeadosBmdsBmcBmbolosBmboloBmbioBmbiaBmberBmbBmazucaoBmayhemBmayersBmaybeBmayBmaximosBmaximoB
maximizadoBmaximizadasBmaximaBmaxBmausBmauBmaturoB
maturidadeBmattersBmatterBmattBmatrixBmatouBmatoBmatilhasBmaticaBmathieuBmatheusB	materialsBmaterialB	materiaisB
matematicaBmatemBmateiBmateBmatchmakingB
matchmakerBmatchesBmatchBmatavaBmatasseBmataremBmataramBmatarBmatandoBmatanBmatamBmatalosBmatadosBmatadorBmatadoBmataBmatBmasterpieceBmasterBmasssssssssBmasssssBmassivoBmassiveBmassinhaBmassasB	massantesBmassanteBmassacreB	massacrarBmassacradosB
massacradoBmassaaaaBmassaBmasoquistasB
masoquistaBmasiB	masculinoB	masculinaBmasculidadeBmascoteBmascarasB	mascaradoBmascaraBmarteloBmartelaBmarronsB
marromenosBmarromBmarriedB	marretadaBmarretaBmarrarBmarrangeraisBmarqueiBmarotoBmarotaBmarmoreB	marketingBmarketedBmarketBmarkBmarioriaBmarioBmarinhosB
marinheiroBmarinhaBmarinesBmarinersBmariaBmargemBmarfiaBmaresBmareBmarcouBmarcosBmarcoBmarcinBmarchasBmarchaBmarceloBmarcasBmarcaramBmarcarB	marcantesBmarcanteBmarcandoBmarcamBmarcadosB
marcadoresBmarcadoBmarcadasBmarcadaBmarcaBmarcBmaravilindoBmaravilhososBmaravilhosooooooBmaravilhosooooBmaravilhosoBmaravilhosasBmaravilhosamenteBmaravilhosaB	maravilhoB
maravilhasBmaravilhadoB"maravilhaaaaaaaaaaaaaaaaaaaaaaaaaaB	maravilhaB	maratonasB	maratonarBmaratonaBmarathonBmarasmoBmarasBmaracujaBmaraaaaaaaaBmaraBmarBmaquinasB
maquinariaBmaquinaBmaquifafB	maquiagemBmapsBmapinhaB	maphackerBmapearBmapasBmapaBmapBmaozinhaBmaosBmaoBmanyBmanutenBmanusiabilityBmanuseioBmanusearBmanuscritosBmanualmenteBmanualBmanuaisBmantisBmantidasBmantidaB	manticoraBmantiaBmanteveBmantesBmanteremBmantereiBmanteraBmanterBmantenhoB	mantenhamBmantenhaBmantendoBmantemBmanteBmantBmansBmanreiraBmanosBmanoquemerdaBmanoloBmanobrasBmanobrarB
manobrandoBmanoBmanjoBmanjeBmanjarBmanjadasBmanjB	manivelarBmanivelaBmaniqueB
manipuladoBmanipulaBmanifestemosB
manifestarB	manicrfitBmaniaBmanhasBmanhaBmanhBmangoB	mangeirasBmangaliaBmangBmaneroBmaneraoBmanerB	manequinsBmanejoBmanejarBmaneiroBmaneirasBmaneiraB	maneeeiroBmandouBmandoBmandemBmandeiBmandeBmandatBmandarimBmandaramBmandarBmandandoBmandamBmandaBmancoB	manchandoBmancadaBmanasBmanagesBmanagerB
managementBmanagedBmanageBmanaBmanBmamuteBmamoBmameiBmameBmambosBmamadoBmalvadoBmalvadaBmalucosBmalucoBmalucasBmalucaBmaltaBmalsBmaliwanBmalignoBmalignaB	maliciousB	maliciosaBmalhorBmalfeitoBmalesBmaleBmalditosBmalditoBmalditaBmalaysiaBmalasiaBmalasBmalandrangemBmalBmakingBmakesBmakerBmakedBmakeBmajorityBmajorB	majestadeB	maiusculaBmairoriaBmaioriasBmaioriaBmaioresBmaiorBmaioneseBmaioBmainlyBmainBmailsBmailBmaikaoBmaiBmahatmaBmahalBmaguinificoBmagraBmagosBmagoB	magnitudeB
magnifiqueB	magnificoB	magnificaBmagnawayB	magnanimoBmagnBmagmunB	maginandoBmagickBmagicasBmagicamenteBmagicBmagiasBmagiaBmafiososBmafiosoBmaestrarBmaeBmaduroBmaduraB
madrugavocB
madrugadasB	madrugadaBmaditaBmadesBmadelyBmadelineB
madeireiraBmadeirasBmadeiraBmadeBmadBmacumbaBmacthBmacrotransiBmacroBmacosBmaconhaBmacioBmachucouBmachucamB
machucadosB	machucadoBmachucaBmachooooooooooooBmachoB	machistasBmachistaBmachismoBmachineBmachasBmachadosBmachadoBmachadinhasB
machadinhaBmachaBmacetesBmacbookBmacaronsBmacacosBmacacoBmacabroBmacabraBmacBmaaasssBmaBmBlyuyikhjBlvlsBlvlBlverBlvBluzesBluzBluxosBluxoBluvaBluthorBlutemBlutasBlutarBlutandoB	lutadoresBlutadorBlutaBlungeBlunchBlunarBluminozidadeBluminosidadeBlulwBlulasBlulB	lukinhudoBluizaBluizBlugaresBlugarBlucutorBlucrosBlucroB	lucrativaBlucrarBlucrandoBluckszinBluckBluchadorBlucasBluacherBluaBluBltiplosBltiplasBltimosBltimoBltimasBltimaBlowerBlowBlovleyBlovelyBlovedBlovecraftianaBloveB	louquinhoBlouisBloucurasBloucuraBloucosBloucoBloucaBlotsBlotericaBloteriaBlotamBlotadosBlotadoBlotadasBlotaBlotBlostingBlostBlossBlosingBlosesBloserBloseBlosBloresBloreBlordBlootsBlootiarBlootedB	lootboxesBlootBloosingBloopsBloopingsBloopingBloopersBlooperBloopedBlooparBloopandoBloopaBloopBlooooooooooooongoBlooksBlookingBlookedBlookBloobyBlonjeBlongosBlongoBlongestBlongesBlongerBlongeBlongasBlongaBlongBlonelyBloneBlonasBlolzemaBloliBlolBlokooBlokoBlokaBlojinhasBlojinhaBlojasBlojaBloguinBlogsBlogosBlogoBlogitechB	logisticsBloginBlogicoBlogicamenteBlogicaBlogicBloggingBlogarBlogandoBloganBlogadaBlogaBlogBlodoBlodiesB	locomoverBlocomovendoB	locomovemB
locomotiveBlocomotivasBlocomoBlocoBlockingBlockerBlockedB	lockcodesBlockadoBlockB	localizarB	localizamBlocalizadosB
localizadoBlocalizadasB
localizadaBlocalizaBlocalidadesB
localidadeBlocalBlocaisBlocaBlocBlobosBloboB	lobisomemBlobbysBlobbyBloandingBloadsBloadoutsBloadoutBloadingsBloadingBloadedBloadBloBlneBlmgsBlllBllBljkimuBlizzzzzzzzzzzzinhoBlizesBlizarBlixosoBlixosBlixooooooooooooooooooooooooooooBlixoooooooooooBlixooooBlixoBlixeraBlixeiraBlixaresBlixaradaBlixarBlixaoBlixandoBlixaBlixBlivrouBlivrosBlivroBlivrinhoBlivresB
livrementeBlivreBlivrarBlivingstoneBlivestreamsBlivesBlivelyBlivedBliveBlittleBlitoBlitleBliticasB
literaturaBliteralmenteB	literallyBliteralBlitarBlistinhaBlistenBlisteiBlistasBlistareiBlistarBlistandoBlistadosBlistadoBlistaBlistBlissoBlisosBlisoBlisinhoBlisesBliseBlisboaBlisaBliosBlioBlinuxB
linstallerBlinksBlinkeiBlinkarBlinkadoBlinkaBlinkBlinhasBlinhaBlinguiB
linguagensB	linguagemBlinguaBlinesBlinearidadeBlinearesBlinearBlineBlindosB	lindokkkkBlindoBlindinhoBlindezaBlindasBlindaBlindBlimposBlimpoBlimparBlimpandoBlimpaBlimoBlimitsBlimitouBlimitesBlimitedBlimiteBlimitationsB	limitaremBlimitarB	limitandoBlimitamB	limitadosB	limitadorBlimitadoB	limitadasBlimitadaBlimitadBlimitaBlimitBlimiBlimboBlimaBlilBlikingBlikesBlikedBlikeBligueiBligueBligoB	lightningBlightBligeralmenteBligeiramenteBligavaBligariaBligarBligandoBligamBligadosBligadoBligadasBligadaBligaBlifelessBlifeBliekBlieBlidosBlidoBlidlBlideresBliderarBlideranBlideraBliderBlidasBlidarBlidaBlicuriB	lichoooooBlichoBlichBlicencidadosBlicenciamentosBlicenciadosB
licenciadoBlicenciadasBlicenBlicaBlibrioBlibraryBliberteBlibertarBlibertadoresBliberemB	liberdadeB	liberaremB	liberaramBliberarB	liberandoBliberamB	liberadosBliberadoB	liberadasBliberadaBliberaBliasBliaBliBlhoBlhBlguBlgtvBlgicosBlgicoBlgicaBlgamaBlezgalBlexBlevouBlevoB
leviathansB	leviatansBlevesB	levementeBlevelsBlevelingBlevelBleveisBleveiBleveBlevavaBlevasseBlevasBlevariaBlevaremBlevaramBlevarBlevantarB
levantandoBlevantaBlevandoBlevamosBlevamBlevadoBlevadasBlevaBlevBleuBlettingBletsBletrasBletraBletiumBletBlesteBlessonBlessBlesmasBlesmaBlesgalBlesadoBlerdoBlerdezaBleraBlerBlequeBleprosoBleosBleonidasBleonardoBleoBlentosBlentoBlentidBlentasB
lentamenteBlentaBlentBlenhadorBlenhaBlendoB	lendariosBlendarioB	lendariasBlendaBlendBlenBlembrouBlembroBlembremBlembreiBlembreBlembravaBlembrarB	lembrandoBlembranBlembramB	lembradosB	lembradasBlembraBleloBlelfBleleBlelalBlekBleituraBleitoresBleitorBleiteBleisBleioBleilBleiamBleiaBleiBlegsBlegoBlegitBlegionBlegiaoBlegiBlegendsBlegendasB	legendaryB	legendadoBlegendaBlegendBlegarB
legalzinhoB
legalzinhaB
legallllllBlegallBlegaleBlegalBlegaisBlegadoBlegacyBlegaBlegBleftBleeeentoBleechingBleeBledoBlecauBlecalBlebronBlebreBleavingBleavesBleaveBleatherfaceBleatherBleastBlearningBlearnBlealBleagueBleaglBleadingBleadBleBlbBlazyBlazinessBlazerB	lazarentoBlayoutsBlayoutBlayleeBlayersBlayBlawBlavarBlavadoBlavaBlaurieBlaunchesBlauncherBlaunchedBlaunchBlauchingBlatinosBlatinoBlatinaBlatinBlatestBlaternaBlateralmenteBlateralBlaterBlatencyBlatenciaB
latecenciaBlateBlataoBlataBlatBlastsBlastimaBlastBlasqueBlasersBlaserBlascouBlascavaBlascarBlascadoBlasBlarvaBlarguraBlargouBlargestBlargeBlargavaBlargasBlargaramBlargarBlargadoBlargaBlaresBlaranjaBlaraBlarBlaptopsBlaptopB	lanternasBlanternaBlansB	languagesBlaneBlandsBlandingBlandBlancoBlancheBlancemBlanceBlancarBlancandoB
lancamentoBlancadoBlancaBlanBlampadaBlamentoBlamenteiBlamentavelmenteB
lamentavelBlamentBlameBlambidaBlambanBlamaBlakeBlaifeBlagxlagBlagswitchersB	lagswitchBlagsBlagrimaBlagoBlaggyBlaggersBlagersBlagarBlagandoBlagamBlagadosBlagadoBlagadasBlagadaBlagadBlagaBlagBladrBladosBladoBladeiraBladdersBladderB
lacrimejarBlacreBlacksBlackingBlackB	labutadorBlaboresBlaboratB	labirintoBlaBlBkuBksksksksskksksksskBkskskskBksfkfsaBkruggerBkruegerBkrokodilBkrlrBkrllllBkrlBkriegBkremlinBkrasBkralhoBkralBkrakenBkraBkpopBkotchBkonkonBkongBkobeBknowingBknowB	knockbackBknockBknightBknifeBknewBkmBklllkkkBkleberBklayBkklBЅkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkBЉkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkBИkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkB(kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkB$kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkBkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkBkkkkkkkkkkkkkkkkkkkkkkkkkBkkkkkkkkkkkkkkkkkkkkkkkkBkkkkkkkkkkkkkkkkkkBkkkkkkkkkkkkkkkkkBkkkkkkkkkkkkkkkkBkkkkkkkkkkkkkkkBkkkkkkkkkkkkkBkkkkkkkkkkkkjBkkkkkkkkkkkkBkkkkkkkkkkkB
kkkkkkkkkkB	kkkkkkkkkBkkkkkkkkjjjjjjjjjjjBkkkkkkkkBkkkkkkkBkkkkkkBkkkkkjBkkkkkBkkkkBkkkjjBkkkjBkkkBkkjjjkkkjjjBkkBkjkkkkBkjhgfBkitsBkitouBkiteiBkitarBkitandoBkitaBkitBkingsB	kingmakerBkingdomBkingBkindredBkindaBkindB
kilometrosBkillsBkillingBkillervsBkillersBkillerblindBkillerBkilledBkillcamBkillBkilerBkileersBkikadosBkikadoBkikaBkijujuBkigueBkifflomBkidyBkidsBkiddingBkidBkickstartersBkickstarterBkickstarteirosBkicksBkickedBkickamBkickadoBkickBkiBkgBkeysBkeybindBkeyBkeqpokeBkeqBkeptBkenshiBkennedyBkenaiBkekekekekekekeBkefirBkeepsBkeepersBkeepBkdBkctBkazooieBkazioBkateBkatanaBkartBkaralhoB	karalhadaBkaralhaB
karaleooooBkaraioBkaraiBkappaB
kandidatosBkamehameB	kakakakakBkakakakaBkakakaBkagadoBkabhBkaapBkBjxjBjwBjuzB	juventudeBjutandoBjustoBjustifyB
justifiqueB
justificavBjustificativasBjustificativaBjustificariaB
justificarB	justificaBjustificBjustasB
justamenteBjustaBjustBjusBjuroBjuntosBjuntoB	juntinhosBjunteiBjunteB	juntassemBjuntasBjuntaremBjuntarBjuntandoB
juntamenteBjuntadoBjuntaBjunntooossssssssBjunkBjunioBjunhoBjungleBjunBjumsphotBjumpingBjumpedBjumpBjumentoBjulioBjulhoBjulguemBjulgueiBjulgueBjulgoBjulgarBjulgandoB
julgamentoBjuizesBjugularBjugoB
juggernautBjugarBjuelhoBjudicialBjudiarBjudeuBjudaBjubilostBjpgoBjpgarB	joysticksBjoystickBjovensBjovemBjoseBjosBjorraBjornalistasBjornalBjornaisBjornadasBjornadaBjorgeBjordanBjoqueiBjooluBjoojBjoogBjonnhyBjonBjokerBjokeBjojoBjojjBjojinBjoinhaB	joinedbleBjoinBjoiaBjohnsonBjohnnyBjohnBjogvaBjoguqieBjoguinoBjoguinhoBjoguinBjoguimBjogueteBjogueraBjoguenhoBjoguemBjogueimBjogueiBjogueBjogsBjogouB	jogotravaBjogosgratisbrasilBjogosBjogorBjogoooBjogogoooBjogodoBjogobemBjogoaBjogoBjoginhoBjoggoBjogemBjogeBjogavelBjogaveisBjogavamBjogavaBjogatividadeB	jogatinhaB	jogatinasBjogatinaBjogastaBjogassoBjogasseBjogarmosBjogariaBjogaresBjogaremBjogareiBjogaramBjogarBjogaooBjogaoBjoganoBjogangoBjogandoBjogamosBjogamBjogaloBjogadosBjogadorparaB	jogadoresBjogadoraBjogadorBjogadoBjogadasBjogadaBjogabolidadeBjogablidadeB
jogabilideBjogabilidadesBjogabilidadeBjogabalidadeBjogaaaarBjogaBjogBjoelBjobsB
jobilidadeBjobB	joaninhasBjoaBjoBjjjjjknjknjkBjinderBjigsawBjigBjgrBjgoarBjgoBjgBjewBjeuxBjetskiBjetpackBjesusBjessB	jerusalemBjeovaBjeovBjennerBjeitosBjeitoBjeitinhoBjegueiBjeejBjeansBjeBjdshfiBjazidosBjasonBjardimB	japonesesBjaponesaBjaponBjaoBjangadaBjanelasBjanelaBjaneiroBjamieBjamaisBjamBjakobsBjakeBjajaBjailsonB
jailbreackBjaiBjahBjaguatiricaBjagabilidadeBjacksparrowBjacksonBjackboxBjackalBjackBjacarBjabutiBjaBjBizzyBiziB
ixpertinhoBiwBivesBiveBivBiunesBitselfBitsBitosBitllBitisBithinkBitensBitemsBitemBitalianoBitBistallarBistalarBistalaBistBissuesBissueBisssoBissooB	issomesmoBissacBissBisoleiB	isolationBisoladasBisolaBisntBisnBislandBiscriBisaiahBisaacsBisaacBisBirritouBirritateB	irritaramBirritarB
irritantesBirritantementeB	irritanteB	irritandoBirritamBirritadoBirritaBirrirarBirresponsaveisB	irresponsBirrelevantesBirrelevanteB	irregularB
irrealistaBirrealidadeBirrealBirracionaisBirraaaaBironicoBironicBironiaBironBirmaoBirmB	iritantesBirieiBiridescentesBiriamBiriaBiresBiremosBiremBireiBirarBiraoBiranianoBiramBiradosBiradoBiraBirBipsBipBiosBiorvethBiorqueB	ionvestirBiolaBiodoBioBinvulnerabilidadeBinvulnerBinvoqueB	involvingBinvolvedBinvoluBinviteB
invitationBinvitarB	invitandoBinvistamBinvistaB	invisivelB
invisiveisB	invisibleBinvisibilidadeBinvisBinvidiaBinviabilizaBinviBinvezBinvetadoBinvestissemB
investisseBinvestirB
investindoBinvestimentosBinvestimentoB
investigarBinvestigandoBinvestigamosBinvestigadoB	investigaB
investidosB
investidorB	investidoB
investidasBinvestiBinvestemBinvestedBinvesteBinvesB	invertidaBinverteBinversoBinverossimilhanB	inventoryB
inventarioB
inventariaB
inventaramBinventarB
inventandoB	inventadoB
inventadasBinventaBinventBinvencBinvejaBinvejBinveisB	invasoresBinvasorBinvasBinvariavelmenteBinvadirBinvadingB	invadindoB	invadimosBinvadeBinvBinutilmenteBinutilizaveisB
inutilizamB	inutilizaBinutilizBinutilBinuteisBinutB
inusitadosB
inusitadasB	inundaramBinumerosBinumerasBintuitoB
intuitivosB	intuitivoB
intuitivasBintuitivamenteB	intuitivaBintuiBintrusoBintruduB
introduziuB
introduzirBintroduzindoBintroduzidosBintroduzidoBintroduzidasBintroduzidaBintroduzBintroduB
introdecksBintroB
intriganteBintrigaB
intransponBintragBintolerBintoBintimidadorB
intimidadoBintervenB
intervalosB	intervaloBinterturnosB	intertidoBintertB
interstingBinterruptingB	interrupeBinterromperB	interrogaBinterresanteBinterpretarBinterpretandoBinterpretadoBinterpretadasB
interpretaBinterpBinternetB	internadoBinternacionalBinternacionaisBinternaBinterminavelBinterminaveisBinterminB
intermacheBinterligandoB	interligaB
interioresBinteriorBintergalB
interfiramB	interfiraB
interferirBinterferenciasBinterferenciaB
interferemB	interfereB
interfarceB
interfacesB	interfaceBinterestingBinterestB
interessouB	interessoB
interessesB
interesseiB	interesseB
interessarBinteressantesBinteressanteBinteressantBinteressandoBinteressadosBinteressadoBinteressadaB	interessaBinteresanteBintereBinterativosB
interativoBinteratividadeBinterativasB
interativaB	interagirBinteragindoBinteragimosB	interagemBinterageBinteractiveBinteraBintensosBintensoB	intensiveB	intensityBintensificadosBintensificaBintensidadesBintensidadeBintenseBintensasBintensamenteBintensaBintensBintendsBintendianteBintendeuBintenderBintendedBintencionalmenteBintencionalBintencionadosBintenBintemBintelligentBinteligentesBinteligenteBinteligenciaBinteligB	intelectoBintelBinteiroBinteirasBinteirarBinteiramenteB	inteiradoBinteiraB	integrityBintegridadeBintegrauBintegrantesBintegralB	integradoB
intedianteBinteBintalaBintactosBintB	insustentB
insurgenteB
insurgencyBinsuportavelBinsuportBinsultoB
insultanteB
insultandoBinsuficientesBinsuficienteBinstrumentosBinstrucBinstruBinstituiBinstintivamenteB	instiguemB
instiganteBinstigaBinsteadBinstavelBinstatpBinstantiatedBinstanteBinstantaneamenteBinstantaneaBinstantB	instalvelBinstalouBinstaloB	installedBinstallBinstalemBinstaleiBinstalarB
instalandoBinstalamB
instaladosB
instaladorB	instaladoB	instaladaBinstalaBinstabilidadeBinstaBinstBinspirouBinspireB
inspiradosBinspiradoraB	inspiradoB
inspiradasBinspiraBinsoniaBinsolaBinsistirB
insistindoBinsistiaBinsistiBinsistemBinsistaBinsistBinsignificantesBinsignificanteB	insigniasBinsigniaBinsigneaB	insidiosoBinsideBinsetosBinsetoB
insetinhosBinserirBinseridoBinseridaBinseremBinserB
insectoidsB	inscritosBinscrevoBinscreviB	inscrevamBinscrevaBinsatisfeitoBinsatisfeitaB
insatisfatB	insatisfaBinsanosBinsanoBinsaneBinsanasBinsanamenteBinsanaBinsBinquisitionBinquisidoresBinquisiBinquantoBinovouBinovarBinovandoB
inovadorasB	inovadoraBinovadorBinovadaBinovaB	inocentesBinocenteB
innovativeBinjustosBinjustoB
injustificBinjustiBinjustasBinjustamenteBinjustaBinjuredB	injuativoB	injogavelBinjogavBinjogabilidadeBinjogBinjetoraB	injetaramBinjeBinitializationBinitialBininterruptaBinimigosBinimigoBinimigasBinimigaBinimgiosBinimaginBinigualBinicoBiniciouBinicioBinicieiBiniciavaB
iniciativaBiniciasB	iniciaremB	iniciaramBiniciarB
iniciantesB	inicianteB	iniciandoB	iniciamosBiniciamBinicialmenteB
inicializaBinicialBiniciaisB	iniciadosBiniciadoBiniciadaBiniciaBinicarBinicanteBinicalBinicBinibindoBinibidosBiniBinhaB	ingressosB	ingressarBingredientesBingraBinglesB
inglaterraBinglB	ingerivelBingameBingBinfuriatingB	infrenteiB	infrentarBinfraBinfortBinformeiBinformativoBinformationsBinformationBinformarB
informandoBinformamBinformaBinfoBinfluenciasBinfluenciarBinfluenciandoBinfluenciamBinfluenciadoraBinfluenciadoB
influenciaBinfluBinfligeB	inflictedBinflexBinfladosBinfladoBinfladaBinflBinfinityB	infinitosBinfinitoBinfinitiBinfinitewarfareB	infinitesB
infinitelyBinfiniteB	infinitasBinfinitamenteBinfinitaB
infinidadeBinfindBinfiltraBinfidelBinfezilmenteBinfestationB
infestadosB	infestadoBinfeslizmenteBinfernosBinfernoB
infernizarBinfernalB	infernaisBinferioridadeB
inferioresBinferiorBinfelizmenteBinfelizimentoB	infelizesBinfelizBinfelismenteBinfelilzmenteBinfelicidadeBinfecBinfartoBinfarteBinfantisBinfantilizaramBinfantilizarBinfantilizadoBinfantilizadaBinfantilidadeBinfantilBinfanciaBinfamyBinfBinexpressivoBinexpresivasBinexplicavelBinexperientesBinexperienteBinexistentesBinexistenteB	inexistemBinexistBinevitavelmenteB
inevitavelBinevitaveisBinevitBinesquecivelBinesquecBinesperientesBinesperadosB
inesperadoBinesperadamenteBinesBineresBinerciaBinegavelmenteBineficientesBineficienteB
ineficazesBineBinduzemBinduzB	indutoresBindustryBindustrialmenteBindustrializaB	industriaB
indulgenteBinduBindoB	individuoBindividualmenteBindividualidadeB
individualBindivBindispensavelBindiscutivelmenteBindiretamenteBindiqueiBindiqueBindiosB	indignadoBindignaBindiferenteBindiesBindieBindicoBindicioB	indicariaBindicarB	indicandoBindicamBindicadoBindicaBindiaoBindiaBindiBindgnadoBindexBindevidoB	indevidasB	indestrutBindesejBindescritivelB	indescritBindescrBindependentesBindependentementeBindependenteB	independeB	indefesosB	indefesasBindefesaBindefensBindecisBindecBindBincrivelmenteBincrivelB	incriveisB
incriveeelBincriveeeeeeeellllllllB2incriveeeeeeeeeeeeeeeeeeeeeeeeeeeeeellllllllllllllBincriveBincribleBincrementouBincrementadaB
incrediblyB
incredibleB
increasingBincrB
incorporouB
incorporarBincorporadosBincopetenteBinconvenientesBincontestavelB	incontestBincontaveisBincontBinconspBinconsistenteBinconsistentBinconclusivoBinconcebBincomvenienteBincomumBincompreensBincompletosB
incompletoB
incompleteB
incompletaBincompetentesBincompetenteBincompetenciaBincompativelBincompativeisBincompatibilidadeBincompatBincomparB	incomodouBincomodoBincomodaramB	incomodarB	incomodamB
incomodadoB
incomodadaBincomodaBinclusosBinclusoB	inclusivoB	inclusiveBinclusasBinclusBincluiuB	incluiremBincluirB	incluindoBincluidoBincluiBincluemB	includingBincludedB
inclinandoB	inclinadoB	inclinadaB
inclicavelBincitaBincioB	incinerarB	inciantesBincianteBinciaBincertoB	inceptionB
incentivouB	incentivoB
incentivarBincentivandoB	incentivaB	incapazesBincapazBincapacitandoBincapacitadoBincapacidadeBincalculBincabadoBincB
inaturavelBinatividadeB
inaproveitBinalcanBinadmissivelBinadmissB	inadimissB
inadequadaBinacreditavelmenteBinacreditavelB	inacreditBinacessiveisBinacessBinaceitavelBinaceitB
inacabadosB	inacabadoB
inacabadasBinacabadadosB	inacabadaBinB	imunidadeBimuneBimundoBimputBimpulssionarBimpulsosBimpulsoBimpulsionarBimpsB	improvisoB
improvisarBimprovementsBimprovedBimproveBimprovBimprevisBimprestavelBimpressionouBimpressionaramBimpressionarBimpressionantesBimpressionanteBimpressionamBimpressionaBimpressaBimpressBimpresionantesBimprensaBimprecisBimpotBimpostosBimpostoBimpostasB
impossivelBimpossiveisBimpossivB
impossibleBimpossibilitandoBimpossibilitadoBimpossibilitaBimpossibilidadeBimpossB	imposivelBimportoBimporteiBimporteB
importariaB
importaremBimportarBimportantesB
importanteB	importantB
importandoBimportanciaBimportamBimportaBimportB	imponenteB	implicitoBimplicaBimplementosBimplementingBimplementationsBimplementaramBimplementarBimplementandoBimplementamBimplementadosBimplementadoBimplementadasBimplementadaB
implementaB	implementBimplantaramBimplacarBimplacBimplB
impiedososBimperiosB
imperfeitoBimperdoBimperdB	imperceptB	imperadorBimperaBimpenetrBimpediuB	impediramBimpedirB	impedindoB	impedidosBimpedidoBimpediaBimpediBimpedemBimpedeB	impecavelB
impecaveisBimpecBimpeBimpassesBimpasseB	imparcialBimpactoBimpactarB
impactanteBimpactamBimpactaBimpBimoveisBimortalBimortaisBimoralBimodestoB	imodestasB	immersiveBimmediatelyBimitarBimitandoBimitaBimigraBimgurBimfluenciarBimerssBimersoB	imersivosBimersivoB	imersivasBimersivaBimersBimergirBimensosBimensoBimensidBimensasBimensamenteBimensaBimediatoBimediatamenteBimeBimcompativeisBimcomparavelBimbecisBimbecilidadesBimbecilidadeBimbecilBimbecB	imbativelBimaginouBimaginoBimaginemBimagineiBimagineB	imaginavaB
imaginariaBimaginarB
imaginandoBimaginamB	imaginadoBimaginaBimaginBimagesBimagensBimagemBimBilusBiluminarB
iluminadasBiluminaBiludiuBiludirBiludidosB
iludidassoBiludaBilluminatiiiiiiiB
illuminatiBillhaBillegalBillB	ilimitadoB	ilimitadaBilhasBilhaBilegaisBilBiklgtoBikBijogBiiiBiiBihuhuhBihB
igualzinhoB
igualmenteBigualitB	igualaramBigualarBigualaBigualBiguaisBiguaalB	igrejinhaBigrejasBigrejaBigorBignorouBignoroBignoreiB	ignoravamBignoravaB	ignoraremBignorarB
ignorantesB	ignorandoBignoramBignoradoBignoradaBignoraBignorBignBigBifBidtechBidososBidosoBidoBidkB	idioticesBidioticeBidiotasBidiotaBidiomasBidiomaBidesBidependendoB
ideologiasBideologiacasB	ideologiaBidentityBidentificouB
identificoBidentificaremBidentificarB
identificaB
identidadeBidenticoBideiasBideiaBideasB
idealizadoBidealBideaBidasBidadesBidadeBidaBidBiconsBiconicosBiconesBiconeBicognitaBicoBichtBicewindBicefuseBicasBicBibericaBiberianBiberiaBibBiasBianBiamBiaBiBhzBhypouBhyperxBhyperionBhyperBhypedBhypeBhypadoBhyfxgfsgrdfshsdrfhsdrhBhyderBhwesBhvaqgB
huuuuuuugeB	huuuuuugeBhurtsBhurtBhuntressBhuntingBhuntersBhunterBhuntedBhuntBhungryBhungBhunfBhundredBhumorizadosB	humoradosBhumoradoBhumoradaBhumorB
humilhadosB	humilhadoBhumilhaBhumildeBhumbleBhumanosBhumanoBhumanlyB	humankindBhumanizandoB
humanidadeBhumanasBhumanaBhumanBhumamBhumBhulkBhuhBhugeBhugB
huehuelandB	huehuehueBhuehueBhudsBhudB
huahuahuahB	huaheuhaeBhttpsBhttpBhtmlBhsBhrsBhraBhrBhpBhoyBhowtizerBhoweverBhowBhovueBhouvirBhousesBhouseBhoursB	hourglassBhourBhotmailBhotlineBhotfixBhotBhostsBhostisBhostilBhosteiaB	hostearemBhostearB	hosteandoBhosteamB	hosteadosBhostB	hospitalsB
hospitalarBhospitalBhorrvelB	horrrivelBhorrovelBhorrosoooooooooooooooB
horrorososB	horrorosoB
horrorosasB	horrorosaBhorroresBhorrorBhorrivelmenteB7horrivellllllllllllllllllllllllllllllllllllllllllllllllBhorrivelB	horriveisBhorrivBhorripilaridadeBhorripilanteBhorriblyBhorribleB	horrendosBhorrendoBhorrendaBhorraBhorrBhororresBhornetB	horizonteB
horizontalBhorizonBhorivelBhorinhasBhordeBhordasBhordaBhorasBhorariosBhoraaaaaaaaaaBhoraBhorBhoplitasBhoplitaBhopingBhopeBhooksBhookedBhookBhonrosaBhonrarBhonraBhoneyBhonestosBhonestoBhonestlyBhonestidadeBhonestamenteBhonestaBhonestBhonBhomossexualismoB	homofobiaBhomofBhomensB
homenagensB	homenagemBhomemBhomeBhomBholywoodianosBholsterB	hollywoodB
hollownestB6hollowhollowhollowhollowhollowhollowhollowhollowhollowB*hollowhollowhollowhollowhollowhollowhollowBhollowBholeBhojeBhoiBhobbiesBhobbieBhoardingBhoarderBhoBhnyjB&hmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmBhmmmmmBhmmmmBhmmBhmBhlBhkeyBhkBhjogoBhjBhiveBhitsBhitlerBhitkillBhitcylindersBhitboxsBhitboxesBhitboxBhitaBhitBhistoryBhistorinhasB
historinhaB
historicalB	historicaB	historiasBhistoriaBhistiraBhistBhisB	hipotesesB	hipogrifoBhipnoseBhiperBhipeBhipadoBhipBhindiBhimselfBhimalaiaBhimBhillbilyB	hillbillyBhillBhilBhigthBhigieneBhightlyB
highschoolBhighlyBhigherBhighBhidroelBhideBhiddenBhiatosBhhhBhgfaBhfgewjhfkoejwlkBheyBhexagonoB	hexagonalBhexB	heuehueheBheteroBheswBhestonBhesitemBhesiteBhesitarB	hesitanteBhersheysBherosBheroisBheroinBheroiBhermanosBhereBherbalistasB
herbalistaBherbBherBhentaiBhentBhenryBhendrixBhelpsBhelpBhellyeahB
hellwalkerBhellBhelicopteroB
helicopterBhelicBheinBheimBheightB
heheheheheBheheheheehehBheheheBheheBhehBheftyBheelB	hediondasBheckBhebreusBheavyB
heartstoneBheartsBhearthstoneBheartBheardBhearBhealthyBhealthBhealingBhealBheaiueuiaeaeBheadshotBheadsetB	headachesBheadBheBhdtfBhdrBhddsBhdBhcxbuyhdgvbcB	hbbfgfbfgBhavingBhaviamBhaviaBhavesBhaveriaBhaverestBhavendoBhaveBhavanBhavBhauhjahajuhajhauhahjuBhauahuaBhatsuneBhatsBhatersBhaterBhatedBhateBhatchetsBhatchBhatBhastaBhasntBhasB	harvestarBharryBharperBharpaB
harmoniosaBharewoodB	hardwaresBhardwareBhardlyBhardicBhardestBharderBhardenB	hardcoresBhardcoreBhardcodeBhardBhappyBhappensBhappenedBhappenBhansBhangsBhangBhandsBhandBhamanchiBhamachiBhaloB
hallownestBhallowenB	halloweenBhallBhalflifeBhalfBhakerBhairBhahhaBhahahhahahahBhahahahahhahaB	hahahahahBhahahahaBhahahahBhahahaBhahaBhagBhaddonfieldBhaddadBhadBhackssBhacksB
hacknslashBhackingBhackesBhackersBhackerBhackedBhackearBhackeadoBhackeadaBhackBhabituarB
habituadosB
habitantesB	habitanteBhabitamB	habitadasB	habiliteiBhabilitaramB	habilitarB
habilitadoB
habilitadaBhabilitaBhabilidososBhabilidadesB
habilidadeB
haahahhahaBhaaaaaaaaaaaaaaaaBhaBhBgymsBgxpgfBgwentBguzzlersBguysssBguysBguyBgurizadaB
guriazinhaBguriBgunsBgunplayBgungeonBgunBgumesBguitarraB	guindasteBguinchamentoBguildaBguideBguiasBguiarBguiandoBguiadosBguiaBgugmpqjoBguessB
guerreirosB	guerreiroB
guerreandoBguerrasBguerraBgueimiBgueimeBgueiBgudiBgudeBgudBguasBguardiBguardemBguardeBguardasBguardarB	guardandoBguardamBguardadoB	guardadasBguardaB	guarantedBguandoB
guacameleeBguaBgtxBgtaBgtBgruposBgrupoBgrunidosB	grunhidosBgrudamBgrudadasBgrudaBgrrrrrrrBgrrrrrBgrowBgroupsBgroupBgroundB	grotescosBgrotescoBgrotescaBgritosBgritoBgritariaBgritaremBgritarB	gritantesBgritanteBgritandoBgritaBgripBgringosBgringoBgringaBgrindingBgrindigBgrindarB	grindandoBgrindBgrimmBgrimasBgrimaBgrilosBgriloBgrifosBgrifoBgrifarBgridBgrficosBgreveBgrelhaBgregosBgreetB
greenlightBgreenBgreatestBgreatBgreaseBgrayBgravidezBgravetosBgravesBgraveBgravarBgravandoBgravamBgravaBgravBgrausBgrauB	gratuitosBgratuitoB	gratuitasBgratuitamenteBgratuitaBgratuidaBgratuBgratoBgratisBgratificanteBgratidBgratefulBgratBgrassBgraphicsB	graphicalBgraphicBgraphB
granulososBgranulaBgrantsBgranitoBgraninhaBgrandissB	grandiosoBgrandiosidadeB
grandiosasB	grandiosaB	grandinhoBgrandesBgrandementeBgrandeBgrandBgranadasBgranadaBgranaB
gramaticalBgramasBgramadoBgramaBgraicosBgrafosBgrafoB
grafificosBgraficosBgraficoBgraficasBgraficamenteBgraficaB	grafaicosBgrafBgradeBgradativamenteBgraceBgracaBgrabrielBgrabbingBgrabBgraBgrBgqBgpuBgpsBgovernosBgovernoBgovernarBgotyBgottaBgotaBgotBgostouBgostosoB
gostosinhoB
gostosinhaBgostosaBgostosBgostondoBgostoBgostinhoBgostemBgosteiBgosteB	gostaveisBgostavamBgostavaB	gostariamBgostariaBgostariBgostaremBgostaramBgostarBgostandoBgostamosBgostamBgostadoBgostaBgorgoBgorfarBgoreBgordonBgordoBgordBgoraBgooooooooooooooooooooooodB	gooooddddBgooodBgoogleBgoogBgoofBgoodsBgoodbyeBgoodBgonosBgonoBgonnaBgoneB	golpinhosBgolpesBgolpeiaBgolpeBgoldsB	goldeneyeBgoldenBgoldBgokuBgojoBgoingBgogBgoesBgoelaBgodsBgodhomeBgoddamBgodBgoateiBgoatBgoalsBgoalBgoBgnuBgntBgnosBgnomoBgnoBgniasBgniaBgmodBgmaBgmBglrBgloryBgloriosoBglobalmenteBglobalBglobaisBglitchyBglitchsB	glitchingBglitchesBglitchBglidingBgliderBglideB
glatiatoryBgladusBgladosBglBgivingBgivesBgiveBgitBgisticaBgiroBgirlBgirarBgirandoB	giradinhaBgiradaBgiraBgiosBgioBginoBginaBginBgimmicsBgimmicksBgimmickBgilbertBgigasBgigantescosB
gigantescoBgigantescasBgigantescamenteB
gigantescaBgigantesBgiganteBgigaBgiftBgifsBgifBgicosBgicoBgicasBgicaBgibiB	giazinhasBgiasBgiantsBgiantesBgiaBgiBghzBghostsB	ghostfaceBghostBggwpBggezBggaleraBggBgfhBgettingBgetsBgetB
gesticulamBgestBgerirBgeridoB	gerenciarBgerenciamentoBgerenciadosBgerenciadorB
gerenciadoB
gerenciadaBgeremBgerarBgerandoBgeraltB
geralmenteBgeraldoBgeraldaoBgeraldBgeralBgeraisBgeradosB	geradoresBgeradorBgeradoBgeradasBgeradaBgeraB	geografiaBgeogrBgeoBgenuinamenteB	gentilezaBgentilBgenteBgensBgenrushBgenreBgenocidaBgenocBgeniusBgenioBgenialidadeBgenialBgenerosoBgeneroBgenericoBgenericaBgenericB	generiacaB
generatorsBgeneralBgenasBgenaBgenBgemendoBgemasBgemaBgemBgeloB
geladeriasB	geladeiraBgeitoBgeisBgeigerBgeforceBgeeknessBgeekBgeasBgearsBgearboxBgearBgdprBgddrBgbvyhuBgbsBgbramBgbBgaymodBgayBgaveBgaussBgaulleBgatosBgatoB	gatheringBgatesB
gatekeeperBgateBgastouBgastosBgastoBgastesBgastenosBgastemBgasteiBgasteBgastasBgastariaBgastaremBgastaramBgastarBgastanteBgastandoBgastamBgastadoBgastaBgasolinaBgasBgaryB	garrysmodBgarrysBgarryBgarregaBgarrafaBgarraBgarotoB	garotinhaBgarotaB	gargarejoBgargantaBgargalhandoB
gargalhadaBgarfosBgarfoBgarfieldBgardenBgarboBgarantoBgarantiuBgarantirB
garantindoB	garantidoB
garantidasBgarantidamenteB	garantidaB	garantiasBgarantiaBgarantemBgaranteBgarantaBgaraiuuuuuuuuuBgaragensBgaragemBgaraBgapBgankBganhouBganhosBganhoBganhemBganheiBganheBganhavaBganhasBganhariaBganharemBganharaBganharBganhandoBganhamosBganhamBganhadoBganhaBganhBgangueBgangBganersBgandhiBgandaBganchosBganchoBgananciososBgananciaBganBgamingBgamilB	gameworldBgamesBgamertvBgamersB	gameristaBgamerB	gameplaysBgameplayB	gamepediaBgamepassBgamepalyBgamepadB	gamemodesBgamemodeBgamejoltBgamedataprimalBgamedasBgamebreakingBgameB
gambozinosB
gambiarrasB	gambiarraBgamaBgamBgaloparB
gallacticaBgalinhasBgalinhaBgalhosBgalhofaBgalerisBgaleriaBgaleraBgaleBgalaxiasBgalasBgalaBgalBgainBgaigeBgaidenBgaharBgahandoBgaemBgaelraBgadoBgadBgableB	gabinetesBgabineteBgabesBgabeBgBfzrBfzeBfxBfuzisBfuzilaBfuzilBfuuuuukjBfuuckBfuturosBfuturoBfuturisticoB
futuristicB
futuristasB	futuristaB	futurismoBfuturesBfutureBfuturasBfuturamenteBfuturaBfuturBfutebolBfusB	furtunatoBfurtivosBfurtividadeBfurtivasBfurtherBfurtadoBfurouBfurosBfuriosoBfuriaBfuradosBfuradaBfuracBfunsBfunnyBfunniestBfunnierBfunkBfunfaBfuneralBfundosBfundoBfundiBfundeBfundarBfundamentosB
fundamentoBfundamentariaBfundamentalmenteBfundamentalBfundadorBfundaBfunctionBfuncoesBfunckB	funcionouBfuncionoBfuncioneBfuncionavamB
funcionavaBfuncionassemBfuncionasseBfuncionarioBfuncionariamBfuncionariaBfuncionaremBfuncionaramB	funcionarBfuncionandoBfuncionamentoB	funcionamBfuncionalidadesBfuncionalidadeB	funcionalB
funcionaisBfuncionaBfuncionBfuncinaBfunBfumouBfumoBfumeBfumaramBfumarBfumanteBfumandoBfumacearBfumaBfumBfullyB
fullscreenB
fullscreemBfullofBfullhdBfullBfuleraBfulanoBfujindoBfujamBfujaBfuizBfugiuB	fugitivosB	fugitivesBfugiremBfugirBfugindoBfugidoBfugeBfugaBfufuBfudidosBfudidoBfudidaBfudidBfudiBfudeuBfuderamBfuderBfudendoBfudendaBfudenB	fudekkkkkBfudeBfudBfuckkingBfuckinggBfuckingBfuckinBfuckedBfuckBfucionaBfuceiBfucBfubarBfuBftlBfsfdeeBfsBfrydayBfrutasBfrustrouBfrustreiBfrustrationBfrustrarBfrustrantesB
frustranteB
frustrandoB
frustramosBfrustramB
frustradosB	frustradoB
frustradasBfrustradamenteB	frustradaBfrustraBfrusteB
frustatingBfrustarB
frustantesB	frustanteB	frustandoBfrustamBfrustadoBfrustaB	fruitcakeBfruitBfrtauraBfrozenBfrotasBfrotaB	frostpunkBfrorestaB	frontlineBfrontierB
fronteirasB	fronteiraBfrontBfromsoftwareBfromBfrivBfritoBfrioBfriendsBfriendlyBfriendBfridayBfriaBfrezzesBfretesBfreteB	frescurasBfrescuraBfrescoB
frequentlyB
frequentesBfrequentementeB	frequenteB
frequenciaBfrequBfrenzyBfrenteB	freneticoBfrenesiBfrenchBfrenBfreioBfreiandoBfreguB	freezingsBfreezingBfreezesBfreezerBfreezeB	freestyleB	freeportsBfreeportBfreemanBfreelyBfreelookBfreeeBfreedieBfreedBfreeB	fredericoB	frederickBfreddyBfredBfreckingBfrearBfreakingBfreakinBfraudeBfraudBfrasesBfraseBfraquissimoB	fraquinhoB	fraquezasBfraquB
franquinhoB	franquiasBfranquiaB	franchiseB	francesesBfrancamenteBfrancBfranBframesB
frameratesB	framerateBframeBfralhaB	fragmentsB
fragmentosB	fragmentoBfragmentadoBfragmentadaBfragBfracosBfracoB	fracassosBfracassoB	fracassarB
fracassadoBfracasBfracaBfraBfrBfpwejfwewwfwwBfpsBfovBfourthB	fourhorseBfourBfountainBfoundBfotosBfotografiasB
fotografiaBfotoBfotBfossemosBforzaBforwardBforunsBforumsBforumBfortunasBfortunaBfortressBfortniteB	fortmenteBfortissimosBfortissimamenteB
fortimenteB
fortificarB	fortificaBforthBfortesB
fortementeBforteB
fortalezasBfortalecidaBfortBfornoBfornicarBfornecimentoB
fornecidosB	fornecidoB
fornecidasBforneciaBfornecerBfornecemBforneceBforneBformosoB
forminanteBformigasBformidBformerBformattinghelpBformatoBformateiBformatarB	formatadoBformataBformatBformasB	formartarBformarBformandoBformamBformaisBformadaBformaBforgripBforgotB
forgetableBforgetBforfunBforeverBforestB	foregripsBforegripBfordBforcingBforcexdsBforcesBforcerespawnBforcedBforceBfoquemBfoqueiBfoqueBfoodBfontesBfonteBfoneBfondaBfomeB	followingBfollowBfolkBfolhasBfolhaBfolgaBfolegoBfolderB	folcloresBfoiteBfoguetesBfogueteB	fogueirasBfogueiraBfogoBfogemBfogeBfogBfofosBfofocaBfofoBfofaBfodonaBfodoesBfodidaBfodiBfodfaBfodeuBfoderosaBfoderiaBfoderemBfoderBfodendoBfodemBfodelBfodeB	fodasticoB	fodasticaBfodasssBfodasseBfodaseBfodasBfodaaaaaaaaaaaaaaaBfodaaaaaaaaaaaaaBfodaaaaaaaaB
fodaaaaaaaBfodaaaaBfodaaaBfodaaBfodaBfodBfocusedBfocusBfocoBfockinBfocassemBfocariamBfocaremBfocarBfocandoBfocamBfocadosB	focadoresBfocadoBfocadaBfocaBfobosBfoBfnafBfmlBflyBflwzBflwsBflwBfluxoBflutuarB	flutuanteB	flutuandoBflutuamBflutuaBflungBfluidoBfluidezBfluidamenteBfluidaBfluiBfluBfloydBflowB	florestasB	florestalB
florestaisBflorestaBfloresBflorastBfloraBflopparBflopouBflopBfloorBfloatingBflightBfliesBflexadaBflexaBflertaBflemishBflechasBflechaBflawsBflavinhoBflautaBflatBflaskBflashlightsB
flashlightBflashBflascoBflareBflanqueamentoBflankearBflankBflamengoBflagBflBfizessemBfizesseBfizeseBfizeroBfizeremBfizeramBfizerBfizemosBfizBfixosBfixolasBfixingBfixesBfixedBfixeBfixasBfixaremBfixarBfixamBfixaBfixBfivelaBfiuBfitsBfitBfistaB
fissuradosB	fissuradoBfisicosBfisicoBfisicasBfisicamenteBfisicaBfishingBfishBfisBfirstlyBfirstB
firmementeBfireflyBfiredBfireaxisBfireBfiraxisBfiquemBfiqueiBfiqueBfiqeiBfiosBfionaBfioBfinsBfinoBfinjaBfinitosB	finishingBfinishedBfinishBfingiremBfingirBfingindoBfingimosBfingemBfinesBfineBfindingBfindB	finamenteB
finalmenteBfinallyB	finalizeiBfinalizeB	finalizarBfinalizandoB
finalizadoB
finalizadaBfinalizaBfinaleBfinalBfinaisBfinaBfimBfiltrosBfiltroB	filosofiaBfiloB	filmmakerBfilminhoBfilmezinhosB
filmezinhoBfilmesBfilmeBfilledBfillBfilipeBfilhosBfilhoB	filhinhasBfilhasBfilhaBfilhBfilesBfilemsBfiledetailsBfileBfilasBfilaBfilBfikeiBfiiixeBfiiiixeBfihB
figureheadBfigurasB
figurantesBfiguraBfightsBfightingBfighterBfightBfifasBfifaBfiestaBfielBfieisBfidelizB
fidelidadeBfidBficticioBficqueBficouBficosBficoBficlBficitBficioBficilB	ficheirosBficheiroBfichasBfichaB
ficcionaisBficavamBficavaBficasseBficasBficariaBficaresBficaremBficareiBficaramBficaraBficarBficandoBficamosBficamBficadoB	ficaadicaBficaBficBfibrasBfibraBfiascosBfiascoBfiaBfhBffbbgBfezesBfezBfewBfevBfeuidaB
feudalismoBfetulhoBfetosB
fetichistaBfestaBfestBferverBferveB	ferroviasBferroviaBferroviBferrouBferroB	ferreirosBferreiroBferraramBferrarBferrandoBferramentasB
ferramentaBferradoBferraBferrB	ferociousB
ferimentosBferidosBferidoBferidasBferidaBferiadoBferasBferadoBferaBfenriB	fenomenalB
fenomenaisBfendaBfemininoB	femininasBfemininaBfellingBfellasBfellB
felizmenteBfelizesBfelizBfelipeB
felicidadeBfeitosBfeitoBfeitiBfeitasBfeitaBfeiraBfeiosBfeioBfeintBfeijoadaBfeijBfeiasBfeiaBfeelsBfeelingsBfeelingBfeelBfeedbackBfedidaBfedeBfechouBfechoBfecheiBfecheBfechavaBfecharBfechandoBfechamBfechadosBfechadoB
fechadinhoBfechadasBfechadaBfechaBfebreBfeaturesBfeaturedBfeatureBfeatBfearBfdsnfhcdhbsuhyfcBfdsB	fdrgzvhnjBfdpB	fchuuiaddBfbxqtBfazrBfaziamBfaziaBfazesBfazermosBfazeremBfazerBfazendoBfazendeirosB
fazendeiroBfazendasBfazendaBfazemosBfazemBfazeBfazB	faxineiroB	favouriteBfavourB	favoritosBfavoritoBfavoriteB	favoritasBfavoritadosBfavoritaBfavoredBfavorecidosB
favorecidoBfavoreceremBfavorecendoB	favorecemBfavoreceBfavorBfavelaBfavBfaunaBfaultBfaudioBfaturarBfatuaisBfatosBfatoresBfatorBfatoBfatiaB
fatalmenteB	fatalitysBfatalBfataisBfatBfasterBfastBfasssssssdsadasBfassoBfassaBfasquiaBfasoBfasgoBfasesBfaserBfasendoBfaseB
fascinanteBfascinamB	fascinadoBfascBfasBfartoBfarolBfarofaBfaroesteBfarmingBfarmiBfarmesBfarmersBfarmarBfarmandoBfarmamBfarmaBfarmBfarinhaBfariamBfariaBfarewellBfareiBfardosBfarcryBfaralamBfaraBfarBfaquinhaBfaqBfapBfanzocasB
fantaxtikiB
fantatiscoBfantasyBfantasticosB
fantasticoB
fantasticaB	fantasticBfantasmaB
fantasiosoBfantasiaBfantBfansBfanquiaBfanfarrBfanboysBfanbaseBfanartsBfanBfamososBfamosoB
famosinhasB	famosinhaBfamosasBfamosaBfamintosBfamintoBfamintaBfamiliarizarBfamiliarizadosB
familiaresBfamiliarBfamiliaBfamilhiaBfameBfamaBfamBfaltouBfaltoBfalteBfaltavaBfaltasBfaltaramBfaltarBfaltandoBfaltamBfaltadoBfaltaBfalsoBfalsasBfalsaBfalouBfalosBfaloBfallsBfalloutBfallBfaliuBfaliramBfalirBfalidoBfaliBfalhouBfalhosBfalhoBfalhavamB	falhassemBfalhasseBfalhasBfalharBfalhanBfalhamBfalhaBfalenciaBfalemBfaleiBfalecidoBfaleBfalavamBfalavaBfalasseBfalasBfalarmosBfalaremBfalaramBfalarBfalantesBfalandoBfalamBfaladosBfaladoBfaladaBfalaBfalBfakingBfakeBfaixasBfaixaBfaisBfairBfailureBfailsBfailedBfailBfaggetBfadigaBfadeBfadasB	faculdadeBfactoryBfactorioBfactorBfactoBfactBfacoBfaclBfacioBfacingBfacilmentesB
facilmenteB	facilitemBfacilitaramB	facilitarBfacilitandoB	facilitamBfacilitaB
facilidadeBfacilBfacialBfaciaisBfacescanBfacesBfaceisBfacecampingBfacecampBfacebookBfaceBfaccBfacasBfacamBfacadaBfacaBfacBfabulosoBfabricarBfabricantesB
fabricanteBfabricaBfaaaaazBfaBfBezBeyeBexusteBexuberantesB
exuberanteBexuberBextresseB	extressarB
extressadoBextremoBextremlyBextremidadesB	extremelyBextremeBextremasB
extremanteBextremamentoBextremamentesBextremamenteBextremamemteBextremamanteB	extremalyBextremaBextravaganzaBextrasB
extrapoleiBextraordinarioBextraordinariamenteB
extraordinBextraodinarioB
extramenteBextramementeBextramamentesBextramamenteBextrairBextraBextrB	extorquirBextintosBexternosBexternoBexternasBexternamenteB
exterminarBexterminadorBexteriorBextensoBextensasBextensaBextensBextenBexpulsouBexpulsoB
expulsaramBexpulsarBexpulsaB
exprimentoB	expressarBexpressBexpostoBexpostasBexpostaB	exportadaBexporBexponencialmenteBexponencialBexpondoB	explosoesB
explosivosB
explosivesB	explosivaBexplosBexplorouBexploreiBexploreBexplorarB
explorandoBexploramB
exploradosBexploradoresB
exploradorB	exploradoB
exploradasB	exploradaBexploraBexploitsB	exploitesB	exploiterBexploitBexplodiuBexplodirB
explodindoBexplodemBexplodeB	expliqueiBexpliqueBexplicouBexplicoB
explicitosBexplicativosBexplicativoB
explicareiB
explicaramBexplicarB
explicandoBexplicamB	explicadoB
explicadasBexplicaBexplainsBexplainBexplBexpirouB
expetativaBexpetacularBexpertBexperimentoBexperimenteiBexperimenteBexperimentarBexperimentadoBexperimentaB
experimentBexperientesB
experienteBexperiencieiBexperiencieBexperienciasBexperienciarBexperiencialBexperienciaBexperiencedB
experienceBexperiBexperenciarBexperB	expensiveBexpectedBexpectativasBexpectativaBexpectBexpecialmenteBexpasionismBexpasionB	expansoesB	expansionBexpansBexpandiuBexpandirB
expandindoB	expandidoB	expandidaBexpandeBexpandBexpanBexpBexorbitantesBexorbitanteBexmpBexixteBexitoBexitingBexiteiBexitedBexiteBexitBexistiuB
existissemB	existisseB	existiresB	existiremBexistiraBexistirBexistingB	existindoBexistidoBexistiamBexistiaBexistiBexisterB
existentesB	existenteBexistentBexistencialismoBexistencialB
existenciaBexistemBexistedBexisteBexistaBexistBexisitiuBeximirBexijamBexigisseBexigiremBexigirBexigindoBexigidoBexigiaBexigenteBexigemBexigeBexibiuBexibirBexibindoBexibiaBexertoBexercizeBexercitoB
exerciciosBexercBexeplificandoB
exepcionalBexepcionaisBexemplosBexemploBexemplificarBexempleBexemplarBexembloB	exellenteBexellentB	exelentesBexelenteB
executivosB	executionBexecutedBexecutarB
executadosB	executadoB
executadasB	executadaB
executableBexecutaBexecuBexecelentesB
execelenteBexeBexcuseBexcusasB
excrementoB
exclusivosB	exclusivoBexclusividadeBexclusivelyB	exclusiveB
exclusivasBexclusivamenteB	exclusivaB	excluiremB	excluiramBexcluirB	excluindoBexcluidoBexcluiBexcluBexcitingBexcitedboldnuggetsritzmitzB	excitanteBexcetoBexcessoB
excessivosB	excessivoB	excessivaBexcessB	exceptionBexceptBexcepicionalBexcepcionalmenteBexcepcionalBexcepcionaisB	excellentB
excelentesB	excelenteBexcelentBexcelBexceededB	excedendoBexcedeBexceBexaustoBexaustBexatoBexatasB
exatamenteBexataBexampleBexalteiBexagerouBexagerosBexageroB
exagerandoB
exageradosB
exageradasBexageradamenteB	exageradaBexageraBexageiroBexactlyBexactBexBewuB	ewqasdadeBevuluidoBevuluBevolvedBevolveB	evolutionBevoluiuB	evoluiremBevoluirB	evoluindoBevoluiBevoluemBevoluaBevoluBevocaBevoBevitemBeviteBevitariaBevitarBevitandoBevitadaBevitaBevillBevilB	evidentesBevidenteB	evidenciaBevidenceBevidB
everywhereB	everytimeB
everythingBeveryoneB	everybodyBeveryB	everthingBeverrrB
everithingBeverBeventualmenteBeventosBeventoBeventBevenBevemBevaporouBevaporedBevandroBevaluateBevacuarBevaB	eurotruckBeurosBeuropeusB	europeiasBeuropeBeuropaBeuroBeurekasBeurekaBeulaB-euhewuojrewjioprewajiorejnkuhrewhnkujreqdnjlvB<euhewuojrewjioprewajiorejnkuhrewhnkujreqdnjlpedplqkroiktweplBeudaBeubtenhoB	euadrandoBeuaBetsmpBetsBetoxicosBethanBetgBeternosBeternoBeternityBeternidadesB
eternidadeBeternasBeternamenteBeternaBetcBetapasBetapaBetaBetBesztaBesutaBestusBestuproB
estupradorB	estupidosBestupidoB	estupidasBestupidamenteB	estupendaBestudosBestudoB
estudiososBestudioBestudarB	estudandoB
estruturasB
estruturarBestruturadoBestruturadaB	estruturaBestrupaBestrumeB
estrovengaB	estressouB	estresseiBestresseB	estressarBestressantesBestressantequeBestressanteBestressandoB	estressamB
estressadoBestressaBestremamenteB
estrelinhaB	estrelatoBestrelasBestrelaBestreitamenteBestreiaBestrategicosBestrategicoBestrategicamenteBestrategiasB
estrategiaBestratB	estranhosBestranhoB	estranheiB	estranhasB	estranharBestranhamenteBestranhaBestrangeirosBestrangeiroB	estraguemBestragouBestragosB
estragavamB
estragariaB
estragaremB
estragaramBestragarB
estragandoBestragamB
estragadosB	estragadoB
estragadasB	estragadaBestragaB
estradeiroBestradasBestradaBestrBestourouBestouroB
estourandoBestornoBestoriaBestoquesBestonteanteBestomagoBestomBestocarBestocadaBestoBestiqueBestimulariamBestimulanteB	estimulamB
estimuladoB
estimuladaBestimulaBestimoBestimamBestimaBestilosaBestilosBestiloBestherBesterB	estendidoBestendeuB
estenderiaBestenderB
estendendoBesteirasBestaveisB	estavamosBestavBestatsticasBestatBestariaBestaremBestareiBestaraoBestaramBestaraBestaoB
estantaneoBestanhoBestandoB	estampadoBestaminaBestamBestagnarB	estagnadoBestagiosBestagioBestagiBestadunidenseBestadosBestadoB	estadistaB
estacionarBestacionamentoB	estacinarB
estabilizeBestabilizarB
estabilizaBestabilidadeBestabelicidoBestabelecidosBestabelecidoBestabelecidaBestabeleceuBestabelecerB
estabanadaBestBessseBesssaBessoB	essentialB	essenciasBessencialmenteB	essencialB
essenciaisBessenciaBessaaBessBesquivarB
esquivandoBesquivaB
esquisitosB	esquisitoB
esquisitasB	esquisitaBesquioBesquinasBesquinaBesquerdoBesquerdaBesquenteB	esquentarBesquemasBesquemaBesquecimentoB
esquecidosB	esquecidoB	esquecidaBesqueciaBesqueciBesqueceuB
esqueceramBesquecerB
esquecendoB
esquecemosBesqueceBesquecamBesquecBesqueBesquartejarB	esquadraoBesquadrBesqB	espreitamB
espreitadoBespotadoBesposaB	esportivoB
esportistaBesportesBesporteBesporBesponjasBesponjarBesponjaBesplorarB
esplorandoBesploraBesplodirB	espliquemB
esplicandoB	esplendorBesplB
espiritualB	espiritosBespiritoBespiritaBespiradoB
espionagemBespioesBespinhosBespingardasB
espingardaB	espinafreBespetosBespetoBespetacularmenteBespetacularesBespetacularBespetBespertoB
espertinhaBespertasB	espertalhBespertaBesperouBesperoB
espermatozBesperirtiualBesperienciaBesperialmenteBesperiBesperemBespereiBespereB	esperavamBesperavaB	esperasseBesperaremosB	esperaremB	esperaramBesperarB	esperandoBesperanB	esperamosBesperamBesperadoB	esperadasBesperadaBesperaceBesperaBespelhoBespeculandoBespeculaBespectroBespectativasBespectativaB
espectadorBespecificosB
especificoBespecificasBespecificandoB
especificaBespecifBespeciesBespecieBespeciasBespecialmenteB
especiallyBespecializarBespecializadasBespecializadaBespecializaBespecialistasBespecialistaBespecialidadeBespecialB	especiaisBespecBespeararBespatifeB
espartanosBespantoBespantarBespantalhosBespantaBespanholBespanhaBespancarB	espancadoB
espalharemB
espalhandoB
espalhadosB	espalhadoB
espalhadasB	espalhadaBespadasB	espadadasB
espadachimBespadaBespacoBespacialB	espaciaisBespaBespBesouBesmoBesmeraB
esmagadoraB	esmagadorBesmagadoBeslquearBesguichoB	esgueirarBesgoteB	esgotavamBesgotarBesgotadoBesgotaBesforcoBesforceiB
esforcamosBesforBesfolarBesfarrapadaB	esfaqueiaBesfBesesB
esepcionalBeseaBesdrBescutoBescutemBescuteBescutarB	escutandoB	escutadosBescutadoBescutaBescurosBescuroBescuridB	escurecerBescureceBescurasBescuraB	esculturaBescudosBescudoBescrotosBescrotoBescrotaBescrotBescritosB
escritoresBescritoBescritasBescritaBescritBescrevoBescreviBescreveuBescreverB
escrevendoBescreveBescrevamBescrevaBescravoB
escravizarBescravidBescovarB
escotilhasB	escotilhaBescorregadiosB	escorregaB	escorandoBescopetaB
escondidosB	escondidoB
escondidasB	escondidaBescondiaBescondeuBesconderB
escondendoBescondemBescondeBescondaB	escombrosBescombroBescoltaBescolhoB
escolhidosB	escolhidoB
escolhidasB	escolhidaBescolhiaBescolhiBescolheuB
escolhesseB
escolheriaBescolheremosBescolherB
escolhendoB
escolhemosBescolhemBescolheBescolhasBescolhamBescolhaBescolaBescoderBescoasBesclarecidoBesclareBesclanomanetoBescessoBescavloBescassosBescassoBescassezBescassesBescapesBescapeBescapatoriaBescapatB	escaparemBescaparB	escapandoBescapaBescaniaBescandinavaBescandinBescandalosamenteBescancaradaBescamboBescalpelandoBescalonandoBescalonamentoBescalasBescalarB	escalandoBescaladaBescalaBescadasBescadaB
escabrosasBescaBescBesbanjamBesbaldarBesBervasBerupBersseBerrroBerrouBerrosBerrorsBerrorBerrodesconhecidoBerroB
errialistaBerrarBerrantesBerrandoBerradosBerradoBerradasBerradaBerraBerrBerorBerogeBeridiumBerickBerguerBerasBeramosBerBequivaleriaBequivalentesBequivalenteBequipsBequippedB	equipmentBequipesBequipeBequipasBequiparaBequiparBequipamentosBequipamentoB	equipadosBequipadoB	equipadasBequipaBequipB
equilibrioBequilibridoBequilibrariaB
equilibrarBequilibradosBequilibradoBequilibradasBequilibradaBequilBequalBequadorBequBepocaBepisodioBepisodesBepisodeBepisBepilepsyB	epilepsiaBepigBepicoBepicBeperoBepegandoBepaBepBeotechBeosBeocntrarBeoBenzoBenxutoB	enxurradaBenxergarBenxergamBenxergBenxeB	envolvingBenvolvimentoB
envolvidosB	envolvidoB	envolvidaBenvolviaBenvolveuB
envolveramBenvolverBenvolventesB
envolventeB
envolvendoBenvolvemBenvolveBenvoltoB	envisivelBenvioBenvieiBenviariaBenviaremBenviarBenviandoBenviadosBenviadoBenviaBenvezBenvergonharB	envergadaBenvelhecimentoB
envelheceuBenvelheceramB
envelhecerB
envelhecemB	envelheceBenveizBenumerarB
entusiastaB
entusiasmoBentusiasmadosBentusiasmadBentupidoBentulhosBentulhamBentryBentrouBentrosamentoBentroB
entristeceBentrevistasB	entretidoBentreterimentoBentreterBentretenimentoBentretemB
entretantoB
entretandoBentremBentrelinhasBentreiBentregueBentregouB
entregavamBentregasB
entregaramBentregarB
entregandoBentregadoraBentregaBentraveBentravamBentravaBentrasB	entrariamBentrariaBentraremBentrarB	entrantesB	entranhasBentrandoBentramosBentramBentragaBentradasBentradaBentraBentityBentitiesBentirelyBentireBentilouB	entidadesBentidadeBentertenimentoBentertainmentBentertainingBentertaineringBenterrouB	enterradaBenteringBenteredBenteraBenterBentendoBentendimentoB	entendidoBentendianteBentendiBentendeuBentenderiamB
entenderiaB
entenderemB
entenderamBentenderB
entendendoBentendemBentendedoresBentendeBentendamBentendaBentendBentediarBentediantesB
entedianteB
entediadosB	entediadoBentediBentederBentaoBentantoBentandoBentBensolaradosBensinouBensinoB	ensinavelBensinarBensinamB	ensinadasBensinaBensinBenrtegaBenrteBenrredoB	enroscadoBenroleiBenrolarB	enrolandoBenrolaBenriquecimentoB
enriquecerBenriquecendoBenredosBenredoB	enrascadaBenrabouBenquantoBenquandoB	enquadramBenovadorBenoughtBenoughB
enormidadeBenormesBenormeBenjuouB	enjuativoBenjuadoBenjuaB	enjoymentBenjoyingBenjoyedB	enjoyableBenjoyBenjoouB
enjooativoBenjooarBenjooaBenjooBenjoeiBenjoeB
enjoativosB	enjoativoB
enjoativasB	enjoativaBenjoaraBenjoarBenjoanteBenjoandoBenjoamBenjoadoBenjoaaBenjoaBenjBenixBenigmasBenigmaBengrenarBengrenagensBengrenaB
engrancadoB	engracadoBengraBengorduradosBengolirBengolidoBengoleBenglobeB
englobandoBenglobamBenglishBenginesBengineBengenheirosB
engenheiroB
engenhariaB
engavetadoBengateBengatarBengasgosBengasgarB	engasgadoB	engasgadaBengasgaBengarrafamentoBenganouB	enganososBenganosaBenganooBenganoBenganemBenganeiBenganeB	enganchouBengancheB	engancharBenganchandoB	enganchamBenganchadosB
enganchadoBenganchaB	enganaramBenganarB	enganadosBenganadoBenganadaBenganaBengajamentoBengajadoB	engajadasBengacharB	engachadoBengachaB
enfurecidoBenfumB	enfretavaB	enfrenteiB	enfrentarBenfrentandoB	enfrentamB
enfrentadoBenfrentaBenfraquecemBenfluenciarBenfimaBenfim
іф
Const_5Const*
_output_shapes	
:ќu*
dtype0	*╠Е
value┴ЕBйЕ	ќu"░Е                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ђ       Ђ       ѓ       Ѓ       ё       Ё       є       Є       ѕ       Ѕ       і       І       ї       Ї       ј       Ј       љ       Љ       њ       Њ       ћ       Ћ       ќ       Ќ       ў       Ў       џ       Џ       ю       Ю       ъ       Ъ       а       А       б       Б       ц       Ц       д       Д       е       Е       ф       Ф       г       Г       «       »       ░       ▒       ▓       │       ┤       х       Х       и       И       ╣       ║       ╗       ╝       й       Й       ┐       └       ┴       ┬       ├       ─       ┼       к       К       ╚       ╔       ╩       ╦       ╠       ═       ╬       ¤       л       Л       м       М       н       Н       о       О       п       ┘       ┌       █       ▄       П       я       ▀       Я       р       Р       с       С       т       Т       у       У       ж       Ж       в       В       ь       Ь       №       ­       ы       Ы       з       З       ш       Ш       э       Э       щ       Щ       ч       Ч       §       ■                                                                      	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■              	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ђ	      Ђ	      ѓ	      Ѓ	      ё	      Ё	      є	      Є	      ѕ	      Ѕ	      і	      І	      ї	      Ї	      ј	      Ј	      љ	      Љ	      њ	      Њ	      ћ	      Ћ	      ќ	      Ќ	      ў	      Ў	      џ	      Џ	      ю	      Ю	      ъ	      Ъ	      а	      А	      б	      Б	      ц	      Ц	      д	      Д	      е	      Е	      ф	      Ф	      г	      Г	      «	      »	      ░	      ▒	      ▓	      │	      ┤	      х	      Х	      и	      И	      ╣	      ║	      ╗	      ╝	      й	      Й	      ┐	      └	      ┴	      ┬	      ├	      ─	      ┼	      к	      К	      ╚	      ╔	      ╩	      ╦	      ╠	      ═	      ╬	      ¤	      л	      Л	      м	      М	      н	      Н	      о	      О	      п	      ┘	      ┌	      █	      ▄	      П	      я	      ▀	      Я	      р	      Р	      с	      С	      т	      Т	      у	      У	      ж	      Ж	      в	      В	      ь	      Ь	      №	      ­	      ы	      Ы	      з	      З	      ш	      Ш	      э	      Э	      щ	      Щ	      ч	      Ч	      §	      ■	       	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ђ
      Ђ
      ѓ
      Ѓ
      ё
      Ё
      є
      Є
      ѕ
      Ѕ
      і
      І
      ї
      Ї
      ј
      Ј
      љ
      Љ
      њ
      Њ
      ћ
      Ћ
      ќ
      Ќ
      ў
      Ў
      џ
      Џ
      ю
      Ю
      ъ
      Ъ
      а
      А
      б
      Б
      ц
      Ц
      д
      Д
      е
      Е
      ф
      Ф
      г
      Г
      «
      »
      ░
      ▒
      ▓
      │
      ┤
      х
      Х
      и
      И
      ╣
      ║
      ╗
      ╝
      й
      Й
      ┐
      └
      ┴
      ┬
      ├
      ─
      ┼
      к
      К
      ╚
      ╔
      ╩
      ╦
      ╠
      ═
      ╬
      ¤
      л
      Л
      м
      М
      н
      Н
      о
      О
      п
      ┘
      ┌
      █
      ▄
      П
      я
      ▀
      Я
      р
      Р
      с
      С
      т
      Т
      у
      У
      ж
      Ж
      в
      В
      ь
      Ь
      №
      ­
      ы
      Ы
      з
      З
      ш
      Ш
      э
      Э
      щ
      Щ
      ч
      Ч
      §
      ■
       
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                    	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ђ      Ђ      ѓ      Ѓ      ё      Ё      є      Є      ѕ      Ѕ      і      І      ї      Ї      ј      Ј      љ      Љ      њ      Њ      ћ      Ћ      ќ      Ќ      ў      Ў      џ      Џ      ю      Ю      ъ      Ъ      а      А      б      Б      ц      Ц      д      Д      е      Е      ф      Ф      г      Г      «      »      ░      ▒      ▓      │      ┤      х      Х      и      И      ╣      ║      ╗      ╝      й      Й      ┐      └      ┴      ┬      ├      ─      ┼      к      К      ╚      ╔      ╩      ╦      ╠      ═      ╬      ¤      л      Л      м      М      н      Н      о      О      п      ┘      ┌      █      ▄      П      я      ▀      Я      р      Р      с      С      т      Т      у      У      ж      Ж      в      В      ь      Ь      №      ­      ы      Ы      з      З      ш      Ш      э      Э      щ      Щ      ч      Ч      §      ■                                                                             	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ђ       Ђ       ѓ       Ѓ       ё       Ё       є       Є       ѕ       Ѕ       і       І       ї       Ї       ј       Ј       љ       Љ       њ       Њ       ћ       Ћ       ќ       Ќ       ў       Ў       џ       Џ       ю       Ю       ъ       Ъ       а       А       б       Б       ц       Ц       д       Д       е       Е       ф       Ф       г       Г       «       »       ░       ▒       ▓       │       ┤       х       Х       и       И       ╣       ║       ╗       ╝       й       Й       ┐       └       ┴       ┬       ├       ─       ┼       к       К       ╚       ╔       ╩       ╦       ╠       ═       ╬       ¤       л       Л       м       М       н       Н       о       О       п       ┘       ┌       █       ▄       П       я       ▀       Я       р       Р       с       С       т       Т       у       У       ж       Ж       в       В       ь       Ь       №       ­       ы       Ы       з       З       ш       Ш       э       Э       щ       Щ       ч       Ч       §       ■                !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ђ!      Ђ!      ѓ!      Ѓ!      ё!      Ё!      є!      Є!      ѕ!      Ѕ!      і!      І!      ї!      Ї!      ј!      Ј!      љ!      Љ!      њ!      Њ!      ћ!      Ћ!      ќ!      Ќ!      ў!      Ў!      џ!      Џ!      ю!      Ю!      ъ!      Ъ!      а!      А!      б!      Б!      ц!      Ц!      д!      Д!      е!      Е!      ф!      Ф!      г!      Г!      «!      »!      ░!      ▒!      ▓!      │!      ┤!      х!      Х!      и!      И!      ╣!      ║!      ╗!      ╝!      й!      Й!      ┐!      └!      ┴!      ┬!      ├!      ─!      ┼!      к!      К!      ╚!      ╔!      ╩!      ╦!      ╠!      ═!      ╬!      ¤!      л!      Л!      м!      М!      н!      Н!      о!      О!      п!      ┘!      ┌!      █!      ▄!      П!      я!      ▀!      Я!      р!      Р!      с!      С!      т!      Т!      у!      У!      ж!      Ж!      в!      В!      ь!      Ь!      №!      ­!      ы!      Ы!      з!      З!      ш!      Ш!      э!      Э!      щ!      Щ!      ч!      Ч!      §!      ■!       !       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ђ"      Ђ"      ѓ"      Ѓ"      ё"      Ё"      є"      Є"      ѕ"      Ѕ"      і"      І"      ї"      Ї"      ј"      Ј"      љ"      Љ"      њ"      Њ"      ћ"      Ћ"      ќ"      Ќ"      ў"      Ў"      џ"      Џ"      ю"      Ю"      ъ"      Ъ"      а"      А"      б"      Б"      ц"      Ц"      д"      Д"      е"      Е"      ф"      Ф"      г"      Г"      «"      »"      ░"      ▒"      ▓"      │"      ┤"      х"      Х"      и"      И"      ╣"      ║"      ╗"      ╝"      й"      Й"      ┐"      └"      ┴"      ┬"      ├"      ─"      ┼"      к"      К"      ╚"      ╔"      ╩"      ╦"      ╠"      ═"      ╬"      ¤"      л"      Л"      м"      М"      н"      Н"      о"      О"      п"      ┘"      ┌"      █"      ▄"      П"      я"      ▀"      Я"      р"      Р"      с"      С"      т"      Т"      у"      У"      ж"      Ж"      в"      В"      ь"      Ь"      №"      ­"      ы"      Ы"      з"      З"      ш"      Ш"      э"      Э"      щ"      Щ"      ч"      Ч"      §"      ■"       "       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ђ#      Ђ#      ѓ#      Ѓ#      ё#      Ё#      є#      Є#      ѕ#      Ѕ#      і#      І#      ї#      Ї#      ј#      Ј#      љ#      Љ#      њ#      Њ#      ћ#      Ћ#      ќ#      Ќ#      ў#      Ў#      џ#      Џ#      ю#      Ю#      ъ#      Ъ#      а#      А#      б#      Б#      ц#      Ц#      д#      Д#      е#      Е#      ф#      Ф#      г#      Г#      «#      »#      ░#      ▒#      ▓#      │#      ┤#      х#      Х#      и#      И#      ╣#      ║#      ╗#      ╝#      й#      Й#      ┐#      └#      ┴#      ┬#      ├#      ─#      ┼#      к#      К#      ╚#      ╔#      ╩#      ╦#      ╠#      ═#      ╬#      ¤#      л#      Л#      м#      М#      н#      Н#      о#      О#      п#      ┘#      ┌#      █#      ▄#      П#      я#      ▀#      Я#      р#      Р#      с#      С#      т#      Т#      у#      У#      ж#      Ж#      в#      В#      ь#      Ь#      №#      ­#      ы#      Ы#      з#      З#      ш#      Ш#      э#      Э#      щ#      Щ#      ч#      Ч#      §#      ■#       #       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ђ$      Ђ$      ѓ$      Ѓ$      ё$      Ё$      є$      Є$      ѕ$      Ѕ$      і$      І$      ї$      Ї$      ј$      Ј$      љ$      Љ$      њ$      Њ$      ћ$      Ћ$      ќ$      Ќ$      ў$      Ў$      џ$      Џ$      ю$      Ю$      ъ$      Ъ$      а$      А$      б$      Б$      ц$      Ц$      д$      Д$      е$      Е$      ф$      Ф$      г$      Г$      «$      »$      ░$      ▒$      ▓$      │$      ┤$      х$      Х$      и$      И$      ╣$      ║$      ╗$      ╝$      й$      Й$      ┐$      └$      ┴$      ┬$      ├$      ─$      ┼$      к$      К$      ╚$      ╔$      ╩$      ╦$      ╠$      ═$      ╬$      ¤$      л$      Л$      м$      М$      н$      Н$      о$      О$      п$      ┘$      ┌$      █$      ▄$      П$      я$      ▀$      Я$      р$      Р$      с$      С$      т$      Т$      у$      У$      ж$      Ж$      в$      В$      ь$      Ь$      №$      ­$      ы$      Ы$      з$      З$      ш$      Ш$      э$      Э$      щ$      Щ$      ч$      Ч$      §$      ■$       $       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ђ%      Ђ%      ѓ%      Ѓ%      ё%      Ё%      є%      Є%      ѕ%      Ѕ%      і%      І%      ї%      Ї%      ј%      Ј%      љ%      Љ%      њ%      Њ%      ћ%      Ћ%      ќ%      Ќ%      ў%      Ў%      џ%      Џ%      ю%      Ю%      ъ%      Ъ%      а%      А%      б%      Б%      ц%      Ц%      д%      Д%      е%      Е%      ф%      Ф%      г%      Г%      «%      »%      ░%      ▒%      ▓%      │%      ┤%      х%      Х%      и%      И%      ╣%      ║%      ╗%      ╝%      й%      Й%      ┐%      └%      ┴%      ┬%      ├%      ─%      ┼%      к%      К%      ╚%      ╔%      ╩%      ╦%      ╠%      ═%      ╬%      ¤%      л%      Л%      м%      М%      н%      Н%      о%      О%      п%      ┘%      ┌%      █%      ▄%      П%      я%      ▀%      Я%      р%      Р%      с%      С%      т%      Т%      у%      У%      ж%      Ж%      в%      В%      ь%      Ь%      №%      ­%      ы%      Ы%      з%      З%      ш%      Ш%      э%      Э%      щ%      Щ%      ч%      Ч%      §%      ■%       %       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ђ&      Ђ&      ѓ&      Ѓ&      ё&      Ё&      є&      Є&      ѕ&      Ѕ&      і&      І&      ї&      Ї&      ј&      Ј&      љ&      Љ&      њ&      Њ&      ћ&      Ћ&      ќ&      Ќ&      ў&      Ў&      џ&      Џ&      ю&      Ю&      ъ&      Ъ&      а&      А&      б&      Б&      ц&      Ц&      д&      Д&      е&      Е&      ф&      Ф&      г&      Г&      «&      »&      ░&      ▒&      ▓&      │&      ┤&      х&      Х&      и&      И&      ╣&      ║&      ╗&      ╝&      й&      Й&      ┐&      └&      ┴&      ┬&      ├&      ─&      ┼&      к&      К&      ╚&      ╔&      ╩&      ╦&      ╠&      ═&      ╬&      ¤&      л&      Л&      м&      М&      н&      Н&      о&      О&      п&      ┘&      ┌&      █&      ▄&      П&      я&      ▀&      Я&      р&      Р&      с&      С&      т&      Т&      у&      У&      ж&      Ж&      в&      В&      ь&      Ь&      №&      ­&      ы&      Ы&      з&      З&      ш&      Ш&      э&      Э&      щ&      Щ&      ч&      Ч&      §&      ■&       &       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '       '      !'      "'      #'      $'      %'      &'      ''      ('      )'      *'      +'      ,'      -'      .'      /'      0'      1'      2'      3'      4'      5'      6'      7'      8'      9'      :'      ;'      <'      ='      >'      ?'      @'      A'      B'      C'      D'      E'      F'      G'      H'      I'      J'      K'      L'      M'      N'      O'      P'      Q'      R'      S'      T'      U'      V'      W'      X'      Y'      Z'      ['      \'      ]'      ^'      _'      `'      a'      b'      c'      d'      e'      f'      g'      h'      i'      j'      k'      l'      m'      n'      o'      p'      q'      r'      s'      t'      u'      v'      w'      x'      y'      z'      {'      |'      }'      ~'      '      ђ'      Ђ'      ѓ'      Ѓ'      ё'      Ё'      є'      Є'      ѕ'      Ѕ'      і'      І'      ї'      Ї'      ј'      Ј'      љ'      Љ'      њ'      Њ'      ћ'      Ћ'      ќ'      Ќ'      ў'      Ў'      џ'      Џ'      ю'      Ю'      ъ'      Ъ'      а'      А'      б'      Б'      ц'      Ц'      д'      Д'      е'      Е'      ф'      Ф'      г'      Г'      «'      »'      ░'      ▒'      ▓'      │'      ┤'      х'      Х'      и'      И'      ╣'      ║'      ╗'      ╝'      й'      Й'      ┐'      └'      ┴'      ┬'      ├'      ─'      ┼'      к'      К'      ╚'      ╔'      ╩'      ╦'      ╠'      ═'      ╬'      ¤'      л'      Л'      м'      М'      н'      Н'      о'      О'      п'      ┘'      ┌'      █'      ▄'      П'      я'      ▀'      Я'      р'      Р'      с'      С'      т'      Т'      у'      У'      ж'      Ж'      в'      В'      ь'      Ь'      №'      ­'      ы'      Ы'      з'      З'      ш'      Ш'      э'      Э'      щ'      Щ'      ч'      Ч'      §'      ■'       '       (      (      (      (      (      (      (      (      (      	(      
(      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (       (      !(      "(      #(      $(      %(      &(      '(      ((      )(      *(      +(      ,(      -(      .(      /(      0(      1(      2(      3(      4(      5(      6(      7(      8(      9(      :(      ;(      <(      =(      >(      ?(      @(      A(      B(      C(      D(      E(      F(      G(      H(      I(      J(      K(      L(      M(      N(      O(      P(      Q(      R(      S(      T(      U(      V(      W(      X(      Y(      Z(      [(      \(      ](      ^(      _(      `(      a(      b(      c(      d(      e(      f(      g(      h(      i(      j(      k(      l(      m(      n(      o(      p(      q(      r(      s(      t(      u(      v(      w(      x(      y(      z(      {(      |(      }(      ~(      (      ђ(      Ђ(      ѓ(      Ѓ(      ё(      Ё(      є(      Є(      ѕ(      Ѕ(      і(      І(      ї(      Ї(      ј(      Ј(      љ(      Љ(      њ(      Њ(      ћ(      Ћ(      ќ(      Ќ(      ў(      Ў(      џ(      Џ(      ю(      Ю(      ъ(      Ъ(      а(      А(      б(      Б(      ц(      Ц(      д(      Д(      е(      Е(      ф(      Ф(      г(      Г(      «(      »(      ░(      ▒(      ▓(      │(      ┤(      х(      Х(      и(      И(      ╣(      ║(      ╗(      ╝(      й(      Й(      ┐(      └(      ┴(      ┬(      ├(      ─(      ┼(      к(      К(      ╚(      ╔(      ╩(      ╦(      ╠(      ═(      ╬(      ¤(      л(      Л(      м(      М(      н(      Н(      о(      О(      п(      ┘(      ┌(      █(      ▄(      П(      я(      ▀(      Я(      р(      Р(      с(      С(      т(      Т(      у(      У(      ж(      Ж(      в(      В(      ь(      Ь(      №(      ­(      ы(      Ы(      з(      З(      ш(      Ш(      э(      Э(      щ(      Щ(      ч(      Ч(      §(      ■(       (       )      )      )      )      )      )      )      )      )      	)      
)      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )       )      !)      ")      #)      $)      %)      &)      ')      ()      ))      *)      +)      ,)      -)      .)      /)      0)      1)      2)      3)      4)      5)      6)      7)      8)      9)      :)      ;)      <)      =)      >)      ?)      @)      A)      B)      C)      D)      E)      F)      G)      H)      I)      J)      K)      L)      M)      N)      O)      P)      Q)      R)      S)      T)      U)      V)      W)      X)      Y)      Z)      [)      \)      ])      ^)      _)      `)      a)      b)      c)      d)      e)      f)      g)      h)      i)      j)      k)      l)      m)      n)      o)      p)      q)      r)      s)      t)      u)      v)      w)      x)      y)      z)      {)      |)      })      ~)      )      ђ)      Ђ)      ѓ)      Ѓ)      ё)      Ё)      є)      Є)      ѕ)      Ѕ)      і)      І)      ї)      Ї)      ј)      Ј)      љ)      Љ)      њ)      Њ)      ћ)      Ћ)      ќ)      Ќ)      ў)      Ў)      џ)      Џ)      ю)      Ю)      ъ)      Ъ)      а)      А)      б)      Б)      ц)      Ц)      д)      Д)      е)      Е)      ф)      Ф)      г)      Г)      «)      »)      ░)      ▒)      ▓)      │)      ┤)      х)      Х)      и)      И)      ╣)      ║)      ╗)      ╝)      й)      Й)      ┐)      └)      ┴)      ┬)      ├)      ─)      ┼)      к)      К)      ╚)      ╔)      ╩)      ╦)      ╠)      ═)      ╬)      ¤)      л)      Л)      м)      М)      н)      Н)      о)      О)      п)      ┘)      ┌)      █)      ▄)      П)      я)      ▀)      Я)      р)      Р)      с)      С)      т)      Т)      у)      У)      ж)      Ж)      в)      В)      ь)      Ь)      №)      ­)      ы)      Ы)      з)      З)      ш)      Ш)      э)      Э)      щ)      Щ)      ч)      Ч)      §)      ■)       )       *      *      *      *      *      *      *      *      *      	*      
*      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *       *      !*      "*      #*      $*      %*      &*      '*      (*      )*      **      +*      ,*      -*      .*      /*      0*      1*      2*      3*      4*      5*      6*      7*      8*      9*      :*      ;*      <*      =*      >*      ?*      @*      A*      B*      C*      D*      E*      F*      G*      H*      I*      J*      K*      L*      M*      N*      O*      P*      Q*      R*      S*      T*      U*      V*      W*      X*      Y*      Z*      [*      \*      ]*      ^*      _*      `*      a*      b*      c*      d*      e*      f*      g*      h*      i*      j*      k*      l*      m*      n*      o*      p*      q*      r*      s*      t*      u*      v*      w*      x*      y*      z*      {*      |*      }*      ~*      *      ђ*      Ђ*      ѓ*      Ѓ*      ё*      Ё*      є*      Є*      ѕ*      Ѕ*      і*      І*      ї*      Ї*      ј*      Ј*      љ*      Љ*      њ*      Њ*      ћ*      Ћ*      ќ*      Ќ*      ў*      Ў*      џ*      Џ*      ю*      Ю*      ъ*      Ъ*      а*      А*      б*      Б*      ц*      Ц*      д*      Д*      е*      Е*      ф*      Ф*      г*      Г*      «*      »*      ░*      ▒*      ▓*      │*      ┤*      х*      Х*      и*      И*      ╣*      ║*      ╗*      ╝*      й*      Й*      ┐*      └*      ┴*      ┬*      ├*      ─*      ┼*      к*      К*      ╚*      ╔*      ╩*      ╦*      ╠*      ═*      ╬*      ¤*      л*      Л*      м*      М*      н*      Н*      о*      О*      п*      ┘*      ┌*      █*      ▄*      П*      я*      ▀*      Я*      р*      Р*      с*      С*      т*      Т*      у*      У*      ж*      Ж*      в*      В*      ь*      Ь*      №*      ­*      ы*      Ы*      з*      З*      ш*      Ш*      э*      Э*      щ*      Щ*      ч*      Ч*      §*      ■*       *       +      +      +      +      +      +      +      +      +      	+      
+      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +       +      !+      "+      #+      $+      %+      &+      '+      (+      )+      *+      ++      ,+      -+      .+      /+      0+      1+      2+      3+      4+      5+      6+      7+      8+      9+      :+      ;+      <+      =+      >+      ?+      @+      A+      B+      C+      D+      E+      F+      G+      H+      I+      J+      K+      L+      M+      N+      O+      P+      Q+      R+      S+      T+      U+      V+      W+      X+      Y+      Z+      [+      \+      ]+      ^+      _+      `+      a+      b+      c+      d+      e+      f+      g+      h+      i+      j+      k+      l+      m+      n+      o+      p+      q+      r+      s+      t+      u+      v+      w+      x+      y+      z+      {+      |+      }+      ~+      +      ђ+      Ђ+      ѓ+      Ѓ+      ё+      Ё+      є+      Є+      ѕ+      Ѕ+      і+      І+      ї+      Ї+      ј+      Ј+      љ+      Љ+      њ+      Њ+      ћ+      Ћ+      ќ+      Ќ+      ў+      Ў+      џ+      Џ+      ю+      Ю+      ъ+      Ъ+      а+      А+      б+      Б+      ц+      Ц+      д+      Д+      е+      Е+      ф+      Ф+      г+      Г+      «+      »+      ░+      ▒+      ▓+      │+      ┤+      х+      Х+      и+      И+      ╣+      ║+      ╗+      ╝+      й+      Й+      ┐+      └+      ┴+      ┬+      ├+      ─+      ┼+      к+      К+      ╚+      ╔+      ╩+      ╦+      ╠+      ═+      ╬+      ¤+      л+      Л+      м+      М+      н+      Н+      о+      О+      п+      ┘+      ┌+      █+      ▄+      П+      я+      ▀+      Я+      р+      Р+      с+      С+      т+      Т+      у+      У+      ж+      Ж+      в+      В+      ь+      Ь+      №+      ­+      ы+      Ы+      з+      З+      ш+      Ш+      э+      Э+      щ+      Щ+      ч+      Ч+      §+      ■+       +       ,      ,      ,      ,      ,      ,      ,      ,      ,      	,      
,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,       ,      !,      ",      #,      $,      %,      &,      ',      (,      ),      *,      +,      ,,      -,      .,      /,      0,      1,      2,      3,      4,      5,      6,      7,      8,      9,      :,      ;,      <,      =,      >,      ?,      @,      A,      B,      C,      D,      E,      F,      G,      H,      I,      J,      K,      L,      M,      N,      O,      P,      Q,      R,      S,      T,      U,      V,      W,      X,      Y,      Z,      [,      \,      ],      ^,      _,      `,      a,      b,      c,      d,      e,      f,      g,      h,      i,      j,      k,      l,      m,      n,      o,      p,      q,      r,      s,      t,      u,      v,      w,      x,      y,      z,      {,      |,      },      ~,      ,      ђ,      Ђ,      ѓ,      Ѓ,      ё,      Ё,      є,      Є,      ѕ,      Ѕ,      і,      І,      ї,      Ї,      ј,      Ј,      љ,      Љ,      њ,      Њ,      ћ,      Ћ,      ќ,      Ќ,      ў,      Ў,      џ,      Џ,      ю,      Ю,      ъ,      Ъ,      а,      А,      б,      Б,      ц,      Ц,      д,      Д,      е,      Е,      ф,      Ф,      г,      Г,      «,      »,      ░,      ▒,      ▓,      │,      ┤,      х,      Х,      и,      И,      ╣,      ║,      ╗,      ╝,      й,      Й,      ┐,      └,      ┴,      ┬,      ├,      ─,      ┼,      к,      К,      ╚,      ╔,      ╩,      ╦,      ╠,      ═,      ╬,      ¤,      л,      Л,      м,      М,      н,      Н,      о,      О,      п,      ┘,      ┌,      █,      ▄,      П,      я,      ▀,      Я,      р,      Р,      с,      С,      т,      Т,      у,      У,      ж,      Ж,      в,      В,      ь,      Ь,      №,      ­,      ы,      Ы,      з,      З,      ш,      Ш,      э,      Э,      щ,      Щ,      ч,      Ч,      §,      ■,       ,       -      -      -      -      -      -      -      -      -      	-      
-      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -       -      !-      "-      #-      $-      %-      &-      '-      (-      )-      *-      +-      ,-      --      .-      /-      0-      1-      2-      3-      4-      5-      6-      7-      8-      9-      :-      ;-      <-      =-      >-      ?-      @-      A-      B-      C-      D-      E-      F-      G-      H-      I-      J-      K-      L-      M-      N-      O-      P-      Q-      R-      S-      T-      U-      V-      W-      X-      Y-      Z-      [-      \-      ]-      ^-      _-      `-      a-      b-      c-      d-      e-      f-      g-      h-      i-      j-      k-      l-      m-      n-      o-      p-      q-      r-      s-      t-      u-      v-      w-      x-      y-      z-      {-      |-      }-      ~-      -      ђ-      Ђ-      ѓ-      Ѓ-      ё-      Ё-      є-      Є-      ѕ-      Ѕ-      і-      І-      ї-      Ї-      ј-      Ј-      љ-      Љ-      њ-      Њ-      ћ-      Ћ-      ќ-      Ќ-      ў-      Ў-      џ-      Џ-      ю-      Ю-      ъ-      Ъ-      а-      А-      б-      Б-      ц-      Ц-      д-      Д-      е-      Е-      ф-      Ф-      г-      Г-      «-      »-      ░-      ▒-      ▓-      │-      ┤-      х-      Х-      и-      И-      ╣-      ║-      ╗-      ╝-      й-      Й-      ┐-      └-      ┴-      ┬-      ├-      ─-      ┼-      к-      К-      ╚-      ╔-      ╩-      ╦-      ╠-      ═-      ╬-      ¤-      л-      Л-      м-      М-      н-      Н-      о-      О-      п-      ┘-      ┌-      █-      ▄-      П-      я-      ▀-      Я-      р-      Р-      с-      С-      т-      Т-      у-      У-      ж-      Ж-      в-      В-      ь-      Ь-      №-      ­-      ы-      Ы-      з-      З-      ш-      Ш-      э-      Э-      щ-      Щ-      ч-      Ч-      §-      ■-       -       .      .      .      .      .      .      .      .      .      	.      
.      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .       .      !.      ".      #.      $.      %.      &.      '.      (.      ).      *.      +.      ,.      -.      ..      /.      0.      1.      2.      3.      4.      5.      6.      7.      8.      9.      :.      ;.      <.      =.      >.      ?.      @.      A.      B.      C.      D.      E.      F.      G.      H.      I.      J.      K.      L.      M.      N.      O.      P.      Q.      R.      S.      T.      U.      V.      W.      X.      Y.      Z.      [.      \.      ].      ^.      _.      `.      a.      b.      c.      d.      e.      f.      g.      h.      i.      j.      k.      l.      m.      n.      o.      p.      q.      r.      s.      t.      u.      v.      w.      x.      y.      z.      {.      |.      }.      ~.      .      ђ.      Ђ.      ѓ.      Ѓ.      ё.      Ё.      є.      Є.      ѕ.      Ѕ.      і.      І.      ї.      Ї.      ј.      Ј.      љ.      Љ.      њ.      Њ.      ћ.      Ћ.      ќ.      Ќ.      ў.      Ў.      џ.      Џ.      ю.      Ю.      ъ.      Ъ.      а.      А.      б.      Б.      ц.      Ц.      д.      Д.      е.      Е.      ф.      Ф.      г.      Г.      «.      ».      ░.      ▒.      ▓.      │.      ┤.      х.      Х.      и.      И.      ╣.      ║.      ╗.      ╝.      й.      Й.      ┐.      └.      ┴.      ┬.      ├.      ─.      ┼.      к.      К.      ╚.      ╔.      ╩.      ╦.      ╠.      ═.      ╬.      ¤.      л.      Л.      м.      М.      н.      Н.      о.      О.      п.      ┘.      ┌.      █.      ▄.      П.      я.      ▀.      Я.      р.      Р.      с.      С.      т.      Т.      у.      У.      ж.      Ж.      в.      В.      ь.      Ь.      №.      ­.      ы.      Ы.      з.      З.      ш.      Ш.      э.      Э.      щ.      Щ.      ч.      Ч.      §.      ■.       .       /      /      /      /      /      /      /      /      /      	/      
/      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /       /      !/      "/      #/      $/      %/      &/      '/      (/      )/      */      +/      ,/      -/      ./      //      0/      1/      2/      3/      4/      5/      6/      7/      8/      9/      :/      ;/      </      =/      >/      ?/      @/      A/      B/      C/      D/      E/      F/      G/      H/      I/      J/      K/      L/      M/      N/      O/      P/      Q/      R/      S/      T/      U/      V/      W/      X/      Y/      Z/      [/      \/      ]/      ^/      _/      `/      a/      b/      c/      d/      e/      f/      g/      h/      i/      j/      k/      l/      m/      n/      o/      p/      q/      r/      s/      t/      u/      v/      w/      x/      y/      z/      {/      |/      }/      ~/      /      ђ/      Ђ/      ѓ/      Ѓ/      ё/      Ё/      є/      Є/      ѕ/      Ѕ/      і/      І/      ї/      Ї/      ј/      Ј/      љ/      Љ/      њ/      Њ/      ћ/      Ћ/      ќ/      Ќ/      ў/      Ў/      џ/      Џ/      ю/      Ю/      ъ/      Ъ/      а/      А/      б/      Б/      ц/      Ц/      д/      Д/      е/      Е/      ф/      Ф/      г/      Г/      «/      »/      ░/      ▒/      ▓/      │/      ┤/      х/      Х/      и/      И/      ╣/      ║/      ╗/      ╝/      й/      Й/      ┐/      └/      ┴/      ┬/      ├/      ─/      ┼/      к/      К/      ╚/      ╔/      ╩/      ╦/      ╠/      ═/      ╬/      ¤/      л/      Л/      м/      М/      н/      Н/      о/      О/      п/      ┘/      ┌/      █/      ▄/      П/      я/      ▀/      Я/      р/      Р/      с/      С/      т/      Т/      у/      У/      ж/      Ж/      в/      В/      ь/      Ь/      №/      ­/      ы/      Ы/      з/      З/      ш/      Ш/      э/      Э/      щ/      Щ/      ч/      Ч/      §/      ■/       /       0      0      0      0      0      0      0      0      0      	0      
0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0       0      !0      "0      #0      $0      %0      &0      '0      (0      )0      *0      +0      ,0      -0      .0      /0      00      10      20      30      40      50      60      70      80      90      :0      ;0      <0      =0      >0      ?0      @0      A0      B0      C0      D0      E0      F0      G0      H0      I0      J0      K0      L0      M0      N0      O0      P0      Q0      R0      S0      T0      U0      V0      W0      X0      Y0      Z0      [0      \0      ]0      ^0      _0      `0      a0      b0      c0      d0      e0      f0      g0      h0      i0      j0      k0      l0      m0      n0      o0      p0      q0      r0      s0      t0      u0      v0      w0      x0      y0      z0      {0      |0      }0      ~0      0      ђ0      Ђ0      ѓ0      Ѓ0      ё0      Ё0      є0      Є0      ѕ0      Ѕ0      і0      І0      ї0      Ї0      ј0      Ј0      љ0      Љ0      њ0      Њ0      ћ0      Ћ0      ќ0      Ќ0      ў0      Ў0      џ0      Џ0      ю0      Ю0      ъ0      Ъ0      а0      А0      б0      Б0      ц0      Ц0      д0      Д0      е0      Е0      ф0      Ф0      г0      Г0      «0      »0      ░0      ▒0      ▓0      │0      ┤0      х0      Х0      и0      И0      ╣0      ║0      ╗0      ╝0      й0      Й0      ┐0      └0      ┴0      ┬0      ├0      ─0      ┼0      к0      К0      ╚0      ╔0      ╩0      ╦0      ╠0      ═0      ╬0      ¤0      л0      Л0      м0      М0      н0      Н0      о0      О0      п0      ┘0      ┌0      █0      ▄0      П0      я0      ▀0      Я0      р0      Р0      с0      С0      т0      Т0      у0      У0      ж0      Ж0      в0      В0      ь0      Ь0      №0      ­0      ы0      Ы0      з0      З0      ш0      Ш0      э0      Э0      щ0      Щ0      ч0      Ч0      §0      ■0       0       1      1      1      1      1      1      1      1      1      	1      
1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1       1      !1      "1      #1      $1      %1      &1      '1      (1      )1      *1      +1      ,1      -1      .1      /1      01      11      21      31      41      51      61      71      81      91      :1      ;1      <1      =1      >1      ?1      @1      A1      B1      C1      D1      E1      F1      G1      H1      I1      J1      K1      L1      M1      N1      O1      P1      Q1      R1      S1      T1      U1      V1      W1      X1      Y1      Z1      [1      \1      ]1      ^1      _1      `1      a1      b1      c1      d1      e1      f1      g1      h1      i1      j1      k1      l1      m1      n1      o1      p1      q1      r1      s1      t1      u1      v1      w1      x1      y1      z1      {1      |1      }1      ~1      1      ђ1      Ђ1      ѓ1      Ѓ1      ё1      Ё1      є1      Є1      ѕ1      Ѕ1      і1      І1      ї1      Ї1      ј1      Ј1      љ1      Љ1      њ1      Њ1      ћ1      Ћ1      ќ1      Ќ1      ў1      Ў1      џ1      Џ1      ю1      Ю1      ъ1      Ъ1      а1      А1      б1      Б1      ц1      Ц1      д1      Д1      е1      Е1      ф1      Ф1      г1      Г1      «1      »1      ░1      ▒1      ▓1      │1      ┤1      х1      Х1      и1      И1      ╣1      ║1      ╗1      ╝1      й1      Й1      ┐1      └1      ┴1      ┬1      ├1      ─1      ┼1      к1      К1      ╚1      ╔1      ╩1      ╦1      ╠1      ═1      ╬1      ¤1      л1      Л1      м1      М1      н1      Н1      о1      О1      п1      ┘1      ┌1      █1      ▄1      П1      я1      ▀1      Я1      р1      Р1      с1      С1      т1      Т1      у1      У1      ж1      Ж1      в1      В1      ь1      Ь1      №1      ­1      ы1      Ы1      з1      З1      ш1      Ш1      э1      Э1      щ1      Щ1      ч1      Ч1      §1      ■1       1       2      2      2      2      2      2      2      2      2      	2      
2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2       2      !2      "2      #2      $2      %2      &2      '2      (2      )2      *2      +2      ,2      -2      .2      /2      02      12      22      32      42      52      62      72      82      92      :2      ;2      <2      =2      >2      ?2      @2      A2      B2      C2      D2      E2      F2      G2      H2      I2      J2      K2      L2      M2      N2      O2      P2      Q2      R2      S2      T2      U2      V2      W2      X2      Y2      Z2      [2      \2      ]2      ^2      _2      `2      a2      b2      c2      d2      e2      f2      g2      h2      i2      j2      k2      l2      m2      n2      o2      p2      q2      r2      s2      t2      u2      v2      w2      x2      y2      z2      {2      |2      }2      ~2      2      ђ2      Ђ2      ѓ2      Ѓ2      ё2      Ё2      є2      Є2      ѕ2      Ѕ2      і2      І2      ї2      Ї2      ј2      Ј2      љ2      Љ2      њ2      Њ2      ћ2      Ћ2      ќ2      Ќ2      ў2      Ў2      џ2      Џ2      ю2      Ю2      ъ2      Ъ2      а2      А2      б2      Б2      ц2      Ц2      д2      Д2      е2      Е2      ф2      Ф2      г2      Г2      «2      »2      ░2      ▒2      ▓2      │2      ┤2      х2      Х2      и2      И2      ╣2      ║2      ╗2      ╝2      й2      Й2      ┐2      └2      ┴2      ┬2      ├2      ─2      ┼2      к2      К2      ╚2      ╔2      ╩2      ╦2      ╠2      ═2      ╬2      ¤2      л2      Л2      м2      М2      н2      Н2      о2      О2      п2      ┘2      ┌2      █2      ▄2      П2      я2      ▀2      Я2      р2      Р2      с2      С2      т2      Т2      у2      У2      ж2      Ж2      в2      В2      ь2      Ь2      №2      ­2      ы2      Ы2      з2      З2      ш2      Ш2      э2      Э2      щ2      Щ2      ч2      Ч2      §2      ■2       2       3      3      3      3      3      3      3      3      3      	3      
3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3       3      !3      "3      #3      $3      %3      &3      '3      (3      )3      *3      +3      ,3      -3      .3      /3      03      13      23      33      43      53      63      73      83      93      :3      ;3      <3      =3      >3      ?3      @3      A3      B3      C3      D3      E3      F3      G3      H3      I3      J3      K3      L3      M3      N3      O3      P3      Q3      R3      S3      T3      U3      V3      W3      X3      Y3      Z3      [3      \3      ]3      ^3      _3      `3      a3      b3      c3      d3      e3      f3      g3      h3      i3      j3      k3      l3      m3      n3      o3      p3      q3      r3      s3      t3      u3      v3      w3      x3      y3      z3      {3      |3      }3      ~3      3      ђ3      Ђ3      ѓ3      Ѓ3      ё3      Ё3      є3      Є3      ѕ3      Ѕ3      і3      І3      ї3      Ї3      ј3      Ј3      љ3      Љ3      њ3      Њ3      ћ3      Ћ3      ќ3      Ќ3      ў3      Ў3      џ3      Џ3      ю3      Ю3      ъ3      Ъ3      а3      А3      б3      Б3      ц3      Ц3      д3      Д3      е3      Е3      ф3      Ф3      г3      Г3      «3      »3      ░3      ▒3      ▓3      │3      ┤3      х3      Х3      и3      И3      ╣3      ║3      ╗3      ╝3      й3      Й3      ┐3      └3      ┴3      ┬3      ├3      ─3      ┼3      к3      К3      ╚3      ╔3      ╩3      ╦3      ╠3      ═3      ╬3      ¤3      л3      Л3      м3      М3      н3      Н3      о3      О3      п3      ┘3      ┌3      █3      ▄3      П3      я3      ▀3      Я3      р3      Р3      с3      С3      т3      Т3      у3      У3      ж3      Ж3      в3      В3      ь3      Ь3      №3      ­3      ы3      Ы3      з3      З3      ш3      Ш3      э3      Э3      щ3      Щ3      ч3      Ч3      §3      ■3       3       4      4      4      4      4      4      4      4      4      	4      
4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4       4      !4      "4      #4      $4      %4      &4      '4      (4      )4      *4      +4      ,4      -4      .4      /4      04      14      24      34      44      54      64      74      84      94      :4      ;4      <4      =4      >4      ?4      @4      A4      B4      C4      D4      E4      F4      G4      H4      I4      J4      K4      L4      M4      N4      O4      P4      Q4      R4      S4      T4      U4      V4      W4      X4      Y4      Z4      [4      \4      ]4      ^4      _4      `4      a4      b4      c4      d4      e4      f4      g4      h4      i4      j4      k4      l4      m4      n4      o4      p4      q4      r4      s4      t4      u4      v4      w4      x4      y4      z4      {4      |4      }4      ~4      4      ђ4      Ђ4      ѓ4      Ѓ4      ё4      Ё4      є4      Є4      ѕ4      Ѕ4      і4      І4      ї4      Ї4      ј4      Ј4      љ4      Љ4      њ4      Њ4      ћ4      Ћ4      ќ4      Ќ4      ў4      Ў4      џ4      Џ4      ю4      Ю4      ъ4      Ъ4      а4      А4      б4      Б4      ц4      Ц4      д4      Д4      е4      Е4      ф4      Ф4      г4      Г4      «4      »4      ░4      ▒4      ▓4      │4      ┤4      х4      Х4      и4      И4      ╣4      ║4      ╗4      ╝4      й4      Й4      ┐4      └4      ┴4      ┬4      ├4      ─4      ┼4      к4      К4      ╚4      ╔4      ╩4      ╦4      ╠4      ═4      ╬4      ¤4      л4      Л4      м4      М4      н4      Н4      о4      О4      п4      ┘4      ┌4      █4      ▄4      П4      я4      ▀4      Я4      р4      Р4      с4      С4      т4      Т4      у4      У4      ж4      Ж4      в4      В4      ь4      Ь4      №4      ­4      ы4      Ы4      з4      З4      ш4      Ш4      э4      Э4      щ4      Щ4      ч4      Ч4      §4      ■4       4       5      5      5      5      5      5      5      5      5      	5      
5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5       5      !5      "5      #5      $5      %5      &5      '5      (5      )5      *5      +5      ,5      -5      .5      /5      05      15      25      35      45      55      65      75      85      95      :5      ;5      <5      =5      >5      ?5      @5      A5      B5      C5      D5      E5      F5      G5      H5      I5      J5      K5      L5      M5      N5      O5      P5      Q5      R5      S5      T5      U5      V5      W5      X5      Y5      Z5      [5      \5      ]5      ^5      _5      `5      a5      b5      c5      d5      e5      f5      g5      h5      i5      j5      k5      l5      m5      n5      o5      p5      q5      r5      s5      t5      u5      v5      w5      x5      y5      z5      {5      |5      }5      ~5      5      ђ5      Ђ5      ѓ5      Ѓ5      ё5      Ё5      є5      Є5      ѕ5      Ѕ5      і5      І5      ї5      Ї5      ј5      Ј5      љ5      Љ5      њ5      Њ5      ћ5      Ћ5      ќ5      Ќ5      ў5      Ў5      џ5      Џ5      ю5      Ю5      ъ5      Ъ5      а5      А5      б5      Б5      ц5      Ц5      д5      Д5      е5      Е5      ф5      Ф5      г5      Г5      «5      »5      ░5      ▒5      ▓5      │5      ┤5      х5      Х5      и5      И5      ╣5      ║5      ╗5      ╝5      й5      Й5      ┐5      └5      ┴5      ┬5      ├5      ─5      ┼5      к5      К5      ╚5      ╔5      ╩5      ╦5      ╠5      ═5      ╬5      ¤5      л5      Л5      м5      М5      н5      Н5      о5      О5      п5      ┘5      ┌5      █5      ▄5      П5      я5      ▀5      Я5      р5      Р5      с5      С5      т5      Т5      у5      У5      ж5      Ж5      в5      В5      ь5      Ь5      №5      ­5      ы5      Ы5      з5      З5      ш5      Ш5      э5      Э5      щ5      Щ5      ч5      Ч5      §5      ■5       5       6      6      6      6      6      6      6      6      6      	6      
6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6       6      !6      "6      #6      $6      %6      &6      '6      (6      )6      *6      +6      ,6      -6      .6      /6      06      16      26      36      46      56      66      76      86      96      :6      ;6      <6      =6      >6      ?6      @6      A6      B6      C6      D6      E6      F6      G6      H6      I6      J6      K6      L6      M6      N6      O6      P6      Q6      R6      S6      T6      U6      V6      W6      X6      Y6      Z6      [6      \6      ]6      ^6      _6      `6      a6      b6      c6      d6      e6      f6      g6      h6      i6      j6      k6      l6      m6      n6      o6      p6      q6      r6      s6      t6      u6      v6      w6      x6      y6      z6      {6      |6      }6      ~6      6      ђ6      Ђ6      ѓ6      Ѓ6      ё6      Ё6      є6      Є6      ѕ6      Ѕ6      і6      І6      ї6      Ї6      ј6      Ј6      љ6      Љ6      њ6      Њ6      ћ6      Ћ6      ќ6      Ќ6      ў6      Ў6      џ6      Џ6      ю6      Ю6      ъ6      Ъ6      а6      А6      б6      Б6      ц6      Ц6      д6      Д6      е6      Е6      ф6      Ф6      г6      Г6      «6      »6      ░6      ▒6      ▓6      │6      ┤6      х6      Х6      и6      И6      ╣6      ║6      ╗6      ╝6      й6      Й6      ┐6      └6      ┴6      ┬6      ├6      ─6      ┼6      к6      К6      ╚6      ╔6      ╩6      ╦6      ╠6      ═6      ╬6      ¤6      л6      Л6      м6      М6      н6      Н6      о6      О6      п6      ┘6      ┌6      █6      ▄6      П6      я6      ▀6      Я6      р6      Р6      с6      С6      т6      Т6      у6      У6      ж6      Ж6      в6      В6      ь6      Ь6      №6      ­6      ы6      Ы6      з6      З6      ш6      Ш6      э6      Э6      щ6      Щ6      ч6      Ч6      §6      ■6       6       7      7      7      7      7      7      7      7      7      	7      
7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7       7      !7      "7      #7      $7      %7      &7      '7      (7      )7      *7      +7      ,7      -7      .7      /7      07      17      27      37      47      57      67      77      87      97      :7      ;7      <7      =7      >7      ?7      @7      A7      B7      C7      D7      E7      F7      G7      H7      I7      J7      K7      L7      M7      N7      O7      P7      Q7      R7      S7      T7      U7      V7      W7      X7      Y7      Z7      [7      \7      ]7      ^7      _7      `7      a7      b7      c7      d7      e7      f7      g7      h7      i7      j7      k7      l7      m7      n7      o7      p7      q7      r7      s7      t7      u7      v7      w7      x7      y7      z7      {7      |7      }7      ~7      7      ђ7      Ђ7      ѓ7      Ѓ7      ё7      Ё7      є7      Є7      ѕ7      Ѕ7      і7      І7      ї7      Ї7      ј7      Ј7      љ7      Љ7      њ7      Њ7      ћ7      Ћ7      ќ7      Ќ7      ў7      Ў7      џ7      Џ7      ю7      Ю7      ъ7      Ъ7      а7      А7      б7      Б7      ц7      Ц7      д7      Д7      е7      Е7      ф7      Ф7      г7      Г7      «7      »7      ░7      ▒7      ▓7      │7      ┤7      х7      Х7      и7      И7      ╣7      ║7      ╗7      ╝7      й7      Й7      ┐7      └7      ┴7      ┬7      ├7      ─7      ┼7      к7      К7      ╚7      ╔7      ╩7      ╦7      ╠7      ═7      ╬7      ¤7      л7      Л7      м7      М7      н7      Н7      о7      О7      п7      ┘7      ┌7      █7      ▄7      П7      я7      ▀7      Я7      р7      Р7      с7      С7      т7      Т7      у7      У7      ж7      Ж7      в7      В7      ь7      Ь7      №7      ­7      ы7      Ы7      з7      З7      ш7      Ш7      э7      Э7      щ7      Щ7      ч7      Ч7      §7      ■7       7       8      8      8      8      8      8      8      8      8      	8      
8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8       8      !8      "8      #8      $8      %8      &8      '8      (8      )8      *8      +8      ,8      -8      .8      /8      08      18      28      38      48      58      68      78      88      98      :8      ;8      <8      =8      >8      ?8      @8      A8      B8      C8      D8      E8      F8      G8      H8      I8      J8      K8      L8      M8      N8      O8      P8      Q8      R8      S8      T8      U8      V8      W8      X8      Y8      Z8      [8      \8      ]8      ^8      _8      `8      a8      b8      c8      d8      e8      f8      g8      h8      i8      j8      k8      l8      m8      n8      o8      p8      q8      r8      s8      t8      u8      v8      w8      x8      y8      z8      {8      |8      }8      ~8      8      ђ8      Ђ8      ѓ8      Ѓ8      ё8      Ё8      є8      Є8      ѕ8      Ѕ8      і8      І8      ї8      Ї8      ј8      Ј8      љ8      Љ8      њ8      Њ8      ћ8      Ћ8      ќ8      Ќ8      ў8      Ў8      џ8      Џ8      ю8      Ю8      ъ8      Ъ8      а8      А8      б8      Б8      ц8      Ц8      д8      Д8      е8      Е8      ф8      Ф8      г8      Г8      «8      »8      ░8      ▒8      ▓8      │8      ┤8      х8      Х8      и8      И8      ╣8      ║8      ╗8      ╝8      й8      Й8      ┐8      └8      ┴8      ┬8      ├8      ─8      ┼8      к8      К8      ╚8      ╔8      ╩8      ╦8      ╠8      ═8      ╬8      ¤8      л8      Л8      м8      М8      н8      Н8      о8      О8      п8      ┘8      ┌8      █8      ▄8      П8      я8      ▀8      Я8      р8      Р8      с8      С8      т8      Т8      у8      У8      ж8      Ж8      в8      В8      ь8      Ь8      №8      ­8      ы8      Ы8      з8      З8      ш8      Ш8      э8      Э8      щ8      Щ8      ч8      Ч8      §8      ■8       8       9      9      9      9      9      9      9      9      9      	9      
9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9       9      !9      "9      #9      $9      %9      &9      '9      (9      )9      *9      +9      ,9      -9      .9      /9      09      19      29      39      49      59      69      79      89      99      :9      ;9      <9      =9      >9      ?9      @9      A9      B9      C9      D9      E9      F9      G9      H9      I9      J9      K9      L9      M9      N9      O9      P9      Q9      R9      S9      T9      U9      V9      W9      X9      Y9      Z9      [9      \9      ]9      ^9      _9      `9      a9      b9      c9      d9      e9      f9      g9      h9      i9      j9      k9      l9      m9      n9      o9      p9      q9      r9      s9      t9      u9      v9      w9      x9      y9      z9      {9      |9      }9      ~9      9      ђ9      Ђ9      ѓ9      Ѓ9      ё9      Ё9      є9      Є9      ѕ9      Ѕ9      і9      І9      ї9      Ї9      ј9      Ј9      љ9      Љ9      њ9      Њ9      ћ9      Ћ9      ќ9      Ќ9      ў9      Ў9      џ9      Џ9      ю9      Ю9      ъ9      Ъ9      а9      А9      б9      Б9      ц9      Ц9      д9      Д9      е9      Е9      ф9      Ф9      г9      Г9      «9      »9      ░9      ▒9      ▓9      │9      ┤9      х9      Х9      и9      И9      ╣9      ║9      ╗9      ╝9      й9      Й9      ┐9      └9      ┴9      ┬9      ├9      ─9      ┼9      к9      К9      ╚9      ╔9      ╩9      ╦9      ╠9      ═9      ╬9      ¤9      л9      Л9      м9      М9      н9      Н9      о9      О9      п9      ┘9      ┌9      █9      ▄9      П9      я9      ▀9      Я9      р9      Р9      с9      С9      т9      Т9      у9      У9      ж9      Ж9      в9      В9      ь9      Ь9      №9      ­9      ы9      Ы9      з9      З9      ш9      Ш9      э9      Э9      щ9      Щ9      ч9      Ч9      §9      ■9       9       :      :      :      :      :      :      :      :      :      	:      
:      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :       :      !:      ":      #:      $:      %:      &:      ':      (:      ):      *:      +:      ,:      -:      .:      /:      0:      1:      2:      3:      4:      5:      6:      7:      8:      9:      ::      ;:      <:      =:      >:      ?:      @:      A:      B:      C:      D:      E:      F:      G:      H:      I:      J:      K:      L:      M:      N:      O:      P:      Q:      R:      S:      T:      U:      V:      W:      X:      Y:      Z:      [:      \:      ]:      ^:      _:      `:      a:      b:      c:      d:      e:      f:      g:      h:      i:      j:      k:      l:      m:      n:      o:      p:      q:      r:      s:      t:      u:      v:      w:      x:      y:      z:      {:      |:      }:      ~:      :      ђ:      Ђ:      ѓ:      Ѓ:      ё:      Ё:      є:      Є:      ѕ:      Ѕ:      і:      І:      ї:      Ї:      ј:      Ј:      љ:      Љ:      њ:      Њ:      ћ:      Ћ:      ќ:      Ќ:      
ю
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
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
GPU 2J 8ѓ *#
fR
__inference_<lambda>_52525
ж
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
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
GPU 2J 8ѓ *#
fR
__inference_<lambda>_52530
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
К
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
щ8
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*▓8
valueе8BЦ8 Bъ8
┤
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
"
_lookup_layer
	keras_api
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
Р
%iter

&beta_1

'beta_2
	(decay
)learning_ratemnmo mp*mq+mr,ms-mt.mu/mvvwvx vy*vz+v{,v|-v}.v~/v
?
1
*2
+3
,4
-5
.6
/7
8
 9
?
0
*1
+2
,3
-4
.5
/6
7
 8
 
Г
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
	regularization_losses
 
3
5lookup_table
6token_counts
7	keras_api
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
Г
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
ј
=
state_size

*kernel
+recurrent_kernel
,bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
 

*0
+1
,2

*0
+1
,2
 
╣

Bstates
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
ј
H
state_size

-kernel
.recurrent_kernel
/bias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
 

-0
.1
/2

-0
.1
/2
 
╣

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1

0
 1
 
Г
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
!	variables
"trainable_variables
#regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUElstm/lstm_cell/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUElstm/lstm_cell/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_1/lstm_cell_1/kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#lstm_1/lstm_cell_1/recurrent_kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUElstm_1/lstm_cell_1/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
 
#
0
1
2
3
4

X0
Y1
 
 

Z_initializer
LJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table
 
 
 
 
 
 
 

*0
+1
,2

*0
+1
,2
 
Г
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
>	variables
?trainable_variables
@regularization_losses
 
 

0
 
 
 
 

-0
.1
/2

-0
.1
/2
 
Г
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
 
 

0
 
 
 
 
 
 
 
 
4
	etotal
	fcount
g	variables
h	keras_api
D
	itotal
	jcount
k
_fn_kwargs
l	variables
m	keras_api
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

e0
f1

g	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

i0
j1

l	variables
ѕЁ
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ѓђ
VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ѕЁ
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѓђ
VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѓ
(serving_default_text_vectorization_inputPlaceholder*#
_output_shapes
:         *
dtype0*
shape:         
Н
StatefulPartitionedCall_1StatefulPartitionedCall(serving_default_text_vectorization_input
hash_tableConstConst_1Const_2embedding/embeddingslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biaslstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biasdense/kernel
dense/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8ѓ *,
f'R%
#__inference_signature_wrapper_50052
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ч
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOp-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOp7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOp+lstm_1/lstm_cell_1/bias/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpConst_6*3
Tin,
*2(		*
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
GPU 2J 8ѓ *'
f"R 
__inference__traced_save_52675
▒	
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biaslstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biasMutableHashTabletotalcounttotal_1count_1Adam/embedding/embeddings/mAdam/dense/kernel/mAdam/dense/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/m Adam/lstm_1/lstm_cell_1/kernel/m*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mAdam/lstm_1/lstm_cell_1/bias/mAdam/embedding/embeddings/vAdam/dense/kernel/vAdam/dense/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v Adam/lstm_1/lstm_cell_1/kernel/v*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vAdam/lstm_1/lstm_cell_1/bias/v*1
Tin*
(2&*
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
GPU 2J 8ѓ **
f%R#
!__inference__traced_restore_52796йч%
ѕ
▓
&__inference_lstm_1_layer_call_fn_51558
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_48846o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
НL
ђ
"sequential_lstm_1_while_body_48016@
<sequential_lstm_1_while_sequential_lstm_1_while_loop_counterF
Bsequential_lstm_1_while_sequential_lstm_1_while_maximum_iterations'
#sequential_lstm_1_while_placeholder)
%sequential_lstm_1_while_placeholder_1)
%sequential_lstm_1_while_placeholder_2)
%sequential_lstm_1_while_placeholder_3?
;sequential_lstm_1_while_sequential_lstm_1_strided_slice_1_0{
wsequential_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0V
Dsequential_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0: X
Fsequential_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0: S
Esequential_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0: $
 sequential_lstm_1_while_identity&
"sequential_lstm_1_while_identity_1&
"sequential_lstm_1_while_identity_2&
"sequential_lstm_1_while_identity_3&
"sequential_lstm_1_while_identity_4&
"sequential_lstm_1_while_identity_5=
9sequential_lstm_1_while_sequential_lstm_1_strided_slice_1y
usequential_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensorT
Bsequential_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource: V
Dsequential_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource: Q
Csequential_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource: ѕб:sequential/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOpб9sequential/lstm_1/while/lstm_cell_1/MatMul/ReadVariableOpб;sequential/lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOpџ
Isequential/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ђ
;sequential/lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemwsequential_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0#sequential_lstm_1_while_placeholderRsequential/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Й
9sequential/lstm_1/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpDsequential_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0ь
*sequential/lstm_1/while/lstm_cell_1/MatMulMatMulBsequential/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0Asequential/lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ┬
;sequential/lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpFsequential_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0н
,sequential/lstm_1/while/lstm_cell_1/MatMul_1MatMul%sequential_lstm_1_while_placeholder_2Csequential/lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          л
'sequential/lstm_1/while/lstm_cell_1/addAddV24sequential/lstm_1/while/lstm_cell_1/MatMul:product:06sequential/lstm_1/while/lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          ╝
:sequential/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpEsequential_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0┘
+sequential/lstm_1/while/lstm_cell_1/BiasAddBiasAdd+sequential/lstm_1/while/lstm_cell_1/add:z:0Bsequential/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          u
3sequential/lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :б
)sequential/lstm_1/while/lstm_cell_1/splitSplit<sequential/lstm_1/while/lstm_cell_1/split/split_dim:output:04sequential/lstm_1/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitю
+sequential/lstm_1/while/lstm_cell_1/SigmoidSigmoid2sequential/lstm_1/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:         ъ
-sequential/lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid2sequential/lstm_1/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:         ║
'sequential/lstm_1/while/lstm_cell_1/mulMul1sequential/lstm_1/while/lstm_cell_1/Sigmoid_1:y:0%sequential_lstm_1_while_placeholder_3*
T0*'
_output_shapes
:         ќ
(sequential/lstm_1/while/lstm_cell_1/ReluRelu2sequential/lstm_1/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:         ╦
)sequential/lstm_1/while/lstm_cell_1/mul_1Mul/sequential/lstm_1/while/lstm_cell_1/Sigmoid:y:06sequential/lstm_1/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         └
)sequential/lstm_1/while/lstm_cell_1/add_1AddV2+sequential/lstm_1/while/lstm_cell_1/mul:z:0-sequential/lstm_1/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         ъ
-sequential/lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid2sequential/lstm_1/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:         Њ
*sequential/lstm_1/while/lstm_cell_1/Relu_1Relu-sequential/lstm_1/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         ¤
)sequential/lstm_1/while/lstm_cell_1/mul_2Mul1sequential/lstm_1/while/lstm_cell_1/Sigmoid_2:y:08sequential/lstm_1/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         ї
<sequential/lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem%sequential_lstm_1_while_placeholder_1#sequential_lstm_1_while_placeholder-sequential/lstm_1/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм_
sequential/lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :њ
sequential/lstm_1/while/addAddV2#sequential_lstm_1_while_placeholder&sequential/lstm_1/while/add/y:output:0*
T0*
_output_shapes
: a
sequential/lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :»
sequential/lstm_1/while/add_1AddV2<sequential_lstm_1_while_sequential_lstm_1_while_loop_counter(sequential/lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: Ј
 sequential/lstm_1/while/IdentityIdentity!sequential/lstm_1/while/add_1:z:0^sequential/lstm_1/while/NoOp*
T0*
_output_shapes
: ▓
"sequential/lstm_1/while/Identity_1IdentityBsequential_lstm_1_while_sequential_lstm_1_while_maximum_iterations^sequential/lstm_1/while/NoOp*
T0*
_output_shapes
: Ј
"sequential/lstm_1/while/Identity_2Identitysequential/lstm_1/while/add:z:0^sequential/lstm_1/while/NoOp*
T0*
_output_shapes
: ╝
"sequential/lstm_1/while/Identity_3IdentityLsequential/lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/lstm_1/while/NoOp*
T0*
_output_shapes
: «
"sequential/lstm_1/while/Identity_4Identity-sequential/lstm_1/while/lstm_cell_1/mul_2:z:0^sequential/lstm_1/while/NoOp*
T0*'
_output_shapes
:         «
"sequential/lstm_1/while/Identity_5Identity-sequential/lstm_1/while/lstm_cell_1/add_1:z:0^sequential/lstm_1/while/NoOp*
T0*'
_output_shapes
:         Ћ
sequential/lstm_1/while/NoOpNoOp;^sequential/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp:^sequential/lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp<^sequential/lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "M
 sequential_lstm_1_while_identity)sequential/lstm_1/while/Identity:output:0"Q
"sequential_lstm_1_while_identity_1+sequential/lstm_1/while/Identity_1:output:0"Q
"sequential_lstm_1_while_identity_2+sequential/lstm_1/while/Identity_2:output:0"Q
"sequential_lstm_1_while_identity_3+sequential/lstm_1/while/Identity_3:output:0"Q
"sequential_lstm_1_while_identity_4+sequential/lstm_1/while/Identity_4:output:0"Q
"sequential_lstm_1_while_identity_5+sequential/lstm_1/while/Identity_5:output:0"ї
Csequential_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resourceEsequential_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0"ј
Dsequential_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resourceFsequential_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0"і
Bsequential_lstm_1_while_lstm_cell_1_matmul_readvariableop_resourceDsequential_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0"x
9sequential_lstm_1_while_sequential_lstm_1_strided_slice_1;sequential_lstm_1_while_sequential_lstm_1_strided_slice_1_0"­
usequential_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensorwsequential_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2x
:sequential/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp:sequential/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp2v
9sequential/lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp9sequential/lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp2z
;sequential/lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp;sequential/lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
ѓ
F
__inference__creator_52473
identity: ѕбMutableHashTable|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
б
~
)__inference_embedding_layer_call_fn_50875

inputs	
unknown:	ўu 
identityѕбStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         7 *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_48918s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         7 `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         7: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         7
 
_user_specified_nameinputs
╝	
б
lstm_while_cond_50224&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1=
9lstm_while_lstm_while_cond_50224___redundant_placeholder0=
9lstm_while_lstm_while_cond_50224___redundant_placeholder1=
9lstm_while_lstm_while_cond_50224___redundant_placeholder2=
9lstm_while_lstm_while_cond_50224___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
Є"
┴
while_body_48194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0)
while_lstm_cell_48218_0: @)
while_lstm_cell_48220_0:@%
while_lstm_cell_48222_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor'
while_lstm_cell_48218: @'
while_lstm_cell_48220:@#
while_lstm_cell_48222:@ѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0а
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_48218_0while_lstm_cell_48220_0while_lstm_cell_48222_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_48180┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ї
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         Ї
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_48218while_lstm_cell_48218_0"0
while_lstm_cell_48220while_lstm_cell_48220_0"0
while_lstm_cell_48222while_lstm_cell_48222_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
▓6
«
while_body_51440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: @D
2while_lstm_cell_matmul_1_readvariableop_resource_0:@?
1while_lstm_cell_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: @B
0while_lstm_cell_matmul_1_readvariableop_resource:@=
/while_lstm_cell_biasadd_readvariableop_resource:@ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         К

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
╣"
╣
D__inference_lstm_cell_layer_call_and_return_conditional_losses_52312

inputs
states_0
states_10
matmul_readvariableop_resource: @2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         ќ
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         ╦
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:          :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
ЊR
Й
?__inference_lstm_layer_call_and_return_conditional_losses_51232
inputs_0:
(lstm_cell_matmul_readvariableop_resource: @<
*lstm_cell_matmul_1_readvariableop_resource:@7
)lstm_cell_biasadd_readvariableop_resource:@
identityѕб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                   D
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

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
value	B : э
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_51142*
condR
while_cond_51141*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
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
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    а
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  ы
NoOpNoOp8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                   : : : 2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                   
"
_user_specified_name
inputs/0
║7
└
while_body_51639
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_1_matmul_readvariableop_resource_0: F
4while_lstm_cell_1_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_1_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_1_matmul_readvariableop_resource: D
2while_lstm_cell_1_matmul_1_readvariableop_resource: ?
1while_lstm_cell_1_biasadd_readvariableop_resource: ѕб(while/lstm_cell_1/BiasAdd/ReadVariableOpб'while/lstm_cell_1/MatMul/ReadVariableOpб)while/lstm_cell_1/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0џ
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0и
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ъ
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0ъ
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          ў
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Б
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :В
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:         ё
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:         Ћ
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         і
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         Ў
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
░
Й
while_cond_51787
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_51787___redundant_placeholder03
/while_while_cond_51787___redundant_placeholder13
/while_while_cond_51787___redundant_placeholder23
/while_while_cond_51787___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
џ
,
__inference__destroyer_52483
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
▄?
а

lstm_1_while_body_50717*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0K
9lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0: M
;lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0: H
:lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0: 
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorI
7lstm_1_while_lstm_cell_1_matmul_readvariableop_resource: K
9lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource: F
8lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource: ѕб/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOpб.lstm_1/while/lstm_cell_1/MatMul/ReadVariableOpб0lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOpЈ
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╔
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0е
.lstm_1/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp9lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╠
lstm_1/while/lstm_cell_1/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          г
0lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp;lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0│
!lstm_1/while/lstm_cell_1/MatMul_1MatMullstm_1_while_placeholder_28lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          »
lstm_1/while/lstm_cell_1/addAddV2)lstm_1/while/lstm_cell_1/MatMul:product:0+lstm_1/while/lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          д
/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0И
 lstm_1/while/lstm_cell_1/BiasAddBiasAdd lstm_1/while/lstm_cell_1/add:z:07lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          j
(lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ђ
lstm_1/while/lstm_cell_1/splitSplit1lstm_1/while/lstm_cell_1/split/split_dim:output:0)lstm_1/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitє
 lstm_1/while/lstm_cell_1/SigmoidSigmoid'lstm_1/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:         ѕ
"lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid'lstm_1/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:         Ў
lstm_1/while/lstm_cell_1/mulMul&lstm_1/while/lstm_cell_1/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*'
_output_shapes
:         ђ
lstm_1/while/lstm_cell_1/ReluRelu'lstm_1/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:         ф
lstm_1/while/lstm_cell_1/mul_1Mul$lstm_1/while/lstm_cell_1/Sigmoid:y:0+lstm_1/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         Ъ
lstm_1/while/lstm_cell_1/add_1AddV2 lstm_1/while/lstm_cell_1/mul:z:0"lstm_1/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         ѕ
"lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid'lstm_1/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:         }
lstm_1/while/lstm_cell_1/Relu_1Relu"lstm_1/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         «
lstm_1/while/lstm_cell_1/mul_2Mul&lstm_1/while/lstm_cell_1/Sigmoid_2:y:0-lstm_1/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         Я
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder"lstm_1/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмT
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: є
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations^lstm_1/while/NoOp*
T0*
_output_shapes
: n
lstm_1/while/Identity_2Identitylstm_1/while/add:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: Џ
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_1/while/NoOp*
T0*
_output_shapes
: Ї
lstm_1/while/Identity_4Identity"lstm_1/while/lstm_cell_1/mul_2:z:0^lstm_1/while/NoOp*
T0*'
_output_shapes
:         Ї
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_1/add_1:z:0^lstm_1/while/NoOp*
T0*'
_output_shapes
:         ж
lstm_1/while/NoOpNoOp0^lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp/^lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp1^lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"v
8lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource:lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0"x
9lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource;lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0"t
7lstm_1_while_lstm_cell_1_matmul_readvariableop_resource9lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0"─
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2b
/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp2`
.lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp.lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp2d
0lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp0lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
▓6
«
while_body_49546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: @D
2while_lstm_cell_matmul_1_readvariableop_resource_0:@?
1while_lstm_cell_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: @B
0while_lstm_cell_matmul_1_readvariableop_resource:@=
/while_lstm_cell_biasadd_readvariableop_resource:@ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         К

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
є
э
__inference__initializer_524637
3key_value_init1548_lookuptableimportv2_table_handle/
+key_value_init1548_lookuptableimportv2_keys1
-key_value_init1548_lookuptableimportv2_values	
identityѕб&key_value_init1548/LookupTableImportV2ч
&key_value_init1548/LookupTableImportV2LookupTableImportV23key_value_init1548_lookuptableimportv2_table_handle+key_value_init1548_lookuptableimportv2_keys-key_value_init1548_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init1548/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :ќu:ќu2P
&key_value_init1548/LookupTableImportV2&key_value_init1548/LookupTableImportV2:!

_output_shapes	
:ќu:!

_output_shapes	
:ќu
ѕA
и
A__inference_lstm_1_layer_call_and_return_conditional_losses_48643

inputs#
lstm_cell_1_48555: #
lstm_cell_1_48557: 
lstm_cell_1_48559: 
identityѕб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpб#lstm_cell_1/StatefulPartitionedCallбwhile;
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskВ
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_48555lstm_cell_1_48557lstm_cell_1_48559*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_48554n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
value	B : »
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_48555lstm_cell_1_48557lstm_cell_1_48559*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_48568*
condR
while_cond_48567*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
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
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ї
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_1_48555*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ▓
NoOpNoOp<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
№"
й
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_48712

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         џ
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         ¤
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
Ё
з
__inference_<lambda>_525257
3key_value_init1548_lookuptableimportv2_table_handle/
+key_value_init1548_lookuptableimportv2_keys1
-key_value_init1548_lookuptableimportv2_values	
identityѕб&key_value_init1548/LookupTableImportV2ч
&key_value_init1548/LookupTableImportV2LookupTableImportV23key_value_init1548_lookuptableimportv2_table_handle+key_value_init1548_lookuptableimportv2_keys-key_value_init1548_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init1548/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :ќu:ќu2P
&key_value_init1548/LookupTableImportV2&key_value_init1548/LookupTableImportV2:!

_output_shapes	
:ќu:!

_output_shapes	
:ќu
Я
№
)__inference_lstm_cell_layer_call_fn_52236

inputs
states_0
states_1
unknown: @
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ѕбStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_48338o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:          :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:          
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
╝	
б
lstm_while_cond_50577&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1=
9lstm_while_lstm_while_cond_50577___redundant_placeholder0=
9lstm_while_lstm_while_cond_50577___redundant_placeholder1=
9lstm_while_lstm_while_cond_50577___redundant_placeholder2=
9lstm_while_lstm_while_cond_50577___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
З
«
$__inference_lstm_layer_call_fn_50934

inputs
unknown: @
	unknown_0:@
	unknown_1:@
identityѕбStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         7*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_49636s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         7`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         7 : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         7 
 
_user_specified_nameinputs
«@
Е
?__inference_lstm_layer_call_and_return_conditional_losses_48472

inputs!
lstm_cell_48384: @!
lstm_cell_48386:@
lstm_cell_48388:@
identityѕб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpб!lstm_cell/StatefulPartitionedCallбwhile;
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                   D
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

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskР
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_48384lstm_cell_48386lstm_cell_48388*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_48338n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_48384lstm_cell_48386lstm_cell_48388*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_48397*
condR
while_cond_48396*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
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
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Є
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_48384*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  г
NoOpNoOp8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                   : : : 2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs
║7
└
while_body_49375
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_1_matmul_readvariableop_resource_0: F
4while_lstm_cell_1_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_1_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_1_matmul_readvariableop_resource: D
2while_lstm_cell_1_matmul_1_readvariableop_resource: ?
1while_lstm_cell_1_biasadd_readvariableop_resource: ѕб(while/lstm_cell_1/BiasAdd/ReadVariableOpб'while/lstm_cell_1/MatMul/ReadVariableOpб)while/lstm_cell_1/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0џ
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0и
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ъ
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0ъ
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          ў
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Б
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :В
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:         ё
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:         Ћ
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         і
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         Ў
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Є"
┴
while_body_48397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0)
while_lstm_cell_48421_0: @)
while_lstm_cell_48423_0:@%
while_lstm_cell_48425_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor'
while_lstm_cell_48421: @'
while_lstm_cell_48423:@#
while_lstm_cell_48425:@ѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0а
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_48421_0while_lstm_cell_48423_0while_lstm_cell_48425_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_48338┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ї
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         Ї
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_48421while_lstm_cell_48421_0"0
while_lstm_cell_48423while_lstm_cell_48423_0"0
while_lstm_cell_48425while_lstm_cell_48425_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
НQ
╝
?__inference_lstm_layer_call_and_return_conditional_losses_49070

inputs:
(lstm_cell_matmul_readvariableop_resource: @<
*lstm_cell_matmul_1_readvariableop_resource:@7
)lstm_cell_biasadd_readvariableop_resource:@
identityѕб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:7          D
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

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
value	B : э
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_48980*
condR
while_cond_48979*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:7         *
element_dtype0h
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
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         7[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    а
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         7ы
NoOpNoOp8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         7 : : : 2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         7 
 
_user_specified_nameinputs
▒"
и
D__inference_lstm_cell_layer_call_and_return_conditional_losses_48338

inputs

states
states_10
matmul_readvariableop_resource: @2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         ќ
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         ╦
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:          :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
З
«
$__inference_lstm_layer_call_fn_50923

inputs
unknown: @
	unknown_0:@
	unknown_1:@
identityѕбStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         7*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_49070s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         7`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         7 : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         7 
 
_user_specified_nameinputs
пz
│
E__inference_sequential_layer_call_and_return_conditional_losses_49264

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	"
embedding_48919:	ўu 

lstm_49071: @

lstm_49073:@

lstm_49075:@
lstm_1_49227: 
lstm_1_49229: 
lstm_1_49231: 
dense_49246:
dense_49248:
identityѕбdense/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpбlstm_1/StatefulPartitionedCallб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpб>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:         л
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:         *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ┌
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:         :         :Ѓ
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ё
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Ё
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ц
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ђ
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskЛ
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:         ╚
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: У
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:Е
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: █
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: Ц
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : С
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: §
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: Ф
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ╠
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: А
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :┘
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ╠
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ═
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: Л
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ц
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ╩
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:         ъ
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : р
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:         ф
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ъ
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:         р
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:         Й
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:         Ё
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         Ќ
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:         q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ђ
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"        7       є
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:         7*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDSЏ
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_48919*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         7 *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_48918Њ
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_49071
lstm_49073
lstm_49075*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         7*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_49070ћ
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0lstm_1_49227lstm_1_49229lstm_1_49231*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_49226ѓ
dense/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_49246dense_49248*
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
GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_49245ѓ
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOp
lstm_49071*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ѕ
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_1_49227*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ѓ
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp^lstm_1/StatefulPartitionedCall<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp2ђ
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:         
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
┼
ц
#__inference_signature_wrapper_50052
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	ўu 
	unknown_4: @
	unknown_5:@
	unknown_6:@
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10:

unknown_11:
identityѕбStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__wrapped_model_48107o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
#
_output_shapes
:         
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ЗP
╚
__inference__traced_save_52675
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop8
4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableopB
>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop6
2savev2_lstm_1_lstm_cell_1_bias_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableop
savev2_const_6

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ъ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*╚
valueЙB╗'B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╗
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Џ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_1_bias_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1 savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *5
dtypes+
)2'		љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
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

identity_1Identity_1:output:0*а
_input_shapesј
І: :	ўu ::: : : : : : @:@:@: : : ::: : : : :	ўu ::: @:@:@: : : :	ўu ::: @:@:@: : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	ўu :$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$	 

_output_shapes

: @:$
 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ўu :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

: @:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
: :%!

_output_shapes
:	ўu :$ 

_output_shapes

::  

_output_shapes
::$! 

_output_shapes

: @:$" 

_output_shapes

:@: #

_output_shapes
:@:$$ 

_output_shapes

: :$% 

_output_shapes

: : &

_output_shapes
: :'

_output_shapes
: 
░
Й
while_cond_49374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_49374___redundant_placeholder03
/while_while_cond_49374___redundant_placeholder13
/while_while_cond_49374___redundant_placeholder23
/while_while_cond_49374___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
░
Й
while_cond_48567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_48567___redundant_placeholder03
/while_while_cond_48567___redundant_placeholder13
/while_while_cond_48567___redundant_placeholder23
/while_while_cond_48567___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ы
■
 sequential_lstm_while_cond_47876<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3>
:sequential_lstm_while_less_sequential_lstm_strided_slice_1S
Osequential_lstm_while_sequential_lstm_while_cond_47876___redundant_placeholder0S
Osequential_lstm_while_sequential_lstm_while_cond_47876___redundant_placeholder1S
Osequential_lstm_while_sequential_lstm_while_cond_47876___redundant_placeholder2S
Osequential_lstm_while_sequential_lstm_while_cond_47876___redundant_placeholder3"
sequential_lstm_while_identity
б
sequential/lstm/while/LessLess!sequential_lstm_while_placeholder:sequential_lstm_while_less_sequential_lstm_strided_slice_1*
T0*
_output_shapes
: k
sequential/lstm/while/IdentityIdentitysequential/lstm/while/Less:z:0*
T0
*
_output_shapes
: "I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
░
Й
while_cond_48193
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_48193___redundant_placeholder03
/while_while_cond_48193___redundant_placeholder13
/while_while_cond_48193___redundant_placeholder23
/while_while_cond_48193___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
пz
│
E__inference_sequential_layer_call_and_return_conditional_losses_49771

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	"
embedding_49736:	ўu 

lstm_49739: @

lstm_49741:@

lstm_49743:@
lstm_1_49746: 
lstm_1_49748: 
lstm_1_49750: 
dense_49753:
dense_49755:
identityѕбdense/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpбlstm_1/StatefulPartitionedCallб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpб>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:         л
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:         *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ┌
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:         :         :Ѓ
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ё
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Ё
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ц
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ђ
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskЛ
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:         ╚
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: У
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:Е
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: █
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: Ц
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : С
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: §
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: Ф
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ╠
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: А
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :┘
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ╠
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ═
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: Л
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ц
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ╩
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:         ъ
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : р
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:         ф
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ъ
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:         р
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:         Й
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:         Ё
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         Ќ
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:         q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ђ
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"        7       є
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:         7*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDSЏ
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_49736*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         7 *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_48918Њ
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_49739
lstm_49741
lstm_49743*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         7*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_49636ћ
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0lstm_1_49746lstm_1_49748lstm_1_49750*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_49465ѓ
dense/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_49753dense_49755*
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
GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_49245ѓ
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOp
lstm_49739*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ѕ
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_1_49746*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ѓ
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp^lstm_1/StatefulPartitionedCall<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp2ђ
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:         
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
џ
,
__inference__destroyer_52468
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
╬љ
├
E__inference_sequential_layer_call_and_return_conditional_losses_50467

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	3
 embedding_embedding_lookup_50164:	ўu ?
-lstm_lstm_cell_matmul_readvariableop_resource: @A
/lstm_lstm_cell_matmul_1_readvariableop_resource:@<
.lstm_lstm_cell_biasadd_readvariableop_resource:@C
1lstm_1_lstm_cell_1_matmul_readvariableop_resource: E
3lstm_1_lstm_cell_1_matmul_1_readvariableop_resource: @
2lstm_1_lstm_cell_1_biasadd_readvariableop_resource: 6
$dense_matmul_readvariableop_resource:3
%dense_biasadd_readvariableop_resource:
identityѕбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpбembedding/embedding_lookupб%lstm/lstm_cell/BiasAdd/ReadVariableOpб$lstm/lstm_cell/MatMul/ReadVariableOpб&lstm/lstm_cell/MatMul_1/ReadVariableOpб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpб
lstm/whileб)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpб(lstm_1/lstm_cell_1/MatMul/ReadVariableOpб*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpбlstm_1/whileб>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:         л
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:         *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ┌
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:         :         :Ѓ
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ё
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Ё
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ц
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ђ
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskЛ
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:         ╚
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: У
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:Е
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: █
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: Ц
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : С
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: §
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: Ф
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ╠
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: А
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :┘
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ╠
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ═
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: Л
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ц
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ╩
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:         ъ
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : р
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:         ф
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ъ
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:         р
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:         Й
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:         Ё
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         Ќ
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:         q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ђ
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"        7       є
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:         7*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDSј
embedding/embedding_lookupResourceGather embedding_embedding_lookup_50164?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/50164*+
_output_shapes
:         7 *
dtype0┐
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/50164*+
_output_shapes
:         7 Ћ
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         7 h

lstm/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ѓ
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:         W
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :є
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:         h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
lstm/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0lstm/transpose/perm:output:0*
T0*+
_output_shapes
:7          N
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ├
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмІ
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        №
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмd
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskњ
$lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0ъ
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0,lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ќ
&lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp/lstm_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0ў
lstm/lstm_cell/MatMul_1MatMullstm/zeros:output:0.lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Љ
lstm/lstm_cell/addAddV2lstm/lstm_cell/MatMul:product:0!lstm/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @љ
%lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp.lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0џ
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/add:z:0-lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0lstm/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitr
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:         t
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
lstm/lstm_cell/mulMullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:         l
lstm/lstm_cell/ReluRelulstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ї
lstm/lstm_cell/mul_1Mullstm/lstm_cell/Sigmoid:y:0!lstm/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         Ђ
lstm/lstm_cell/add_1AddV2lstm/lstm_cell/mul:z:0lstm/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         t
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:         i
lstm/lstm_cell/Relu_1Relulstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         љ
lstm/lstm_cell/mul_2Mullstm/lstm_cell/Sigmoid_2:y:0#lstm/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       К
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмK
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         Y
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : й

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0-lstm_lstm_cell_matmul_readvariableop_resource/lstm_lstm_cell_matmul_1_readvariableop_resource.lstm_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *!
bodyR
lstm_while_body_50225*!
condR
lstm_while_cond_50224*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations є
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Л
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:7         *
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         f
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:         7`
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    P
lstm_1/ShapeShapelstm/transpose_1:y:0*
T0*
_output_shapes
:d
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:         Y
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ї
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:         j
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѕ
lstm_1/transpose	Transposelstm/transpose_1:y:0lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:7         R
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:f
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╔
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЇ
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ш
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмf
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskџ
(lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp1lstm_1_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0е
lstm_1/lstm_cell_1/MatMulMatMullstm_1/strided_slice_2:output:00lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ъ
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp3lstm_1_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0б
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/zeros:output:02lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/MatMul:product:0%lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          ў
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0д
lstm_1/lstm_cell_1/BiasAddBiasAddlstm_1/lstm_cell_1/add:z:01lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0#lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
lstm_1/lstm_cell_1/SigmoidSigmoid!lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:         |
lstm_1/lstm_cell_1/Sigmoid_1Sigmoid!lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:         і
lstm_1/lstm_cell_1/mulMul lstm_1/lstm_cell_1/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:         t
lstm_1/lstm_cell_1/ReluRelu!lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:         ў
lstm_1/lstm_cell_1/mul_1Mullstm_1/lstm_cell_1/Sigmoid:y:0%lstm_1/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         Ї
lstm_1/lstm_cell_1/add_1AddV2lstm_1/lstm_cell_1/mul:z:0lstm_1/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         |
lstm_1/lstm_cell_1/Sigmoid_2Sigmoid!lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:         q
lstm_1/lstm_cell_1/Relu_1Relulstm_1/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         ю
lstm_1/lstm_cell_1/mul_2Mul lstm_1/lstm_cell_1/Sigmoid_2:y:0'lstm_1/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         u
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ═
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмM
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         [
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▀
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_1_lstm_cell_1_matmul_readvariableop_resource3lstm_1_lstm_cell_1_matmul_1_readvariableop_resource2lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_1_while_body_50364*#
condR
lstm_1_while_cond_50363*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations ѕ
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       О
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:7         *
element_dtype0o
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         h
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ф
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskl
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ф
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:         7b
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ђ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0ј
dense/MatMulMatMullstm_1/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:         Ц
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp1lstm_1_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ы
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup&^lstm/lstm_cell/BiasAdd/ReadVariableOp%^lstm/lstm_cell/MatMul/ReadVariableOp'^lstm/lstm_cell/MatMul_1/ReadVariableOp8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp^lstm/while*^lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)^lstm_1/lstm_cell_1/MatMul/ReadVariableOp+^lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp^lstm_1/while?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2N
%lstm/lstm_cell/BiasAdd/ReadVariableOp%lstm/lstm_cell/BiasAdd/ReadVariableOp2L
$lstm/lstm_cell/MatMul/ReadVariableOp$lstm/lstm_cell/MatMul/ReadVariableOp2P
&lstm/lstm_cell/MatMul_1/ReadVariableOp&lstm/lstm_cell/MatMul_1/ReadVariableOp2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp2

lstm/while
lstm/while2V
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp2T
(lstm_1/lstm_cell_1/MatMul/ReadVariableOp(lstm_1/lstm_cell_1/MatMul/ReadVariableOp2X
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp2
lstm_1/whilelstm_1/while2ђ
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:         
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
э"
┐
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_52401

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         џ
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         ¤
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
э"
┐
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_52439

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         џ
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         ¤
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
и"
¤
while_body_48568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_1_48592_0: +
while_lstm_cell_1_48594_0: '
while_lstm_cell_1_48596_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_1_48592: )
while_lstm_cell_1_48594: %
while_lstm_cell_1_48596: ѕб)while/lstm_cell_1/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ф
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_48592_0while_lstm_cell_1_48594_0while_lstm_cell_1_48596_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_48554█
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ј
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         Ј
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         x

while/NoOpNoOp*^while/lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1_48592while_lstm_cell_1_48592_0"4
while_lstm_cell_1_48594while_lstm_cell_1_48594_0"4
while_lstm_cell_1_48596while_lstm_cell_1_48596_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
ц<
╬	
lstm_while_body_50578&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0G
5lstm_while_lstm_cell_matmul_readvariableop_resource_0: @I
7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0:@D
6lstm_while_lstm_cell_biasadd_readvariableop_resource_0:@
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorE
3lstm_while_lstm_cell_matmul_readvariableop_resource: @G
5lstm_while_lstm_cell_matmul_1_readvariableop_resource:@B
4lstm_while_lstm_cell_biasadd_readvariableop_resource:@ѕб+lstm/while/lstm_cell/BiasAdd/ReadVariableOpб*lstm/while/lstm_cell/MatMul/ReadVariableOpб,lstm/while/lstm_cell/MatMul_1/ReadVariableOpЇ
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ┐
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0а
*lstm/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype0┬
lstm/while/lstm_cell/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:02lstm/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ц
,lstm/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0Е
lstm/while/lstm_cell/MatMul_1MatMullstm_while_placeholder_24lstm/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Б
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/MatMul:product:0'lstm/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @ъ
+lstm/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0г
lstm/while/lstm_cell/BiasAddBiasAddlstm/while/lstm_cell/add:z:03lstm/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @f
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:0%lstm/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split~
lstm/while/lstm_cell/SigmoidSigmoid#lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         ђ
lstm/while/lstm_cell/Sigmoid_1Sigmoid#lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         Ј
lstm/while/lstm_cell/mulMul"lstm/while/lstm_cell/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*'
_output_shapes
:         x
lstm/while/lstm_cell/ReluRelu#lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ъ
lstm/while/lstm_cell/mul_1Mul lstm/while/lstm_cell/Sigmoid:y:0'lstm/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         Њ
lstm/while/lstm_cell/add_1AddV2lstm/while/lstm_cell/mul:z:0lstm/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         ђ
lstm/while/lstm_cell/Sigmoid_2Sigmoid#lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         u
lstm/while/lstm_cell/Relu_1Relulstm/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         б
lstm/while/lstm_cell/mul_2Mul"lstm/while/lstm_cell/Sigmoid_2:y:0)lstm/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         о
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмR
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: Ћ
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: Ё
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_2:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:         Ё
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_1:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:         █
lstm/while/NoOpNoOp,^lstm/while/lstm_cell/BiasAdd/ReadVariableOp+^lstm/while/lstm_cell/MatMul/ReadVariableOp-^lstm/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"n
4lstm_while_lstm_cell_biasadd_readvariableop_resource6lstm_while_lstm_cell_biasadd_readvariableop_resource_0"p
5lstm_while_lstm_cell_matmul_1_readvariableop_resource7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0"l
3lstm_while_lstm_cell_matmul_readvariableop_resource5lstm_while_lstm_cell_matmul_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"╝
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2Z
+lstm/while/lstm_cell/BiasAdd/ReadVariableOp+lstm/while/lstm_cell/BiasAdd/ReadVariableOp2X
*lstm/while/lstm_cell/MatMul/ReadVariableOp*lstm/while/lstm_cell/MatMul/ReadVariableOp2\
,lstm/while/lstm_cell/MatMul_1/ReadVariableOp,lstm/while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
в
─
__inference_loss_fn_1_52450V
Dlstm_1_lstm_cell_1_kernel_regularizer_square_readvariableop_resource: 
identityѕб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp└
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpDlstm_1_lstm_cell_1_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: k
IdentityIdentity-lstm_1/lstm_cell_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ё
NoOpNoOp<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp
ы
Ф
*__inference_sequential_layer_call_fn_49293
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	ўu 
	unknown_4: @
	unknown_5:@
	unknown_6:@
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10:

unknown_11:
identityѕбStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_49264o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
#
_output_shapes
:         
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
║7
└
while_body_49136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_1_matmul_readvariableop_resource_0: F
4while_lstm_cell_1_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_1_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_1_matmul_readvariableop_resource: D
2while_lstm_cell_1_matmul_1_readvariableop_resource: ?
1while_lstm_cell_1_biasadd_readvariableop_resource: ѕб(while/lstm_cell_1/BiasAdd/ReadVariableOpб'while/lstm_cell_1/MatMul/ReadVariableOpб)while/lstm_cell_1/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0џ
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0и
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ъ
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0ъ
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          ў
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Б
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :В
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:         ё
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:         Ћ
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         і
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         Ў
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
╗
Ў
*__inference_sequential_layer_call_fn_50083

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	ўu 
	unknown_4: @
	unknown_5:@
	unknown_6:@
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10:

unknown_11:
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_49264o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:         
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
▓6
«
while_body_50993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: @D
2while_lstm_cell_matmul_1_readvariableop_resource_0:@?
1while_lstm_cell_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: @B
0while_lstm_cell_matmul_1_readvariableop_resource:@=
/while_lstm_cell_biasadd_readvariableop_resource:@ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         К

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
░
Й
while_cond_51638
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_51638___redundant_placeholder03
/while_while_cond_51638___redundant_placeholder13
/while_while_cond_51638___redundant_placeholder23
/while_while_cond_51638___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ѕ
▓
&__inference_lstm_1_layer_call_fn_51547
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_48643o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╬љ
├
E__inference_sequential_layer_call_and_return_conditional_losses_50820

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	3
 embedding_embedding_lookup_50517:	ўu ?
-lstm_lstm_cell_matmul_readvariableop_resource: @A
/lstm_lstm_cell_matmul_1_readvariableop_resource:@<
.lstm_lstm_cell_biasadd_readvariableop_resource:@C
1lstm_1_lstm_cell_1_matmul_readvariableop_resource: E
3lstm_1_lstm_cell_1_matmul_1_readvariableop_resource: @
2lstm_1_lstm_cell_1_biasadd_readvariableop_resource: 6
$dense_matmul_readvariableop_resource:3
%dense_biasadd_readvariableop_resource:
identityѕбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpбembedding/embedding_lookupб%lstm/lstm_cell/BiasAdd/ReadVariableOpб$lstm/lstm_cell/MatMul/ReadVariableOpб&lstm/lstm_cell/MatMul_1/ReadVariableOpб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpб
lstm/whileб)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpб(lstm_1/lstm_cell_1/MatMul/ReadVariableOpб*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpбlstm_1/whileб>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:         л
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:         *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ┌
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:         :         :Ѓ
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ё
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Ё
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ц
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ђ
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskЛ
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:         ╚
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: У
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:Е
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: █
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: Ц
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : С
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: §
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: Ф
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ╠
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: А
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :┘
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ╠
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ═
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: Л
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ц
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ╩
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:         ъ
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : р
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:         ф
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ъ
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:         р
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:         Й
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:         Ё
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         Ќ
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:         q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ђ
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"        7       є
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:         7*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDSј
embedding/embedding_lookupResourceGather embedding_embedding_lookup_50517?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/50517*+
_output_shapes
:         7 *
dtype0┐
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/50517*+
_output_shapes
:         7 Ћ
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         7 h

lstm/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ѓ
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:         W
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :є
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:         h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
lstm/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0lstm/transpose/perm:output:0*
T0*+
_output_shapes
:7          N
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ├
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмІ
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        №
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмd
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskњ
$lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0ъ
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0,lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ќ
&lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp/lstm_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0ў
lstm/lstm_cell/MatMul_1MatMullstm/zeros:output:0.lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Љ
lstm/lstm_cell/addAddV2lstm/lstm_cell/MatMul:product:0!lstm/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @љ
%lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp.lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0џ
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/add:z:0-lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0lstm/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitr
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:         t
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
lstm/lstm_cell/mulMullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:         l
lstm/lstm_cell/ReluRelulstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ї
lstm/lstm_cell/mul_1Mullstm/lstm_cell/Sigmoid:y:0!lstm/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         Ђ
lstm/lstm_cell/add_1AddV2lstm/lstm_cell/mul:z:0lstm/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         t
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:         i
lstm/lstm_cell/Relu_1Relulstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         љ
lstm/lstm_cell/mul_2Mullstm/lstm_cell/Sigmoid_2:y:0#lstm/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       К
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмK
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         Y
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : й

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0-lstm_lstm_cell_matmul_readvariableop_resource/lstm_lstm_cell_matmul_1_readvariableop_resource.lstm_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *!
bodyR
lstm_while_body_50578*!
condR
lstm_while_cond_50577*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations є
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Л
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:7         *
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         f
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:         7`
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    P
lstm_1/ShapeShapelstm/transpose_1:y:0*
T0*
_output_shapes
:d
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:         Y
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ї
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:         j
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѕ
lstm_1/transpose	Transposelstm/transpose_1:y:0lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:7         R
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:f
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╔
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЇ
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ш
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмf
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskџ
(lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp1lstm_1_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0е
lstm_1/lstm_cell_1/MatMulMatMullstm_1/strided_slice_2:output:00lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ъ
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp3lstm_1_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0б
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/zeros:output:02lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/MatMul:product:0%lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          ў
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0д
lstm_1/lstm_cell_1/BiasAddBiasAddlstm_1/lstm_cell_1/add:z:01lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0#lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
lstm_1/lstm_cell_1/SigmoidSigmoid!lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:         |
lstm_1/lstm_cell_1/Sigmoid_1Sigmoid!lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:         і
lstm_1/lstm_cell_1/mulMul lstm_1/lstm_cell_1/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:         t
lstm_1/lstm_cell_1/ReluRelu!lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:         ў
lstm_1/lstm_cell_1/mul_1Mullstm_1/lstm_cell_1/Sigmoid:y:0%lstm_1/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         Ї
lstm_1/lstm_cell_1/add_1AddV2lstm_1/lstm_cell_1/mul:z:0lstm_1/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         |
lstm_1/lstm_cell_1/Sigmoid_2Sigmoid!lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:         q
lstm_1/lstm_cell_1/Relu_1Relulstm_1/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         ю
lstm_1/lstm_cell_1/mul_2Mul lstm_1/lstm_cell_1/Sigmoid_2:y:0'lstm_1/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         u
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ═
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмM
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         [
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▀
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_1_lstm_cell_1_matmul_readvariableop_resource3lstm_1_lstm_cell_1_matmul_1_readvariableop_resource2lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_1_while_body_50717*#
condR
lstm_1_while_cond_50716*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations ѕ
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       О
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:7         *
element_dtype0o
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         h
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ф
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskl
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ф
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:         7b
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ђ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0ј
dense/MatMulMatMullstm_1/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:         Ц
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp1lstm_1_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ы
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup&^lstm/lstm_cell/BiasAdd/ReadVariableOp%^lstm/lstm_cell/MatMul/ReadVariableOp'^lstm/lstm_cell/MatMul_1/ReadVariableOp8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp^lstm/while*^lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)^lstm_1/lstm_cell_1/MatMul/ReadVariableOp+^lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp^lstm_1/while?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2N
%lstm/lstm_cell/BiasAdd/ReadVariableOp%lstm/lstm_cell/BiasAdd/ReadVariableOp2L
$lstm/lstm_cell/MatMul/ReadVariableOp$lstm/lstm_cell/MatMul/ReadVariableOp2P
&lstm/lstm_cell/MatMul_1/ReadVariableOp&lstm/lstm_cell/MatMul_1/ReadVariableOp2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp2

lstm/while
lstm/while2V
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp2T
(lstm_1/lstm_cell_1/MatMul/ReadVariableOp(lstm_1/lstm_cell_1/MatMul/ReadVariableOp2X
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp2
lstm_1/whilelstm_1/while2ђ
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:         
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
░
Й
while_cond_48396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_48396___redundant_placeholder03
/while_while_cond_48396___redundant_placeholder13
/while_while_cond_48396___redundant_placeholder23
/while_while_cond_48396___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ЉS
╬
A__inference_lstm_1_layer_call_and_return_conditional_losses_49465

inputs<
*lstm_cell_1_matmul_readvariableop_resource: >
,lstm_cell_1_matmul_1_readvariableop_resource: 9
+lstm_cell_1_biasadd_readvariableop_resource: 
identityѕб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpб"lstm_cell_1/BiasAdd/ReadVariableOpб!lstm_cell_1/MatMul/ReadVariableOpб#lstm_cell_1/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:7         D
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

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskї
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Њ
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          љ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ї
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѕ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          і
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Љ
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:         Ѓ
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         Є
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
value	B : §
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_49375*
condR
while_cond_49374*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:7         *
element_dtype0h
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
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         7[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    д
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ч
NoOpNoOp<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         7: : : 2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         7
 
_user_specified_nameinputs
░
Й
while_cond_49545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_49545___redundant_placeholder03
/while_while_cond_49545___redundant_placeholder13
/while_while_cond_49545___redundant_placeholder23
/while_while_cond_49545___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ЉS
╬
A__inference_lstm_1_layer_call_and_return_conditional_losses_52176

inputs<
*lstm_cell_1_matmul_readvariableop_resource: >
,lstm_cell_1_matmul_1_readvariableop_resource: 9
+lstm_cell_1_biasadd_readvariableop_resource: 
identityѕб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpб"lstm_cell_1/BiasAdd/ReadVariableOpб!lstm_cell_1/MatMul/ReadVariableOpб#lstm_cell_1/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:7         D
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

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskї
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Њ
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          љ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ї
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѕ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          і
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Љ
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:         Ѓ
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         Є
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
value	B : §
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_52086*
condR
while_cond_52085*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:7         *
element_dtype0h
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
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         7[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    д
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ч
NoOpNoOp<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         7: : : 2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         7
 
_user_specified_nameinputs
╗
Ў
*__inference_sequential_layer_call_fn_50114

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	ўu 
	unknown_4: @
	unknown_5:@
	unknown_6:@
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10:

unknown_11:
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_49771o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:         
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ъ
░
$__inference_lstm_layer_call_fn_50901
inputs_0
unknown: @
	unknown_0:@
	unknown_1:@
identityѕбStatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_48269|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                   : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                   
"
_user_specified_name
inputs/0
кS
л
A__inference_lstm_1_layer_call_and_return_conditional_losses_51729
inputs_0<
*lstm_cell_1_matmul_readvariableop_resource: >
,lstm_cell_1_matmul_1_readvariableop_resource: 9
+lstm_cell_1_biasadd_readvariableop_resource: 
identityѕб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpб"lstm_cell_1/BiasAdd/ReadVariableOpб!lstm_cell_1/MatMul/ReadVariableOpб#lstm_cell_1/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskї
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Њ
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          љ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ї
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѕ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          і
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Љ
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:         Ѓ
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         Є
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
value	B : §
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_51639*
condR
while_cond_51638*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
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
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    д
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ч
NoOpNoOp<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
№"
й
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_48554

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         џ
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         ¤
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
▓6
«
while_body_51142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: @D
2while_lstm_cell_matmul_1_readvariableop_resource_0:@?
1while_lstm_cell_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: @B
0while_lstm_cell_matmul_1_readvariableop_resource:@=
/while_lstm_cell_biasadd_readvariableop_resource:@ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         К

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
ќ

ы
@__inference_dense_layer_call_and_return_conditional_losses_49245

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
║7
└
while_body_51937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_1_matmul_readvariableop_resource_0: F
4while_lstm_cell_1_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_1_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_1_matmul_readvariableop_resource: D
2while_lstm_cell_1_matmul_1_readvariableop_resource: ?
1while_lstm_cell_1_biasadd_readvariableop_resource: ѕб(while/lstm_cell_1/BiasAdd/ReadVariableOpб'while/lstm_cell_1/MatMul/ReadVariableOpб)while/lstm_cell_1/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0џ
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0и
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ъ
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0ъ
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          ў
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Б
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :В
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:         ё
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:         Ћ
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         і
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         Ў
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Я
№
)__inference_lstm_cell_layer_call_fn_52219

inputs
states_0
states_1
unknown: @
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ѕбStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_48180o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:          :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:          
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
ц<
╬	
lstm_while_body_50225&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0G
5lstm_while_lstm_cell_matmul_readvariableop_resource_0: @I
7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0:@D
6lstm_while_lstm_cell_biasadd_readvariableop_resource_0:@
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorE
3lstm_while_lstm_cell_matmul_readvariableop_resource: @G
5lstm_while_lstm_cell_matmul_1_readvariableop_resource:@B
4lstm_while_lstm_cell_biasadd_readvariableop_resource:@ѕб+lstm/while/lstm_cell/BiasAdd/ReadVariableOpб*lstm/while/lstm_cell/MatMul/ReadVariableOpб,lstm/while/lstm_cell/MatMul_1/ReadVariableOpЇ
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ┐
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0а
*lstm/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype0┬
lstm/while/lstm_cell/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:02lstm/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ц
,lstm/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0Е
lstm/while/lstm_cell/MatMul_1MatMullstm_while_placeholder_24lstm/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Б
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/MatMul:product:0'lstm/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @ъ
+lstm/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0г
lstm/while/lstm_cell/BiasAddBiasAddlstm/while/lstm_cell/add:z:03lstm/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @f
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:0%lstm/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split~
lstm/while/lstm_cell/SigmoidSigmoid#lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         ђ
lstm/while/lstm_cell/Sigmoid_1Sigmoid#lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         Ј
lstm/while/lstm_cell/mulMul"lstm/while/lstm_cell/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*'
_output_shapes
:         x
lstm/while/lstm_cell/ReluRelu#lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ъ
lstm/while/lstm_cell/mul_1Mul lstm/while/lstm_cell/Sigmoid:y:0'lstm/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         Њ
lstm/while/lstm_cell/add_1AddV2lstm/while/lstm_cell/mul:z:0lstm/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         ђ
lstm/while/lstm_cell/Sigmoid_2Sigmoid#lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         u
lstm/while/lstm_cell/Relu_1Relulstm/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         б
lstm/while/lstm_cell/mul_2Mul"lstm/while/lstm_cell/Sigmoid_2:y:0)lstm/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         о
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмR
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: Ћ
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: Ё
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_2:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:         Ё
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_1:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:         █
lstm/while/NoOpNoOp,^lstm/while/lstm_cell/BiasAdd/ReadVariableOp+^lstm/while/lstm_cell/MatMul/ReadVariableOp-^lstm/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"n
4lstm_while_lstm_cell_biasadd_readvariableop_resource6lstm_while_lstm_cell_biasadd_readvariableop_resource_0"p
5lstm_while_lstm_cell_matmul_1_readvariableop_resource7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0"l
3lstm_while_lstm_cell_matmul_readvariableop_resource5lstm_while_lstm_cell_matmul_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"╝
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2Z
+lstm/while/lstm_cell/BiasAdd/ReadVariableOp+lstm/while/lstm_cell/BiasAdd/ReadVariableOp2X
*lstm/while/lstm_cell/MatMul/ReadVariableOp*lstm/while/lstm_cell/MatMul/ReadVariableOp2\
,lstm/while/lstm_cell/MatMul_1/ReadVariableOp,lstm/while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Е
д
"sequential_lstm_1_while_cond_48015@
<sequential_lstm_1_while_sequential_lstm_1_while_loop_counterF
Bsequential_lstm_1_while_sequential_lstm_1_while_maximum_iterations'
#sequential_lstm_1_while_placeholder)
%sequential_lstm_1_while_placeholder_1)
%sequential_lstm_1_while_placeholder_2)
%sequential_lstm_1_while_placeholder_3B
>sequential_lstm_1_while_less_sequential_lstm_1_strided_slice_1W
Ssequential_lstm_1_while_sequential_lstm_1_while_cond_48015___redundant_placeholder0W
Ssequential_lstm_1_while_sequential_lstm_1_while_cond_48015___redundant_placeholder1W
Ssequential_lstm_1_while_sequential_lstm_1_while_cond_48015___redundant_placeholder2W
Ssequential_lstm_1_while_sequential_lstm_1_while_cond_48015___redundant_placeholder3$
 sequential_lstm_1_while_identity
ф
sequential/lstm_1/while/LessLess#sequential_lstm_1_while_placeholder>sequential_lstm_1_while_less_sequential_lstm_1_strided_slice_1*
T0*
_output_shapes
: o
 sequential/lstm_1/while/IdentityIdentity sequential/lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "M
 sequential_lstm_1_while_identity)sequential/lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
и"
¤
while_body_48771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_1_48795_0: +
while_lstm_cell_1_48797_0: '
while_lstm_cell_1_48799_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_1_48795: )
while_lstm_cell_1_48797: %
while_lstm_cell_1_48799: ѕб)while/lstm_cell_1/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ф
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_48795_0while_lstm_cell_1_48797_0while_lstm_cell_1_48799_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_48712█
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ј
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         Ј
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         x

while/NoOpNoOp*^while/lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1_48795while_lstm_cell_1_48795_0"4
while_lstm_cell_1_48797while_lstm_cell_1_48797_0"4
while_lstm_cell_1_48799while_lstm_cell_1_48799_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
ѕA
и
A__inference_lstm_1_layer_call_and_return_conditional_losses_48846

inputs#
lstm_cell_1_48758: #
lstm_cell_1_48760: 
lstm_cell_1_48762: 
identityѕб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpб#lstm_cell_1/StatefulPartitionedCallбwhile;
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskВ
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_48758lstm_cell_1_48760lstm_cell_1_48762*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_48712n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
value	B : »
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_48758lstm_cell_1_48760lstm_cell_1_48762*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_48771*
condR
while_cond_48770*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
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
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ї
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_1_48758*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ▓
NoOpNoOp<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
С
ы
+__inference_lstm_cell_1_layer_call_fn_52346

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ѕбStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_48554o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
ј{
┼
E__inference_sequential_layer_call_and_return_conditional_losses_49916
text_vectorization_inputO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	"
embedding_49881:	ўu 

lstm_49884: @

lstm_49886:@

lstm_49888:@
lstm_1_49891: 
lstm_1_49893: 
lstm_1_49895: 
dense_49898:
dense_49900:
identityѕбdense/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpбlstm_1/StatefulPartitionedCallб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpб>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2l
text_vectorization/StringLowerStringLowertext_vectorization_input*#
_output_shapes
:         л
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:         *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ┌
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:         :         :Ѓ
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ё
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Ё
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ц
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ђ
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskЛ
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:         ╚
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: У
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:Е
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: █
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: Ц
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : С
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: §
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: Ф
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ╠
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: А
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :┘
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ╠
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ═
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: Л
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ц
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ╩
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:         ъ
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : р
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:         ф
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ъ
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:         р
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:         Й
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:         Ё
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         Ќ
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:         q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ђ
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"        7       є
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:         7*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDSЏ
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_49881*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         7 *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_48918Њ
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_49884
lstm_49886
lstm_49888*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         7*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_49070ћ
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0lstm_1_49891lstm_1_49893lstm_1_49895*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_49226ѓ
dense/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_49898dense_49900*
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
GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_49245ѓ
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOp
lstm_49884*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ѕ
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_1_49891*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ѓ
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp^lstm_1/StatefulPartitionedCall<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp2ђ
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:] Y
#
_output_shapes
:         
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
▄?
а

lstm_1_while_body_50364*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0K
9lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0: M
;lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0: H
:lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0: 
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorI
7lstm_1_while_lstm_cell_1_matmul_readvariableop_resource: K
9lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource: F
8lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource: ѕб/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOpб.lstm_1/while/lstm_cell_1/MatMul/ReadVariableOpб0lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOpЈ
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╔
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0е
.lstm_1/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp9lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╠
lstm_1/while/lstm_cell_1/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          г
0lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp;lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0│
!lstm_1/while/lstm_cell_1/MatMul_1MatMullstm_1_while_placeholder_28lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          »
lstm_1/while/lstm_cell_1/addAddV2)lstm_1/while/lstm_cell_1/MatMul:product:0+lstm_1/while/lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          д
/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0И
 lstm_1/while/lstm_cell_1/BiasAddBiasAdd lstm_1/while/lstm_cell_1/add:z:07lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          j
(lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ђ
lstm_1/while/lstm_cell_1/splitSplit1lstm_1/while/lstm_cell_1/split/split_dim:output:0)lstm_1/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitє
 lstm_1/while/lstm_cell_1/SigmoidSigmoid'lstm_1/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:         ѕ
"lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid'lstm_1/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:         Ў
lstm_1/while/lstm_cell_1/mulMul&lstm_1/while/lstm_cell_1/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*'
_output_shapes
:         ђ
lstm_1/while/lstm_cell_1/ReluRelu'lstm_1/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:         ф
lstm_1/while/lstm_cell_1/mul_1Mul$lstm_1/while/lstm_cell_1/Sigmoid:y:0+lstm_1/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         Ъ
lstm_1/while/lstm_cell_1/add_1AddV2 lstm_1/while/lstm_cell_1/mul:z:0"lstm_1/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         ѕ
"lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid'lstm_1/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:         }
lstm_1/while/lstm_cell_1/Relu_1Relu"lstm_1/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         «
lstm_1/while/lstm_cell_1/mul_2Mul&lstm_1/while/lstm_cell_1/Sigmoid_2:y:0-lstm_1/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         Я
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder"lstm_1/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмT
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: є
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations^lstm_1/while/NoOp*
T0*
_output_shapes
: n
lstm_1/while/Identity_2Identitylstm_1/while/add:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: Џ
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_1/while/NoOp*
T0*
_output_shapes
: Ї
lstm_1/while/Identity_4Identity"lstm_1/while/lstm_cell_1/mul_2:z:0^lstm_1/while/NoOp*
T0*'
_output_shapes
:         Ї
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_1/add_1:z:0^lstm_1/while/NoOp*
T0*'
_output_shapes
:         ж
lstm_1/while/NoOpNoOp0^lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp/^lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp1^lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"v
8lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource:lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0"x
9lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource;lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0"t
7lstm_1_while_lstm_cell_1_matmul_readvariableop_resource9lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0"─
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2b
/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp2`
.lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp.lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp2d
0lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp0lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Ь
┘
__inference_restore_fn_52510
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identityѕб2MutableHashTable_table_restore/LookupTableImportV2Ї
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
╣
ц
__inference_save_fn_52502
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	ѕб?MutableHashTable_lookup_table_export_values/LookupTableExportV2ї
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ѕ

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: і

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:ѕ
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2ѓ
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
ќ

ы
@__inference_dense_layer_call_and_return_conditional_losses_52196

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Џ
*
__inference_<lambda>_52530
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
АI
«
 sequential_lstm_while_body_47877<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3;
7sequential_lstm_while_sequential_lstm_strided_slice_1_0w
ssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0R
@sequential_lstm_while_lstm_cell_matmul_readvariableop_resource_0: @T
Bsequential_lstm_while_lstm_cell_matmul_1_readvariableop_resource_0:@O
Asequential_lstm_while_lstm_cell_biasadd_readvariableop_resource_0:@"
sequential_lstm_while_identity$
 sequential_lstm_while_identity_1$
 sequential_lstm_while_identity_2$
 sequential_lstm_while_identity_3$
 sequential_lstm_while_identity_4$
 sequential_lstm_while_identity_59
5sequential_lstm_while_sequential_lstm_strided_slice_1u
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorP
>sequential_lstm_while_lstm_cell_matmul_readvariableop_resource: @R
@sequential_lstm_while_lstm_cell_matmul_1_readvariableop_resource:@M
?sequential_lstm_while_lstm_cell_biasadd_readvariableop_resource:@ѕб6sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOpб5sequential/lstm/while/lstm_cell/MatMul/ReadVariableOpб7sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOpў
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Ш
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0!sequential_lstm_while_placeholderPsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0Х
5sequential/lstm/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@sequential_lstm_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype0с
&sequential/lstm/while/lstm_cell/MatMulMatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0=sequential/lstm/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @║
7sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBsequential_lstm_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0╩
(sequential/lstm/while/lstm_cell/MatMul_1MatMul#sequential_lstm_while_placeholder_2?sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @─
#sequential/lstm/while/lstm_cell/addAddV20sequential/lstm/while/lstm_cell/MatMul:product:02sequential/lstm/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @┤
6sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAsequential_lstm_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0═
'sequential/lstm/while/lstm_cell/BiasAddBiasAdd'sequential/lstm/while/lstm_cell/add:z:0>sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @q
/sequential/lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
%sequential/lstm/while/lstm_cell/splitSplit8sequential/lstm/while/lstm_cell/split/split_dim:output:00sequential/lstm/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitћ
'sequential/lstm/while/lstm_cell/SigmoidSigmoid.sequential/lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         ќ
)sequential/lstm/while/lstm_cell/Sigmoid_1Sigmoid.sequential/lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ░
#sequential/lstm/while/lstm_cell/mulMul-sequential/lstm/while/lstm_cell/Sigmoid_1:y:0#sequential_lstm_while_placeholder_3*
T0*'
_output_shapes
:         ј
$sequential/lstm/while/lstm_cell/ReluRelu.sequential/lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ┐
%sequential/lstm/while/lstm_cell/mul_1Mul+sequential/lstm/while/lstm_cell/Sigmoid:y:02sequential/lstm/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ┤
%sequential/lstm/while/lstm_cell/add_1AddV2'sequential/lstm/while/lstm_cell/mul:z:0)sequential/lstm/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         ќ
)sequential/lstm/while/lstm_cell/Sigmoid_2Sigmoid.sequential/lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         І
&sequential/lstm/while/lstm_cell/Relu_1Relu)sequential/lstm/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         ├
%sequential/lstm/while/lstm_cell/mul_2Mul-sequential/lstm/while/lstm_cell/Sigmoid_2:y:04sequential/lstm/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ѓ
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#sequential_lstm_while_placeholder_1!sequential_lstm_while_placeholder)sequential/lstm/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм]
sequential/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ї
sequential/lstm/while/addAddV2!sequential_lstm_while_placeholder$sequential/lstm/while/add/y:output:0*
T0*
_output_shapes
: _
sequential/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Д
sequential/lstm/while/add_1AddV28sequential_lstm_while_sequential_lstm_while_loop_counter&sequential/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: Ѕ
sequential/lstm/while/IdentityIdentitysequential/lstm/while/add_1:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: ф
 sequential/lstm/while/Identity_1Identity>sequential_lstm_while_sequential_lstm_while_maximum_iterations^sequential/lstm/while/NoOp*
T0*
_output_shapes
: Ѕ
 sequential/lstm/while/Identity_2Identitysequential/lstm/while/add:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: Х
 sequential/lstm/while/Identity_3IdentityJsequential/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: д
 sequential/lstm/while/Identity_4Identity)sequential/lstm/while/lstm_cell/mul_2:z:0^sequential/lstm/while/NoOp*
T0*'
_output_shapes
:         д
 sequential/lstm/while/Identity_5Identity)sequential/lstm/while/lstm_cell/add_1:z:0^sequential/lstm/while/NoOp*
T0*'
_output_shapes
:         Є
sequential/lstm/while/NoOpNoOp7^sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOp6^sequential/lstm/while/lstm_cell/MatMul/ReadVariableOp8^sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0"M
 sequential_lstm_while_identity_1)sequential/lstm/while/Identity_1:output:0"M
 sequential_lstm_while_identity_2)sequential/lstm/while/Identity_2:output:0"M
 sequential_lstm_while_identity_3)sequential/lstm/while/Identity_3:output:0"M
 sequential_lstm_while_identity_4)sequential/lstm/while/Identity_4:output:0"M
 sequential_lstm_while_identity_5)sequential/lstm/while/Identity_5:output:0"ё
?sequential_lstm_while_lstm_cell_biasadd_readvariableop_resourceAsequential_lstm_while_lstm_cell_biasadd_readvariableop_resource_0"є
@sequential_lstm_while_lstm_cell_matmul_1_readvariableop_resourceBsequential_lstm_while_lstm_cell_matmul_1_readvariableop_resource_0"ѓ
>sequential_lstm_while_lstm_cell_matmul_readvariableop_resource@sequential_lstm_while_lstm_cell_matmul_readvariableop_resource_0"p
5sequential_lstm_while_sequential_lstm_strided_slice_17sequential_lstm_while_sequential_lstm_strided_slice_1_0"У
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2p
6sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOp6sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOp2n
5sequential/lstm/while/lstm_cell/MatMul/ReadVariableOp5sequential/lstm/while/lstm_cell/MatMul/ReadVariableOp2r
7sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOp7sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
░
Й
while_cond_51439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_51439___redundant_placeholder03
/while_while_cond_51439___redundant_placeholder13
/while_while_cond_51439___redundant_placeholder23
/while_while_cond_51439___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ЊR
Й
?__inference_lstm_layer_call_and_return_conditional_losses_51083
inputs_0:
(lstm_cell_matmul_readvariableop_resource: @<
*lstm_cell_matmul_1_readvariableop_resource:@7
)lstm_cell_biasadd_readvariableop_resource:@
identityѕб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                   D
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

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
value	B : э
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_50993*
condR
while_cond_50992*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
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
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    а
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  ы
NoOpNoOp8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                   : : : 2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                   
"
_user_specified_name
inputs/0
НQ
╝
?__inference_lstm_layer_call_and_return_conditional_losses_49636

inputs:
(lstm_cell_matmul_readvariableop_resource: @<
*lstm_cell_matmul_1_readvariableop_resource:@7
)lstm_cell_biasadd_readvariableop_resource:@
identityѕб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:7          D
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

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
value	B : э
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_49546*
condR
while_cond_49545*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:7         *
element_dtype0h
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
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         7[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    а
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         7ы
NoOpNoOp8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         7 : : : 2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         7 
 
_user_specified_nameinputs
­
░
&__inference_lstm_1_layer_call_fn_51580

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_49465o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         7: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         7
 
_user_specified_nameinputs
ј{
┼
E__inference_sequential_layer_call_and_return_conditional_losses_50001
text_vectorization_inputO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	"
embedding_49966:	ўu 

lstm_49969: @

lstm_49971:@

lstm_49973:@
lstm_1_49976: 
lstm_1_49978: 
lstm_1_49980: 
dense_49983:
dense_49985:
identityѕбdense/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpбlstm_1/StatefulPartitionedCallб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpб>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2l
text_vectorization/StringLowerStringLowertext_vectorization_input*#
_output_shapes
:         л
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:         *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ┌
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:         :         :Ѓ
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ё
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Ё
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ц
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ђ
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskЛ
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:         ╚
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: У
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:Е
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: █
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: Ц
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : С
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: §
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: Ф
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ╠
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: А
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :┘
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ╠
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ═
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: Л
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ц
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ╩
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:         ъ
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : р
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:         ф
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ъ
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:         р
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:         Й
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:         Ё
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         Ќ
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:         q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ђ
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"        7       є
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:         7*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDSЏ
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_49966*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         7 *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_48918Њ
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_49969
lstm_49971
lstm_49973*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         7*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_49636ћ
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0lstm_1_49976lstm_1_49978lstm_1_49980*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_49465ѓ
dense/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_49983dense_49985*
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
GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_49245ѓ
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOp
lstm_49969*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ѕ
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_1_49976*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ѓ
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp^lstm_1/StatefulPartitionedCall<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp2ђ
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:] Y
#
_output_shapes
:         
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
З	
╩
lstm_1_while_cond_50363*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1A
=lstm_1_while_lstm_1_while_cond_50363___redundant_placeholder0A
=lstm_1_while_lstm_1_while_cond_50363___redundant_placeholder1A
=lstm_1_while_lstm_1_while_cond_50363___redundant_placeholder2A
=lstm_1_while_lstm_1_while_cond_50363___redundant_placeholder3
lstm_1_while_identity
~
lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: Y
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_1_while_identitylstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ЏЦ
╦
 __inference__wrapped_model_48107
text_vectorization_inputZ
Vsequential_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle[
Wsequential_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	7
3sequential_text_vectorization_string_lookup_equal_y:
6sequential_text_vectorization_string_lookup_selectv2_t	>
+sequential_embedding_embedding_lookup_47816:	ўu J
8sequential_lstm_lstm_cell_matmul_readvariableop_resource: @L
:sequential_lstm_lstm_cell_matmul_1_readvariableop_resource:@G
9sequential_lstm_lstm_cell_biasadd_readvariableop_resource:@N
<sequential_lstm_1_lstm_cell_1_matmul_readvariableop_resource: P
>sequential_lstm_1_lstm_cell_1_matmul_1_readvariableop_resource: K
=sequential_lstm_1_lstm_cell_1_biasadd_readvariableop_resource: A
/sequential_dense_matmul_readvariableop_resource:>
0sequential_dense_biasadd_readvariableop_resource:
identityѕб'sequential/dense/BiasAdd/ReadVariableOpб&sequential/dense/MatMul/ReadVariableOpб%sequential/embedding/embedding_lookupб0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOpб/sequential/lstm/lstm_cell/MatMul/ReadVariableOpб1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOpбsequential/lstm/whileб4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpб3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOpб5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpбsequential/lstm_1/whileбIsequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2w
)sequential/text_vectorization/StringLowerStringLowertext_vectorization_input*#
_output_shapes
:         Т
0sequential/text_vectorization/StaticRegexReplaceStaticRegexReplace2sequential/text_vectorization/StringLower:output:0*#
_output_shapes
:         *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite p
/sequential/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ч
7sequential/text_vectorization/StringSplit/StringSplitV2StringSplitV29sequential/text_vectorization/StaticRegexReplace:output:08sequential/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:         :         :ј
=sequential/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        љ
?sequential/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       љ
?sequential/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      █
7sequential/text_vectorization/StringSplit/strided_sliceStridedSliceAsequential/text_vectorization/StringSplit/StringSplitV2:indices:0Fsequential/text_vectorization/StringSplit/strided_slice/stack:output:0Hsequential/text_vectorization/StringSplit/strided_slice/stack_1:output:0Hsequential/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask*
shrink_axis_maskЅ
?sequential/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: І
Asequential/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:І
Asequential/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▓
9sequential/text_vectorization/StringSplit/strided_slice_1StridedSlice?sequential/text_vectorization/StringSplit/StringSplitV2:shape:0Hsequential/text_vectorization/StringSplit/strided_slice_1/stack:output:0Jsequential/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Jsequential/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskу
`sequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast@sequential/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:         я
bsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastBsequential/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ■
jsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapedsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:┤
jsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ч
isequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdssequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0ssequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ░
nsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : Ё
lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterrsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0wsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: Њ
isequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastpsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: Х
lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ь
hsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxdsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0usequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: г
jsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :Щ
hsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2qsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0ssequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ь
hsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulmsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: Ь
lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumfsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: Ы
lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumfsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0psequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: »
lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 Ш
msequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountdsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0psequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0usequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:         Е
gsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ѓ
bsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumtsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0psequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:         х
ksequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R Е
gsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : э
bsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2tsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0hsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0psequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:         Ї
Isequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Vsequential_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle@sequential/text_vectorization/StringSplit/StringSplitV2:values:0Wsequential_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:         ▀
1sequential/text_vectorization/string_lookup/EqualEqual@sequential/text_vectorization/StringSplit/StringSplitV2:values:03sequential_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:         ▒
4sequential/text_vectorization/string_lookup/SelectV2SelectV25sequential/text_vectorization/string_lookup/Equal:z:06sequential_text_vectorization_string_lookup_selectv2_tRsequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         Г
4sequential/text_vectorization/string_lookup/IdentityIdentity=sequential/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:         |
:sequential/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R І
2sequential/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"        7       ╚
Asequential/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor;sequential/text_vectorization/RaggedToTensor/Const:output:0=sequential/text_vectorization/string_lookup/Identity:output:0Csequential/text_vectorization/RaggedToTensor/default_value:output:0Bsequential/text_vectorization/StringSplit/strided_slice_1:output:0@sequential/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:         7*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS║
%sequential/embedding/embedding_lookupResourceGather+sequential_embedding_embedding_lookup_47816Jsequential/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*>
_class4
20loc:@sequential/embedding/embedding_lookup/47816*+
_output_shapes
:         7 *
dtype0Я
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*>
_class4
20loc:@sequential/embedding/embedding_lookup/47816*+
_output_shapes
:         7 Ф
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         7 ~
sequential/lstm/ShapeShape9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:m
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Б
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*'
_output_shapes
:         b
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Д
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    б
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:         s
sequential/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          └
sequential/lstm/transpose	Transpose9sequential/embedding/embedding_lookup/Identity_1:output:0'sequential/lstm/transpose/perm:output:0*
T0*+
_output_shapes
:7          d
sequential/lstm/Shape_1Shapesequential/lstm/transpose:y:0*
T0*
_output_shapes
:o
%sequential/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
sequential/lstm/strided_slice_1StridedSlice sequential/lstm/Shape_1:output:0.sequential/lstm/strided_slice_1/stack:output:00sequential/lstm/strided_slice_1/stack_1:output:00sequential/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+sequential/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         С
sequential/lstm/TensorArrayV2TensorListReserve4sequential/lstm/TensorArrayV2/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмќ
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        љ
7sequential/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm/transpose:y:0Nsequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмo
%sequential/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╣
sequential/lstm/strided_slice_2StridedSlicesequential/lstm/transpose:y:0.sequential/lstm/strided_slice_2/stack:output:00sequential/lstm/strided_slice_2/stack_1:output:00sequential/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskе
/sequential/lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOp8sequential_lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0┐
 sequential/lstm/lstm_cell/MatMulMatMul(sequential/lstm/strided_slice_2:output:07sequential/lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @г
1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:sequential_lstm_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0╣
"sequential/lstm/lstm_cell/MatMul_1MatMulsequential/lstm/zeros:output:09sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @▓
sequential/lstm/lstm_cell/addAddV2*sequential/lstm/lstm_cell/MatMul:product:0,sequential/lstm/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @д
0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9sequential_lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╗
!sequential/lstm/lstm_cell/BiasAddBiasAdd!sequential/lstm/lstm_cell/add:z:08sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @k
)sequential/lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ё
sequential/lstm/lstm_cell/splitSplit2sequential/lstm/lstm_cell/split/split_dim:output:0*sequential/lstm/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitѕ
!sequential/lstm/lstm_cell/SigmoidSigmoid(sequential/lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:         і
#sequential/lstm/lstm_cell/Sigmoid_1Sigmoid(sequential/lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:         А
sequential/lstm/lstm_cell/mulMul'sequential/lstm/lstm_cell/Sigmoid_1:y:0 sequential/lstm/zeros_1:output:0*
T0*'
_output_shapes
:         ѓ
sequential/lstm/lstm_cell/ReluRelu(sequential/lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Г
sequential/lstm/lstm_cell/mul_1Mul%sequential/lstm/lstm_cell/Sigmoid:y:0,sequential/lstm/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         б
sequential/lstm/lstm_cell/add_1AddV2!sequential/lstm/lstm_cell/mul:z:0#sequential/lstm/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         і
#sequential/lstm/lstm_cell/Sigmoid_2Sigmoid(sequential/lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:         
 sequential/lstm/lstm_cell/Relu_1Relu#sequential/lstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         ▒
sequential/lstm/lstm_cell/mul_2Mul'sequential/lstm/lstm_cell/Sigmoid_2:y:0.sequential/lstm/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ~
-sequential/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       У
sequential/lstm/TensorArrayV2_1TensorListReserve6sequential/lstm/TensorArrayV2_1/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмV
sequential/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(sequential/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         d
"sequential/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential/lstm/whileWhile+sequential/lstm/while/loop_counter:output:01sequential/lstm/while/maximum_iterations:output:0sequential/lstm/time:output:0(sequential/lstm/TensorArrayV2_1:handle:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0(sequential/lstm/strided_slice_1:output:0Gsequential/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:08sequential_lstm_lstm_cell_matmul_readvariableop_resource:sequential_lstm_lstm_cell_matmul_1_readvariableop_resource9sequential_lstm_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 sequential_lstm_while_body_47877*,
cond$R"
 sequential_lstm_while_cond_47876*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Љ
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ы
2sequential/lstm/TensorArrayV2Stack/TensorListStackTensorListStacksequential/lstm/while:output:3Isequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:7         *
element_dtype0x
%sequential/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         q
'sequential/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:О
sequential/lstm/strided_slice_3StridedSlice;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0.sequential/lstm/strided_slice_3/stack:output:00sequential/lstm/strided_slice_3/stack_1:output:00sequential/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_masku
 sequential/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          к
sequential/lstm/transpose_1	Transpose;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)sequential/lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:         7k
sequential/lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    f
sequential/lstm_1/ShapeShapesequential/lstm/transpose_1:y:0*
T0*
_output_shapes
:o
%sequential/lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
sequential/lstm_1/strided_sliceStridedSlice sequential/lstm_1/Shape:output:0.sequential/lstm_1/strided_slice/stack:output:00sequential/lstm_1/strided_slice/stack_1:output:00sequential/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 sequential/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Е
sequential/lstm_1/zeros/packedPack(sequential/lstm_1/strided_slice:output:0)sequential/lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    б
sequential/lstm_1/zerosFill'sequential/lstm_1/zeros/packed:output:0&sequential/lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:         d
"sequential/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Г
 sequential/lstm_1/zeros_1/packedPack(sequential/lstm_1/strided_slice:output:0+sequential/lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential/lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    е
sequential/lstm_1/zeros_1Fill)sequential/lstm_1/zeros_1/packed:output:0(sequential/lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:         u
 sequential/lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ф
sequential/lstm_1/transpose	Transposesequential/lstm/transpose_1:y:0)sequential/lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:7         h
sequential/lstm_1/Shape_1Shapesequential/lstm_1/transpose:y:0*
T0*
_output_shapes
:q
'sequential/lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential/lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
!sequential/lstm_1/strided_slice_1StridedSlice"sequential/lstm_1/Shape_1:output:00sequential/lstm_1/strided_slice_1/stack:output:02sequential/lstm_1/strided_slice_1/stack_1:output:02sequential/lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
-sequential/lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ж
sequential/lstm_1/TensorArrayV2TensorListReserve6sequential/lstm_1/TensorArrayV2/element_shape:output:0*sequential/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмў
Gsequential/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ќ
9sequential/lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm_1/transpose:y:0Psequential/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмq
'sequential/lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential/lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:├
!sequential/lstm_1/strided_slice_2StridedSlicesequential/lstm_1/transpose:y:00sequential/lstm_1/strided_slice_2/stack:output:02sequential/lstm_1/strided_slice_2/stack_1:output:02sequential/lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask░
3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp<sequential_lstm_1_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0╔
$sequential/lstm_1/lstm_cell_1/MatMulMatMul*sequential/lstm_1/strided_slice_2:output:0;sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ┤
5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp>sequential_lstm_1_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0├
&sequential/lstm_1/lstm_cell_1/MatMul_1MatMul sequential/lstm_1/zeros:output:0=sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Й
!sequential/lstm_1/lstm_cell_1/addAddV2.sequential/lstm_1/lstm_cell_1/MatMul:product:00sequential/lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          «
4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp=sequential_lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0К
%sequential/lstm_1/lstm_cell_1/BiasAddBiasAdd%sequential/lstm_1/lstm_cell_1/add:z:0<sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          o
-sequential/lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :љ
#sequential/lstm_1/lstm_cell_1/splitSplit6sequential/lstm_1/lstm_cell_1/split/split_dim:output:0.sequential/lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitљ
%sequential/lstm_1/lstm_cell_1/SigmoidSigmoid,sequential/lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:         њ
'sequential/lstm_1/lstm_cell_1/Sigmoid_1Sigmoid,sequential/lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:         Ф
!sequential/lstm_1/lstm_cell_1/mulMul+sequential/lstm_1/lstm_cell_1/Sigmoid_1:y:0"sequential/lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:         і
"sequential/lstm_1/lstm_cell_1/ReluRelu,sequential/lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:         ╣
#sequential/lstm_1/lstm_cell_1/mul_1Mul)sequential/lstm_1/lstm_cell_1/Sigmoid:y:00sequential/lstm_1/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         «
#sequential/lstm_1/lstm_cell_1/add_1AddV2%sequential/lstm_1/lstm_cell_1/mul:z:0'sequential/lstm_1/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         њ
'sequential/lstm_1/lstm_cell_1/Sigmoid_2Sigmoid,sequential/lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:         Є
$sequential/lstm_1/lstm_cell_1/Relu_1Relu'sequential/lstm_1/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         й
#sequential/lstm_1/lstm_cell_1/mul_2Mul+sequential/lstm_1/lstm_cell_1/Sigmoid_2:y:02sequential/lstm_1/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         ђ
/sequential/lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ь
!sequential/lstm_1/TensorArrayV2_1TensorListReserve8sequential/lstm_1/TensorArrayV2_1/element_shape:output:0*sequential/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
sequential/lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : u
*sequential/lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         f
$sequential/lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : щ
sequential/lstm_1/whileWhile-sequential/lstm_1/while/loop_counter:output:03sequential/lstm_1/while/maximum_iterations:output:0sequential/lstm_1/time:output:0*sequential/lstm_1/TensorArrayV2_1:handle:0 sequential/lstm_1/zeros:output:0"sequential/lstm_1/zeros_1:output:0*sequential/lstm_1/strided_slice_1:output:0Isequential/lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0<sequential_lstm_1_lstm_cell_1_matmul_readvariableop_resource>sequential_lstm_1_lstm_cell_1_matmul_1_readvariableop_resource=sequential_lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"sequential_lstm_1_while_body_48016*.
cond&R$
"sequential_lstm_1_while_cond_48015*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Њ
Bsequential/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Э
4sequential/lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack sequential/lstm_1/while:output:3Ksequential/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:7         *
element_dtype0z
'sequential/lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         s
)sequential/lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
!sequential/lstm_1/strided_slice_3StridedSlice=sequential/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:00sequential/lstm_1/strided_slice_3/stack:output:02sequential/lstm_1/strided_slice_3/stack_1:output:02sequential/lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskw
"sequential/lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╠
sequential/lstm_1/transpose_1	Transpose=sequential/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0+sequential/lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:         7m
sequential/lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ќ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0»
sequential/dense/MatMulMatMul*sequential/lstm_1/strided_slice_3:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ћ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
sequential/dense/SigmoidSigmoid!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         k
IdentityIdentitysequential/dense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         §
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup1^sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp0^sequential/lstm/lstm_cell/MatMul/ReadVariableOp2^sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp^sequential/lstm/while5^sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp4^sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp6^sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp^sequential/lstm_1/whileJ^sequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         : : : : : : : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2d
0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp2b
/sequential/lstm/lstm_cell/MatMul/ReadVariableOp/sequential/lstm/lstm_cell/MatMul/ReadVariableOp2f
1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp2.
sequential/lstm/whilesequential/lstm/while2l
4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp2j
3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp2n
5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp22
sequential/lstm_1/whilesequential/lstm_1/while2ќ
Isequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Isequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:] Y
#
_output_shapes
:         
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
░
Й
while_cond_48979
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_48979___redundant_placeholder03
/while_while_cond_48979___redundant_placeholder13
/while_while_cond_48979___redundant_placeholder23
/while_while_cond_48979___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
їC
б
__inference_adapt_step_50868
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	ѕбIteratorGetNextб(None_lookup_table_find/LookupTableFindV2б,None_lookup_table_insert/LookupTableInsertV2Е
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:         *"
output_shapes
:         *
output_types
2]
StringLowerStringLowerIteratorGetNext:components:0*#
_output_shapes
:         ф
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*#
_output_shapes
:         *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B А
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace:output:0StringSplit/Const:output:0*<
_output_shapes*
(:         :         :p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_maskФ
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:         б
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ┬
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:ќ
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: б
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: њ
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : Ф
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: О
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ў
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Њ
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ј
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :а
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: Њ
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ћ
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ў
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: Љ
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ■
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:         І
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : е
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:         Ќ
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R І
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :  
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:         Б
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:         :         :         *
out_idx0	А
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:Ъ
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
З	
╩
lstm_1_while_cond_50716*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1A
=lstm_1_while_lstm_1_while_cond_50716___redundant_placeholder0A
=lstm_1_while_lstm_1_while_cond_50716___redundant_placeholder1A
=lstm_1_while_lstm_1_while_cond_50716___redundant_placeholder2A
=lstm_1_while_lstm_1_while_cond_50716___redundant_placeholder3
lstm_1_while_identity
~
lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: Y
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_1_while_identitylstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
▓6
«
while_body_51291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: @D
2while_lstm_cell_matmul_1_readvariableop_resource_0:@?
1while_lstm_cell_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: @B
0while_lstm_cell_matmul_1_readvariableop_resource:@=
/while_lstm_cell_biasadd_readvariableop_resource:@ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         К

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Б
╝
__inference_loss_fn_0_52323R
@lstm_lstm_cell_kernel_regularizer_square_readvariableop_resource: @
identityѕб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpИ
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOp@lstm_lstm_cell_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentity)lstm/lstm_cell/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ђ
NoOpNoOp8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp
║7
└
while_body_51788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_1_matmul_readvariableop_resource_0: F
4while_lstm_cell_1_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_1_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_1_matmul_readvariableop_resource: D
2while_lstm_cell_1_matmul_1_readvariableop_resource: ?
1while_lstm_cell_1_biasadd_readvariableop_resource: ѕб(while/lstm_cell_1/BiasAdd/ReadVariableOpб'while/lstm_cell_1/MatMul/ReadVariableOpб)while/lstm_cell_1/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0џ
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0и
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ъ
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0ъ
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          ў
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Б
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :В
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:         ё
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:         Ћ
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         і
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         Ў
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
░
Й
while_cond_49135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_49135___redundant_placeholder03
/while_while_cond_49135___redundant_placeholder13
/while_while_cond_49135___redundant_placeholder23
/while_while_cond_49135___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ЉS
╬
A__inference_lstm_1_layer_call_and_return_conditional_losses_52027

inputs<
*lstm_cell_1_matmul_readvariableop_resource: >
,lstm_cell_1_matmul_1_readvariableop_resource: 9
+lstm_cell_1_biasadd_readvariableop_resource: 
identityѕб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpб"lstm_cell_1/BiasAdd/ReadVariableOpб!lstm_cell_1/MatMul/ReadVariableOpб#lstm_cell_1/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:7         D
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

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskї
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Њ
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          љ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ї
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѕ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          і
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Љ
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:         Ѓ
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         Є
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
value	B : §
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_51937*
condR
while_cond_51936*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:7         *
element_dtype0h
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
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         7[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    д
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ч
NoOpNoOp<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         7: : : 2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         7
 
_user_specified_nameinputs
НQ
╝
?__inference_lstm_layer_call_and_return_conditional_losses_51530

inputs:
(lstm_cell_matmul_readvariableop_resource: @<
*lstm_cell_matmul_1_readvariableop_resource:@7
)lstm_cell_biasadd_readvariableop_resource:@
identityѕб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:7          D
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

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
value	B : э
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_51440*
condR
while_cond_51439*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:7         *
element_dtype0h
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
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         7[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    а
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         7ы
NoOpNoOp8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         7 : : : 2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         7 
 
_user_specified_nameinputs
║7
└
while_body_52086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_1_matmul_readvariableop_resource_0: F
4while_lstm_cell_1_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_1_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_1_matmul_readvariableop_resource: D
2while_lstm_cell_1_matmul_1_readvariableop_resource: ?
1while_lstm_cell_1_biasadd_readvariableop_resource: ѕб(while/lstm_cell_1/BiasAdd/ReadVariableOpб'while/lstm_cell_1/MatMul/ReadVariableOpб)while/lstm_cell_1/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0џ
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0и
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ъ
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0ъ
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          ў
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Б
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :В
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:         ё
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:         Ћ
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         і
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         Ў
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
ъ
░
$__inference_lstm_layer_call_fn_50912
inputs_0
unknown: @
	unknown_0:@
	unknown_1:@
identityѕбStatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_48472|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                   : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                   
"
_user_specified_name
inputs/0
▒"
и
D__inference_lstm_cell_layer_call_and_return_conditional_losses_48180

inputs

states
states_10
matmul_readvariableop_resource: @2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         ќ
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         ╦
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:          :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
░
Й
while_cond_51290
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_51290___redundant_placeholder03
/while_while_cond_51290___redundant_placeholder13
/while_while_cond_51290___redundant_placeholder23
/while_while_cond_51290___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
▓6
«
while_body_48980
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: @D
2while_lstm_cell_matmul_1_readvariableop_resource_0:@?
1while_lstm_cell_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: @B
0while_lstm_cell_matmul_1_readvariableop_resource:@=
/while_lstm_cell_biasadd_readvariableop_resource:@ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         К

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
░
Й
while_cond_50992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_50992___redundant_placeholder03
/while_while_cond_50992___redundant_placeholder13
/while_while_cond_50992___redundant_placeholder23
/while_while_cond_50992___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
­
░
&__inference_lstm_1_layer_call_fn_51569

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_49226o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         7: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         7
 
_user_specified_nameinputs
С
ы
+__inference_lstm_cell_1_layer_call_fn_52363

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ѕбStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_48712o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
кS
л
A__inference_lstm_1_layer_call_and_return_conditional_losses_51878
inputs_0<
*lstm_cell_1_matmul_readvariableop_resource: >
,lstm_cell_1_matmul_1_readvariableop_resource: 9
+lstm_cell_1_biasadd_readvariableop_resource: 
identityѕб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpб"lstm_cell_1/BiasAdd/ReadVariableOpб!lstm_cell_1/MatMul/ReadVariableOpб#lstm_cell_1/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskї
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Њ
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          љ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ї
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѕ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          і
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Љ
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:         Ѓ
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         Є
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
value	B : §
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_51788*
condR
while_cond_51787*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
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
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    д
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ч
NoOpNoOp<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
║
њ
%__inference_dense_layer_call_fn_52185

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallН
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
GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_49245o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ю
.
__inference__initializer_52478
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
╣"
╣
D__inference_lstm_cell_layer_call_and_return_conditional_losses_52274

inputs
states_0
states_10
matmul_readvariableop_resource: @2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         ќ
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         ╦
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:          :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
«@
Е
?__inference_lstm_layer_call_and_return_conditional_losses_48269

inputs!
lstm_cell_48181: @!
lstm_cell_48183:@
lstm_cell_48185:@
identityѕб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpб!lstm_cell/StatefulPartitionedCallбwhile;
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                   D
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

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskР
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_48181lstm_cell_48183lstm_cell_48185*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_48180n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_48181lstm_cell_48183lstm_cell_48185*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_48194*
condR
while_cond_48193*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
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
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Є
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_48181*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  г
NoOpNoOp8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                   : : : 2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs
░
Й
while_cond_52085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_52085___redundant_placeholder03
/while_while_cond_52085___redundant_placeholder13
/while_while_cond_52085___redundant_placeholder23
/while_while_cond_52085___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
─
А
D__inference_embedding_layer_call_and_return_conditional_losses_50884

inputs	)
embedding_lookup_50878:	ўu 
identityѕбembedding_lookupи
embedding_lookupResourceGatherembedding_lookup_50878inputs*
Tindices0	*)
_class
loc:@embedding_lookup/50878*+
_output_shapes
:         7 *
dtype0А
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/50878*+
_output_shapes
:         7 Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         7 w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         7 Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         7: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         7
 
_user_specified_nameinputs
ЉS
╬
A__inference_lstm_1_layer_call_and_return_conditional_losses_49226

inputs<
*lstm_cell_1_matmul_readvariableop_resource: >
,lstm_cell_1_matmul_1_readvariableop_resource: 9
+lstm_cell_1_biasadd_readvariableop_resource: 
identityѕб;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpб"lstm_cell_1/BiasAdd/ReadVariableOpб!lstm_cell_1/MatMul/ReadVariableOpб#lstm_cell_1/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:7         D
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

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskї
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Њ
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          љ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ї
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѕ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:          і
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Љ
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:         Ѓ
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:         Є
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
value	B : §
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_49136*
condR
while_cond_49135*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:7         *
element_dtype0h
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
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         7[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    д
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0ц
,lstm_1/lstm_cell_1/kernel/Regularizer/SquareSquareClstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: |
+lstm_1/lstm_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╣
)lstm_1/lstm_cell_1/kernel/Regularizer/SumSum0lstm_1/lstm_cell_1/kernel/Regularizer/Square:y:04lstm_1/lstm_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+lstm_1/lstm_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<╗
)lstm_1/lstm_cell_1/kernel/Regularizer/mulMul4lstm_1/lstm_cell_1/kernel/Regularizer/mul/x:output:02lstm_1/lstm_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ч
NoOpNoOp<^lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         7: : : 2z
;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp;lstm_1/lstm_cell_1/kernel/Regularizer/Square/ReadVariableOp2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         7
 
_user_specified_nameinputs
░
Й
while_cond_51141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_51141___redundant_placeholder03
/while_while_cond_51141___redundant_placeholder13
/while_while_cond_51141___redundant_placeholder23
/while_while_cond_51141___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
░
Й
while_cond_48770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_48770___redundant_placeholder03
/while_while_cond_48770___redundant_placeholder13
/while_while_cond_48770___redundant_placeholder23
/while_while_cond_48770___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
─
А
D__inference_embedding_layer_call_and_return_conditional_losses_48918

inputs	)
embedding_lookup_48912:	ўu 
identityѕбembedding_lookupи
embedding_lookupResourceGatherembedding_lookup_48912inputs*
Tindices0	*)
_class
loc:@embedding_lookup/48912*+
_output_shapes
:         7 *
dtype0А
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/48912*+
_output_shapes
:         7 Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         7 w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         7 Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         7: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         7
 
_user_specified_nameinputs
╬
:
__inference__creator_52455
identityѕб
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name1549*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
░
Й
while_cond_51936
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_51936___redundant_placeholder03
/while_while_cond_51936___redundant_placeholder13
/while_while_cond_51936___redundant_placeholder23
/while_while_cond_51936___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
НЌ
а
!__inference__traced_restore_52796
file_prefix8
%assignvariableop_embedding_embeddings:	ўu 1
assignvariableop_1_dense_kernel:+
assignvariableop_2_dense_bias:&
assignvariableop_3_adam_iter:	 (
assignvariableop_4_adam_beta_1: (
assignvariableop_5_adam_beta_2: '
assignvariableop_6_adam_decay: /
%assignvariableop_7_adam_learning_rate: :
(assignvariableop_8_lstm_lstm_cell_kernel: @D
2assignvariableop_9_lstm_lstm_cell_recurrent_kernel:@5
'assignvariableop_10_lstm_lstm_cell_bias:@?
-assignvariableop_11_lstm_1_lstm_cell_1_kernel: I
7assignvariableop_12_lstm_1_lstm_cell_1_recurrent_kernel: 9
+assignvariableop_13_lstm_1_lstm_cell_1_bias: M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: #
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: B
/assignvariableop_18_adam_embedding_embeddings_m:	ўu 9
'assignvariableop_19_adam_dense_kernel_m:3
%assignvariableop_20_adam_dense_bias_m:B
0assignvariableop_21_adam_lstm_lstm_cell_kernel_m: @L
:assignvariableop_22_adam_lstm_lstm_cell_recurrent_kernel_m:@<
.assignvariableop_23_adam_lstm_lstm_cell_bias_m:@F
4assignvariableop_24_adam_lstm_1_lstm_cell_1_kernel_m: P
>assignvariableop_25_adam_lstm_1_lstm_cell_1_recurrent_kernel_m: @
2assignvariableop_26_adam_lstm_1_lstm_cell_1_bias_m: B
/assignvariableop_27_adam_embedding_embeddings_v:	ўu 9
'assignvariableop_28_adam_dense_kernel_v:3
%assignvariableop_29_adam_dense_bias_v:B
0assignvariableop_30_adam_lstm_lstm_cell_kernel_v: @L
:assignvariableop_31_adam_lstm_lstm_cell_recurrent_kernel_v:@<
.assignvariableop_32_adam_lstm_lstm_cell_bias_v:@F
4assignvariableop_33_adam_lstm_1_lstm_cell_1_kernel_v: P
>assignvariableop_34_adam_lstm_1_lstm_cell_1_recurrent_kernel_v: @
2assignvariableop_35_adam_lstm_1_lstm_cell_1_bias_v: 
identity_37ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9б2MutableHashTable_table_restore/LookupTableImportV2б
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*╚
valueЙB╗'B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЙ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B С
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*▓
_output_shapesЪ
ю:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:І
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_8AssignVariableOp(assignvariableop_8_lstm_lstm_cell_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_9AssignVariableOp2assignvariableop_9_lstm_lstm_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_10AssignVariableOp'assignvariableop_10_lstm_lstm_cell_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ъ
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_1_lstm_cell_1_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_12AssignVariableOp7assignvariableop_12_lstm_1_lstm_cell_1_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_13AssignVariableOp+assignvariableop_13_lstm_1_lstm_cell_1_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0ї
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:14RestoreV2:tensors:15*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 _
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_18AssignVariableOp/assignvariableop_18_adam_embedding_embeddings_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_20AssignVariableOp%assignvariableop_20_adam_dense_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_21AssignVariableOp0assignvariableop_21_adam_lstm_lstm_cell_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_22AssignVariableOp:assignvariableop_22_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_23AssignVariableOp.assignvariableop_23_adam_lstm_lstm_cell_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_lstm_1_lstm_cell_1_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_lstm_1_lstm_cell_1_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_lstm_1_lstm_cell_1_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_27AssignVariableOp/assignvariableop_27_adam_embedding_embeddings_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_29AssignVariableOp%assignvariableop_29_adam_dense_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_30AssignVariableOp0assignvariableop_30_adam_lstm_lstm_cell_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_31AssignVariableOp:assignvariableop_31_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_32AssignVariableOp.assignvariableop_32_adam_lstm_lstm_cell_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_1_lstm_cell_1_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_34AssignVariableOp>assignvariableop_34_adam_lstm_1_lstm_cell_1_recurrent_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_35AssignVariableOp2assignvariableop_35_adam_lstm_1_lstm_cell_1_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ю
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: Ѕ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable
ы
Ф
*__inference_sequential_layer_call_fn_49831
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	ўu 
	unknown_4: @
	unknown_5:@
	unknown_6:@
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10:

unknown_11:
identityѕбStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_49771o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
#
_output_shapes
:         
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
НQ
╝
?__inference_lstm_layer_call_and_return_conditional_losses_51381

inputs:
(lstm_cell_matmul_readvariableop_resource: @<
*lstm_cell_matmul_1_readvariableop_resource:@7
)lstm_cell_biasadd_readvariableop_resource:@
identityѕб7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:7          D
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

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
value	B : э
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_51291*
condR
while_cond_51290*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:7         *
element_dtype0h
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
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         7[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    а
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype0ю
(lstm/lstm_cell/kernel/Regularizer/SquareSquare?lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @x
'lstm/lstm_cell/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Г
%lstm/lstm_cell/kernel/Regularizer/SumSum,lstm/lstm_cell/kernel/Regularizer/Square:y:00lstm/lstm_cell/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<»
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:0.lstm/lstm_cell/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         7ы
NoOpNoOp8^lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         7 : : : 2r
7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/Square/ReadVariableOp2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         7 
 
_user_specified_nameinputs"ѓL
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╚
serving_default┤
Y
text_vectorization_input=
*serving_default_text_vectorization_input:0         ;
dense2
StatefulPartitionedCall_1:0         tensorflow/serving/predict:┌┬
г
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
ђ__call__
+Ђ&call_and_return_all_conditional_losses
ѓ_default_save_signature"
_tf_keras_sequential
Q
_lookup_layer
	keras_api
Ѓ_adapt_function"
_tf_keras_layer
и

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
ё__call__
+Ё&call_and_return_all_conditional_losses"
_tf_keras_layer
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
є__call__
+Є&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
ѕ__call__
+Ѕ&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
й

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
і__call__
+І&call_and_return_all_conditional_losses"
_tf_keras_layer
ш
%iter

&beta_1

'beta_2
	(decay
)learning_ratemnmo mp*mq+mr,ms-mt.mu/mvvwvx vy*vz+v{,v|-v}.v~/v"
	optimizer
_
1
*2
+3
,4
-5
.6
/7
8
 9"
trackable_list_wrapper
_
0
*1
+2
,3
-4
.5
/6
7
 8"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
	regularization_losses
ђ__call__
ѓ_default_save_signature
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
-
їserving_default"
signature_map
L
5lookup_table
6token_counts
7	keras_api"
_tf_keras_layer
"
_generic_user_object
':%	ўu 2embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
░
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
ё__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
_generic_user_object
с
=
state_size

*kernel
+recurrent_kernel
,bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
Ї__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
(
Ј0"
trackable_list_wrapper
╝

Bstates
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
є__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
с
H
state_size

-kernel
.recurrent_kernel
/bias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
љ__call__
+Љ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
(
њ0"
trackable_list_wrapper
╝

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
ѕ__call__
+Ѕ&call_and_return_all_conditional_losses
'Ѕ"call_and_return_conditional_losses"
_generic_user_object
:2dense/kernel
:2
dense/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
!	variables
"trainable_variables
#regularization_losses
і__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
':% @2lstm/lstm_cell/kernel
1:/@2lstm/lstm_cell/recurrent_kernel
!:@2lstm/lstm_cell/bias
+:) 2lstm_1/lstm_cell_1/kernel
5:3 2#lstm_1/lstm_cell_1/recurrent_kernel
%:# 2lstm_1/lstm_cell_1/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
m
Z_initializer
Њ_create_resource
ћ_initialize
Ћ_destroy_resourceR jCustom.StaticHashTable
T
ќ_create_resource
Ќ_initialize
ў_destroy_resourceR Z
tableЎџ
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
trackable_dict_wrapper
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
(
Ј0"
trackable_list_wrapper
░
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
>	variables
?trainable_variables
@regularization_losses
Ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
(
њ0"
trackable_list_wrapper
░
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
љ__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
N
	etotal
	fcount
g	variables
h	keras_api"
_tf_keras_metric
^
	itotal
	jcount
k
_fn_kwargs
l	variables
m	keras_api"
_tf_keras_metric
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Ј0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
њ0"
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
e0
f1"
trackable_list_wrapper
-
g	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
i0
j1"
trackable_list_wrapper
-
l	variables"
_generic_user_object
,:*	ўu 2Adam/embedding/embeddings/m
#:!2Adam/dense/kernel/m
:2Adam/dense/bias/m
,:* @2Adam/lstm/lstm_cell/kernel/m
6:4@2&Adam/lstm/lstm_cell/recurrent_kernel/m
&:$@2Adam/lstm/lstm_cell/bias/m
0:. 2 Adam/lstm_1/lstm_cell_1/kernel/m
::8 2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
*:( 2Adam/lstm_1/lstm_cell_1/bias/m
,:*	ўu 2Adam/embedding/embeddings/v
#:!2Adam/dense/kernel/v
:2Adam/dense/bias/v
,:* @2Adam/lstm/lstm_cell/kernel/v
6:4@2&Adam/lstm/lstm_cell/recurrent_kernel/v
&:$@2Adam/lstm/lstm_cell/bias/v
0:. 2 Adam/lstm_1/lstm_cell_1/kernel/v
::8 2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
*:( 2Adam/lstm_1/lstm_cell_1/bias/v
Ш2з
*__inference_sequential_layer_call_fn_49293
*__inference_sequential_layer_call_fn_50083
*__inference_sequential_layer_call_fn_50114
*__inference_sequential_layer_call_fn_49831└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Р2▀
E__inference_sequential_layer_call_and_return_conditional_losses_50467
E__inference_sequential_layer_call_and_return_conditional_losses_50820
E__inference_sequential_layer_call_and_return_conditional_losses_49916
E__inference_sequential_layer_call_and_return_conditional_losses_50001└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄B┘
 __inference__wrapped_model_48107text_vectorization_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Й2╗
__inference_adapt_step_50868џ
Њ▓Ј
FullArgSpec
argsџ

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
М2л
)__inference_embedding_layer_call_fn_50875б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_embedding_layer_call_and_return_conditional_losses_50884б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
з2­
$__inference_lstm_layer_call_fn_50901
$__inference_lstm_layer_call_fn_50912
$__inference_lstm_layer_call_fn_50923
$__inference_lstm_layer_call_fn_50934Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▀2▄
?__inference_lstm_layer_call_and_return_conditional_losses_51083
?__inference_lstm_layer_call_and_return_conditional_losses_51232
?__inference_lstm_layer_call_and_return_conditional_losses_51381
?__inference_lstm_layer_call_and_return_conditional_losses_51530Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ч2Э
&__inference_lstm_1_layer_call_fn_51547
&__inference_lstm_1_layer_call_fn_51558
&__inference_lstm_1_layer_call_fn_51569
&__inference_lstm_1_layer_call_fn_51580Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
у2С
A__inference_lstm_1_layer_call_and_return_conditional_losses_51729
A__inference_lstm_1_layer_call_and_return_conditional_losses_51878
A__inference_lstm_1_layer_call_and_return_conditional_losses_52027
A__inference_lstm_1_layer_call_and_return_conditional_losses_52176Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
¤2╠
%__inference_dense_layer_call_fn_52185б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ж2у
@__inference_dense_layer_call_and_return_conditional_losses_52196б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
█Bп
#__inference_signature_wrapper_50052text_vectorization_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џ2Ќ
)__inference_lstm_cell_layer_call_fn_52219
)__inference_lstm_cell_layer_call_fn_52236Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
л2═
D__inference_lstm_cell_layer_call_and_return_conditional_losses_52274
D__inference_lstm_cell_layer_call_and_return_conditional_losses_52312Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▓2»
__inference_loss_fn_0_52323Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
ъ2Џ
+__inference_lstm_cell_1_layer_call_fn_52346
+__inference_lstm_cell_1_layer_call_fn_52363Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
н2Л
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_52401
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_52439Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▓2»
__inference_loss_fn_1_52450Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
▒2«
__inference__creator_52455Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
х2▓
__inference__initializer_52463Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
│2░
__inference__destroyer_52468Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
▒2«
__inference__creator_52473Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
х2▓
__inference__initializer_52478Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
│2░
__inference__destroyer_52483Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
ПB┌
__inference_save_fn_52502checkpoint_key"ф
Ў▓Ћ
FullArgSpec
argsџ
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б	
і 
ЃBђ
__inference_restore_fn_52510restored_tensors_0restored_tensors_1"х
Ќ▓Њ
FullArgSpec
argsџ 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б
	і
	і	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_56
__inference__creator_52455б

б 
ф "і 6
__inference__creator_52473б

б 
ф "і 8
__inference__destroyer_52468б

б 
ф "і 8
__inference__destroyer_52483б

б 
ф "і A
__inference__initializer_524635Ъаб

б 
ф "і :
__inference__initializer_52478б

б 
ф "і Ц
 __inference__wrapped_model_48107ђ5ЏюЮ*+,-./ =б:
3б0
.і+
text_vectorization_input         
ф "-ф*
(
denseі
dense         j
__inference_adapt_step_50868J6ъ?б<
5б2
0њ-б
і         IteratorSpec 
ф "
 а
@__inference_dense_layer_call_and_return_conditional_losses_52196\ /б,
%б"
 і
inputs         
ф "%б"
і
0         
џ x
%__inference_dense_layer_call_fn_52185O /б,
%б"
 і
inputs         
ф "і         Д
D__inference_embedding_layer_call_and_return_conditional_losses_50884_/б,
%б"
 і
inputs         7	
ф ")б&
і
0         7 
џ 
)__inference_embedding_layer_call_fn_50875R/б,
%б"
 і
inputs         7	
ф "і         7 :
__inference_loss_fn_0_52323*б

б 
ф "і :
__inference_loss_fn_1_52450-б

б 
ф "і ┬
A__inference_lstm_1_layer_call_and_return_conditional_losses_51729}-./OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "%б"
і
0         
џ ┬
A__inference_lstm_1_layer_call_and_return_conditional_losses_51878}-./OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "%б"
і
0         
џ ▓
A__inference_lstm_1_layer_call_and_return_conditional_losses_52027m-./?б<
5б2
$і!
inputs         7

 
p 

 
ф "%б"
і
0         
џ ▓
A__inference_lstm_1_layer_call_and_return_conditional_losses_52176m-./?б<
5б2
$і!
inputs         7

 
p

 
ф "%б"
і
0         
џ џ
&__inference_lstm_1_layer_call_fn_51547p-./OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "і         џ
&__inference_lstm_1_layer_call_fn_51558p-./OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "і         і
&__inference_lstm_1_layer_call_fn_51569`-./?б<
5б2
$і!
inputs         7

 
p 

 
ф "і         і
&__inference_lstm_1_layer_call_fn_51580`-./?б<
5б2
$і!
inputs         7

 
p

 
ф "і         ╚
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_52401§-./ђб}
vбs
 і
inputs         
KбH
"і
states/0         
"і
states/1         
p 
ф "sбp
iбf
і
0/0         
EџB
і
0/1/0         
і
0/1/1         
џ ╚
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_52439§-./ђб}
vбs
 і
inputs         
KбH
"і
states/0         
"і
states/1         
p
ф "sбp
iбf
і
0/0         
EџB
і
0/1/0         
і
0/1/1         
џ Ю
+__inference_lstm_cell_1_layer_call_fn_52346ь-./ђб}
vбs
 і
inputs         
KбH
"і
states/0         
"і
states/1         
p 
ф "cб`
і
0         
Aџ>
і
1/0         
і
1/1         Ю
+__inference_lstm_cell_1_layer_call_fn_52363ь-./ђб}
vбs
 і
inputs         
KбH
"і
states/0         
"і
states/1         
p
ф "cб`
і
0         
Aџ>
і
1/0         
і
1/1         к
D__inference_lstm_cell_layer_call_and_return_conditional_losses_52274§*+,ђб}
vбs
 і
inputs          
KбH
"і
states/0         
"і
states/1         
p 
ф "sбp
iбf
і
0/0         
EџB
і
0/1/0         
і
0/1/1         
џ к
D__inference_lstm_cell_layer_call_and_return_conditional_losses_52312§*+,ђб}
vбs
 і
inputs          
KбH
"і
states/0         
"і
states/1         
p
ф "sбp
iбf
і
0/0         
EџB
і
0/1/0         
і
0/1/1         
џ Џ
)__inference_lstm_cell_layer_call_fn_52219ь*+,ђб}
vбs
 і
inputs          
KбH
"і
states/0         
"і
states/1         
p 
ф "cб`
і
0         
Aџ>
і
1/0         
і
1/1         Џ
)__inference_lstm_cell_layer_call_fn_52236ь*+,ђб}
vбs
 і
inputs          
KбH
"і
states/0         
"і
states/1         
p
ф "cб`
і
0         
Aџ>
і
1/0         
і
1/1         ╬
?__inference_lstm_layer_call_and_return_conditional_losses_51083і*+,OбL
EбB
4џ1
/і,
inputs/0                   

 
p 

 
ф "2б/
(і%
0                  
џ ╬
?__inference_lstm_layer_call_and_return_conditional_losses_51232і*+,OбL
EбB
4џ1
/і,
inputs/0                   

 
p

 
ф "2б/
(і%
0                  
џ ┤
?__inference_lstm_layer_call_and_return_conditional_losses_51381q*+,?б<
5б2
$і!
inputs         7 

 
p 

 
ф ")б&
і
0         7
џ ┤
?__inference_lstm_layer_call_and_return_conditional_losses_51530q*+,?б<
5б2
$і!
inputs         7 

 
p

 
ф ")б&
і
0         7
џ Ц
$__inference_lstm_layer_call_fn_50901}*+,OбL
EбB
4џ1
/і,
inputs/0                   

 
p 

 
ф "%і"                  Ц
$__inference_lstm_layer_call_fn_50912}*+,OбL
EбB
4џ1
/і,
inputs/0                   

 
p

 
ф "%і"                  ї
$__inference_lstm_layer_call_fn_50923d*+,?б<
5б2
$і!
inputs         7 

 
p 

 
ф "і         7ї
$__inference_lstm_layer_call_fn_50934d*+,?б<
5б2
$і!
inputs         7 

 
p

 
ф "і         7y
__inference_restore_fn_52510Y6KбH
Aб>
і
restored_tensors_0
і
restored_tensors_1	
ф "і ћ
__inference_save_fn_52502Ш6&б#
б
і
checkpoint_key 
ф "╚џ─
`ф]

nameі
0/name 
#

slice_specі
0/slice_spec 

tensorі
0/tensor
`ф]

nameі
1/name 
#

slice_specі
1/slice_spec 

tensorі
1/tensor	╩
E__inference_sequential_layer_call_and_return_conditional_losses_49916ђ5ЏюЮ*+,-./ EбB
;б8
.і+
text_vectorization_input         
p 

 
ф "%б"
і
0         
џ ╩
E__inference_sequential_layer_call_and_return_conditional_losses_50001ђ5ЏюЮ*+,-./ EбB
;б8
.і+
text_vectorization_input         
p

 
ф "%б"
і
0         
џ и
E__inference_sequential_layer_call_and_return_conditional_losses_50467n5ЏюЮ*+,-./ 3б0
)б&
і
inputs         
p 

 
ф "%б"
і
0         
џ и
E__inference_sequential_layer_call_and_return_conditional_losses_50820n5ЏюЮ*+,-./ 3б0
)б&
і
inputs         
p

 
ф "%б"
і
0         
џ А
*__inference_sequential_layer_call_fn_49293s5ЏюЮ*+,-./ EбB
;б8
.і+
text_vectorization_input         
p 

 
ф "і         А
*__inference_sequential_layer_call_fn_49831s5ЏюЮ*+,-./ EбB
;б8
.і+
text_vectorization_input         
p

 
ф "і         Ј
*__inference_sequential_layer_call_fn_50083a5ЏюЮ*+,-./ 3б0
)б&
і
inputs         
p 

 
ф "і         Ј
*__inference_sequential_layer_call_fn_50114a5ЏюЮ*+,-./ 3б0
)б&
і
inputs         
p

 
ф "і         ─
#__inference_signature_wrapper_50052ю5ЏюЮ*+,-./ YбV
б 
OфL
J
text_vectorization_input.і+
text_vectorization_input         "-ф*
(
denseі
dense         