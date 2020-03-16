"".main STEXT size=301 args=0x0 locals=0x40
	0x0000 00000 (server2.go:16)	TEXT	"".main(SB), ABIInternal, $64-0
	0x0000 00000 (server2.go:16)	MOVQ	(TLS), CX
	0x0009 00009 (server2.go:16)	CMPQ	SP, 16(CX)
	0x000d 00013 (server2.go:16)	PCDATA	$0, $-2
	0x000d 00013 (server2.go:16)	JLS	291
	0x0013 00019 (server2.go:16)	PCDATA	$0, $-1
	0x0013 00019 (server2.go:16)	SUBQ	$64, SP
	0x0017 00023 (server2.go:16)	MOVQ	BP, 56(SP)
	0x001c 00028 (server2.go:16)	LEAQ	56(SP), BP
	0x0021 00033 (server2.go:16)	PCDATA	$0, $-2
	0x0021 00033 (server2.go:16)	PCDATA	$1, $-2
	0x0021 00033 (server2.go:16)	FUNCDATA	$0, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0021 00033 (server2.go:16)	FUNCDATA	$1, gclocals·568470801006e5c0dc3947ea998fe279(SB)
	0x0021 00033 (server2.go:16)	FUNCDATA	$2, gclocals·ba192201ac73f95fb90b551d9176d705(SB)
	0x0021 00033 (server2.go:16)	FUNCDATA	$3, "".main.stkobj(SB)
	0x0021 00033 (server2.go:17)	PCDATA	$0, $-1
	0x0021 00033 (server2.go:17)	PCDATA	$1, $-1
	0x0021 00033 (<unknown line number>)	NOP
	0x0021 00033 ($GOROOT/src/net/http/server.go:2452)	XCHGL	AX, AX
	0x0022 00034 (server2.go:17)	PCDATA	$0, $1
	0x0022 00034 (server2.go:17)	PCDATA	$1, $0
	0x0022 00034 (server2.go:17)	MOVQ	net/http.DefaultServeMux(SB), AX
	0x0029 00041 ($GOROOT/src/net/http/server.go:2440)	PCDATA	$0, $0
	0x0029 00041 ($GOROOT/src/net/http/server.go:2440)	MOVQ	AX, (SP)
	0x002d 00045 ($GOROOT/src/net/http/server.go:2440)	PCDATA	$0, $1
	0x002d 00045 ($GOROOT/src/net/http/server.go:2440)	LEAQ	go.string."/"(SB), AX
	0x0034 00052 ($GOROOT/src/net/http/server.go:2440)	PCDATA	$0, $0
	0x0034 00052 ($GOROOT/src/net/http/server.go:2440)	MOVQ	AX, 8(SP)
	0x0039 00057 ($GOROOT/src/net/http/server.go:2440)	MOVQ	$1, 16(SP)
	0x0042 00066 ($GOROOT/src/net/http/server.go:2440)	PCDATA	$0, $1
	0x0042 00066 ($GOROOT/src/net/http/server.go:2440)	LEAQ	go.itab.net/http.HandlerFunc,net/http.Handler(SB), AX
	0x0049 00073 ($GOROOT/src/net/http/server.go:2440)	PCDATA	$0, $0
	0x0049 00073 ($GOROOT/src/net/http/server.go:2440)	MOVQ	AX, 24(SP)
	0x004e 00078 ($GOROOT/src/net/http/server.go:2440)	PCDATA	$0, $2
	0x004e 00078 ($GOROOT/src/net/http/server.go:2440)	LEAQ	"".handlerTwo·f(SB), CX
	0x0055 00085 ($GOROOT/src/net/http/server.go:2440)	PCDATA	$0, $0
	0x0055 00085 ($GOROOT/src/net/http/server.go:2440)	MOVQ	CX, 32(SP)
	0x005a 00090 ($GOROOT/src/net/http/server.go:2440)	CALL	net/http.(*ServeMux).Handle(SB)
	0x005f 00095 (server2.go:18)	XCHGL	AX, AX
	0x0060 00096 (<unknown line number>)	NOP
	0x0060 00096 ($GOROOT/src/net/http/server.go:2452)	PCDATA	$0, $1
	0x0060 00096 ($GOROOT/src/net/http/server.go:2452)	MOVQ	net/http.DefaultServeMux(SB), AX
	0x0067 00103 ($GOROOT/src/net/http/server.go:2440)	PCDATA	$0, $0
	0x0067 00103 ($GOROOT/src/net/http/server.go:2440)	MOVQ	AX, (SP)
	0x006b 00107 ($GOROOT/src/net/http/server.go:2440)	PCDATA	$0, $1
	0x006b 00107 ($GOROOT/src/net/http/server.go:2440)	LEAQ	go.string."/counter"(SB), AX
	0x0072 00114 ($GOROOT/src/net/http/server.go:2440)	PCDATA	$0, $0
	0x0072 00114 ($GOROOT/src/net/http/server.go:2440)	MOVQ	AX, 8(SP)
	0x0077 00119 ($GOROOT/src/net/http/server.go:2440)	MOVQ	$8, 16(SP)
	0x0080 00128 ($GOROOT/src/net/http/server.go:2440)	PCDATA	$0, $1
	0x0080 00128 ($GOROOT/src/net/http/server.go:2440)	LEAQ	go.itab.net/http.HandlerFunc,net/http.Handler(SB), AX
	0x0087 00135 ($GOROOT/src/net/http/server.go:2440)	PCDATA	$0, $0
	0x0087 00135 ($GOROOT/src/net/http/server.go:2440)	MOVQ	AX, 24(SP)
	0x008c 00140 ($GOROOT/src/net/http/server.go:2440)	PCDATA	$0, $1
	0x008c 00140 ($GOROOT/src/net/http/server.go:2440)	LEAQ	"".counter·f(SB), AX
	0x0093 00147 ($GOROOT/src/net/http/server.go:2440)	PCDATA	$0, $0
	0x0093 00147 ($GOROOT/src/net/http/server.go:2440)	MOVQ	AX, 32(SP)
	0x0098 00152 ($GOROOT/src/net/http/server.go:2440)	CALL	net/http.(*ServeMux).Handle(SB)
	0x009d 00157 (<unknown line number>)	NOP
	0x009d 00157 ($GOROOT/src/net/http/server.go:3085)	PCDATA	$0, $1
	0x009d 00157 ($GOROOT/src/net/http/server.go:3085)	LEAQ	type.net/http.Server(SB), AX
	0x00a4 00164 ($GOROOT/src/net/http/server.go:3085)	PCDATA	$0, $0
	0x00a4 00164 ($GOROOT/src/net/http/server.go:3085)	MOVQ	AX, (SP)
	0x00a8 00168 ($GOROOT/src/net/http/server.go:3085)	CALL	runtime.newobject(SB)
	0x00ad 00173 ($GOROOT/src/net/http/server.go:3085)	PCDATA	$0, $1
	0x00ad 00173 ($GOROOT/src/net/http/server.go:3085)	MOVQ	8(SP), AX
	0x00b2 00178 ($GOROOT/src/net/http/server.go:3085)	MOVQ	$14, 8(AX)
	0x00ba 00186 ($GOROOT/src/net/http/server.go:3085)	PCDATA	$0, $3
	0x00ba 00186 ($GOROOT/src/net/http/server.go:3085)	LEAQ	go.string."localhost:8888"(SB), CX
	0x00c1 00193 ($GOROOT/src/net/http/server.go:3085)	PCDATA	$0, $1
	0x00c1 00193 ($GOROOT/src/net/http/server.go:3085)	MOVQ	CX, (AX)
	0x00c4 00196 ($GOROOT/src/net/http/server.go:3085)	XORPS	X0, X0
	0x00c7 00199 ($GOROOT/src/net/http/server.go:3085)	MOVUPS	X0, 16(AX)
	0x00cb 00203 ($GOROOT/src/net/http/server.go:3086)	PCDATA	$0, $0
	0x00cb 00203 ($GOROOT/src/net/http/server.go:3086)	MOVQ	AX, (SP)
	0x00cf 00207 ($GOROOT/src/net/http/server.go:3086)	CALL	net/http.(*Server).ListenAndServe(SB)
	0x00d4 00212 ($GOROOT/src/net/http/server.go:3086)	PCDATA	$0, $1
	0x00d4 00212 ($GOROOT/src/net/http/server.go:3086)	MOVQ	16(SP), AX
	0x00d9 00217 ($GOROOT/src/net/http/server.go:3086)	PCDATA	$0, $3
	0x00d9 00217 ($GOROOT/src/net/http/server.go:3086)	MOVQ	8(SP), CX
	0x00de 00222 (server2.go:20)	TESTQ	CX, CX
	0x00e1 00225 (server2.go:20)	JEQ	231
	0x00e3 00227 (server2.go:20)	MOVQ	8(CX), CX
	0x00e7 00231 (server2.go:20)	PCDATA	$1, $1
	0x00e7 00231 (server2.go:20)	XORPS	X0, X0
	0x00ea 00234 (server2.go:20)	MOVUPS	X0, ""..autotmp_15+40(SP)
	0x00ef 00239 (server2.go:20)	PCDATA	$0, $1
	0x00ef 00239 (server2.go:20)	MOVQ	CX, ""..autotmp_15+40(SP)
	0x00f4 00244 (server2.go:20)	PCDATA	$0, $0
	0x00f4 00244 (server2.go:20)	MOVQ	AX, ""..autotmp_15+48(SP)
	0x00f9 00249 (server2.go:20)	PCDATA	$0, $1
	0x00f9 00249 (server2.go:20)	PCDATA	$1, $0
	0x00f9 00249 (server2.go:20)	LEAQ	""..autotmp_15+40(SP), AX
	0x00fe 00254 (server2.go:20)	PCDATA	$0, $0
	0x00fe 00254 (server2.go:20)	MOVQ	AX, (SP)
	0x0102 00258 (server2.go:20)	MOVQ	$1, 8(SP)
	0x010b 00267 (server2.go:20)	MOVQ	$1, 16(SP)
	0x0114 00276 (server2.go:20)	CALL	log.Fatal(SB)
	0x0119 00281 (server2.go:22)	MOVQ	56(SP), BP
	0x011e 00286 (server2.go:22)	ADDQ	$64, SP
	0x0122 00290 (server2.go:22)	RET
	0x0123 00291 (server2.go:22)	NOP
	0x0123 00291 (server2.go:16)	PCDATA	$1, $-1
	0x0123 00291 (server2.go:16)	PCDATA	$0, $-2
	0x0123 00291 (server2.go:16)	CALL	runtime.morestack_noctxt(SB)
	0x0128 00296 (server2.go:16)	PCDATA	$0, $-1
	0x0128 00296 (server2.go:16)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 10  eH..%....H;a....
	0x0010 01 00 00 48 83 ec 40 48 89 6c 24 38 48 8d 6c 24  ...H..@H.l$8H.l$
	0x0020 38 90 48 8b 05 00 00 00 00 48 89 04 24 48 8d 05  8.H......H..$H..
	0x0030 00 00 00 00 48 89 44 24 08 48 c7 44 24 10 01 00  ....H.D$.H.D$...
	0x0040 00 00 48 8d 05 00 00 00 00 48 89 44 24 18 48 8d  ..H......H.D$.H.
	0x0050 0d 00 00 00 00 48 89 4c 24 20 e8 00 00 00 00 90  .....H.L$ ......
	0x0060 48 8b 05 00 00 00 00 48 89 04 24 48 8d 05 00 00  H......H..$H....
	0x0070 00 00 48 89 44 24 08 48 c7 44 24 10 08 00 00 00  ..H.D$.H.D$.....
	0x0080 48 8d 05 00 00 00 00 48 89 44 24 18 48 8d 05 00  H......H.D$.H...
	0x0090 00 00 00 48 89 44 24 20 e8 00 00 00 00 48 8d 05  ...H.D$ .....H..
	0x00a0 00 00 00 00 48 89 04 24 e8 00 00 00 00 48 8b 44  ....H..$.....H.D
	0x00b0 24 08 48 c7 40 08 0e 00 00 00 48 8d 0d 00 00 00  $.H.@.....H.....
	0x00c0 00 48 89 08 0f 57 c0 0f 11 40 10 48 89 04 24 e8  .H...W...@.H..$.
	0x00d0 00 00 00 00 48 8b 44 24 10 48 8b 4c 24 08 48 85  ....H.D$.H.L$.H.
	0x00e0 c9 74 04 48 8b 49 08 0f 57 c0 0f 11 44 24 28 48  .t.H.I..W...D$(H
	0x00f0 89 4c 24 28 48 89 44 24 30 48 8d 44 24 28 48 89  .L$(H.D$0H.D$(H.
	0x0100 04 24 48 c7 44 24 08 01 00 00 00 48 c7 44 24 10  .$H.D$.....H.D$.
	0x0110 01 00 00 00 e8 00 00 00 00 48 8b 6c 24 38 48 83  .........H.l$8H.
	0x0120 c4 40 c3 e8 00 00 00 00 e9 d3 fe ff ff           .@...........
	rel 5+4 t=17 TLS+0
	rel 37+4 t=16 net/http.DefaultServeMux+0
	rel 48+4 t=16 go.string."/"+0
	rel 69+4 t=16 go.itab.net/http.HandlerFunc,net/http.Handler+0
	rel 81+4 t=16 "".handlerTwo·f+0
	rel 91+4 t=8 net/http.(*ServeMux).Handle+0
	rel 99+4 t=16 net/http.DefaultServeMux+0
	rel 110+4 t=16 go.string."/counter"+0
	rel 131+4 t=16 go.itab.net/http.HandlerFunc,net/http.Handler+0
	rel 143+4 t=16 "".counter·f+0
	rel 153+4 t=8 net/http.(*ServeMux).Handle+0
	rel 160+4 t=16 type.net/http.Server+0
	rel 169+4 t=8 runtime.newobject+0
	rel 189+4 t=16 go.string."localhost:8888"+0
	rel 208+4 t=8 net/http.(*Server).ListenAndServe+0
	rel 277+4 t=8 log.Fatal+0
	rel 292+4 t=8 runtime.morestack_noctxt+0
"".counter STEXT size=313 args=0x18 locals=0x68
	0x0000 00000 (server2.go:24)	TEXT	"".counter(SB), ABIInternal, $104-24
	0x0000 00000 (server2.go:24)	MOVQ	(TLS), CX
	0x0009 00009 (server2.go:24)	CMPQ	SP, 16(CX)
	0x000d 00013 (server2.go:24)	PCDATA	$0, $-2
	0x000d 00013 (server2.go:24)	JLS	303
	0x0013 00019 (server2.go:24)	PCDATA	$0, $-1
	0x0013 00019 (server2.go:24)	SUBQ	$104, SP
	0x0017 00023 (server2.go:24)	MOVQ	BP, 96(SP)
	0x001c 00028 (server2.go:24)	LEAQ	96(SP), BP
	0x0021 00033 (server2.go:24)	PCDATA	$0, $-2
	0x0021 00033 (server2.go:24)	PCDATA	$1, $-2
	0x0021 00033 (server2.go:24)	FUNCDATA	$0, gclocals·ac25fd02b55a71fa32f691fc8a685923(SB)
	0x0021 00033 (server2.go:24)	FUNCDATA	$1, gclocals·b566bf517073933b5de3b38142d02a51(SB)
	0x0021 00033 (server2.go:24)	FUNCDATA	$2, gclocals·88474949c786709129e808e85e508726(SB)
	0x0021 00033 (server2.go:24)	FUNCDATA	$3, "".counter.stkobj(SB)
	0x0021 00033 (server2.go:25)	PCDATA	$0, $-1
	0x0021 00033 (server2.go:25)	PCDATA	$1, $-1
	0x0021 00033 (<unknown line number>)	NOP
	0x0021 00033 (server2.go:25)	PCDATA	$0, $0
	0x0021 00033 (server2.go:25)	PCDATA	$1, $0
	0x0021 00033 (server2.go:25)	XORL	AX, AX
	0x0023 00035 ($GOROOT/src/sync/mutex.go:74)	PCDATA	$0, $1
	0x0023 00035 ($GOROOT/src/sync/mutex.go:74)	LEAQ	"".mLock(SB), CX
	0x002a 00042 ($GOROOT/src/sync/mutex.go:74)	MOVL	$1, DX
	0x002f 00047 ($GOROOT/src/sync/mutex.go:74)	PCDATA	$0, $0
	0x002f 00047 ($GOROOT/src/sync/mutex.go:74)	LOCK
	0x0030 00048 ($GOROOT/src/sync/mutex.go:74)	CMPXCHGL	DX, (CX)
	0x0033 00051 ($GOROOT/src/sync/mutex.go:74)	SETEQ	DL
	0x0036 00054 ($GOROOT/src/sync/mutex.go:74)	TESTB	DL, DL
	0x0038 00056 ($GOROOT/src/sync/mutex.go:74)	JEQ	282
	0x003e 00062 (server2.go:26)	MOVQ	"".count(SB), AX
	0x0045 00069 (server2.go:26)	INCQ	AX
	0x0048 00072 (server2.go:26)	MOVQ	AX, "".count(SB)
	0x004f 00079 (server2.go:27)	MOVQ	AX, (SP)
	0x0053 00083 (server2.go:27)	CALL	runtime.convT64(SB)
	0x0058 00088 (server2.go:27)	PCDATA	$0, $2
	0x0058 00088 (server2.go:27)	MOVQ	8(SP), AX
	0x005d 00093 (server2.go:27)	PCDATA	$1, $1
	0x005d 00093 (server2.go:27)	XORPS	X0, X0
	0x0060 00096 (server2.go:27)	MOVUPS	X0, ""..autotmp_6+80(SP)
	0x0065 00101 (server2.go:27)	PCDATA	$0, $3
	0x0065 00101 (server2.go:27)	LEAQ	type.int(SB), CX
	0x006c 00108 (server2.go:27)	PCDATA	$0, $2
	0x006c 00108 (server2.go:27)	MOVQ	CX, ""..autotmp_6+80(SP)
	0x0071 00113 (server2.go:27)	PCDATA	$0, $0
	0x0071 00113 (server2.go:27)	MOVQ	AX, ""..autotmp_6+88(SP)
	0x0076 00118 (server2.go:27)	PCDATA	$0, $2
	0x0076 00118 (server2.go:27)	LEAQ	type.io.Writer(SB), AX
	0x007d 00125 (server2.go:27)	PCDATA	$0, $0
	0x007d 00125 (server2.go:27)	MOVQ	AX, (SP)
	0x0081 00129 (server2.go:27)	MOVQ	"".writer+112(SP), AX
	0x0086 00134 (server2.go:27)	MOVQ	AX, 8(SP)
	0x008b 00139 (server2.go:27)	PCDATA	$0, $2
	0x008b 00139 (server2.go:27)	PCDATA	$1, $2
	0x008b 00139 (server2.go:27)	MOVQ	"".writer+120(SP), AX
	0x0090 00144 (server2.go:27)	PCDATA	$0, $0
	0x0090 00144 (server2.go:27)	MOVQ	AX, 16(SP)
	0x0095 00149 (server2.go:27)	CALL	runtime.convI2I(SB)
	0x009a 00154 (server2.go:27)	MOVQ	24(SP), AX
	0x009f 00159 (server2.go:27)	PCDATA	$0, $1
	0x009f 00159 (server2.go:27)	MOVQ	32(SP), CX
	0x00a4 00164 (server2.go:27)	MOVQ	AX, (SP)
	0x00a8 00168 (server2.go:27)	PCDATA	$0, $0
	0x00a8 00168 (server2.go:27)	MOVQ	CX, 8(SP)
	0x00ad 00173 (server2.go:27)	PCDATA	$0, $2
	0x00ad 00173 (server2.go:27)	LEAQ	go.string."Count %d\n"(SB), AX
	0x00b4 00180 (server2.go:27)	PCDATA	$0, $0
	0x00b4 00180 (server2.go:27)	MOVQ	AX, 16(SP)
	0x00b9 00185 (server2.go:27)	MOVQ	$9, 24(SP)
	0x00c2 00194 (server2.go:27)	PCDATA	$0, $2
	0x00c2 00194 (server2.go:27)	PCDATA	$1, $3
	0x00c2 00194 (server2.go:27)	LEAQ	""..autotmp_6+80(SP), AX
	0x00c7 00199 (server2.go:27)	PCDATA	$0, $0
	0x00c7 00199 (server2.go:27)	MOVQ	AX, 32(SP)
	0x00cc 00204 (server2.go:27)	MOVQ	$1, 40(SP)
	0x00d5 00213 (server2.go:27)	MOVQ	$1, 48(SP)
	0x00de 00222 (server2.go:27)	CALL	fmt.Fprintf(SB)
	0x00e3 00227 (server2.go:28)	XCHGL	AX, AX
	0x00e4 00228 ($GOROOT/src/sync/mutex.go:186)	MOVL	$-1, AX
	0x00e9 00233 ($GOROOT/src/sync/mutex.go:186)	PCDATA	$0, $1
	0x00e9 00233 ($GOROOT/src/sync/mutex.go:186)	LEAQ	"".mLock(SB), CX
	0x00f0 00240 ($GOROOT/src/sync/mutex.go:186)	PCDATA	$0, $0
	0x00f0 00240 ($GOROOT/src/sync/mutex.go:186)	LOCK
	0x00f1 00241 ($GOROOT/src/sync/mutex.go:186)	XADDL	AX, (CX)
	0x00f4 00244 ($GOROOT/src/sync/mutex.go:186)	DECL	AX
	0x00f6 00246 ($GOROOT/src/sync/mutex.go:187)	TESTL	AX, AX
	0x00f8 00248 ($GOROOT/src/sync/mutex.go:187)	JNE	260
	0x00fa 00250 (<unknown line number>)	PCDATA	$0, $-1
	0x00fa 00250 (<unknown line number>)	PCDATA	$1, $-1
	0x00fa 00250 (<unknown line number>)	MOVQ	96(SP), BP
	0x00ff 00255 (<unknown line number>)	ADDQ	$104, SP
	0x0103 00259 (<unknown line number>)	RET
	0x0104 00260 ($GOROOT/src/sync/mutex.go:190)	PCDATA	$0, $1
	0x0104 00260 ($GOROOT/src/sync/mutex.go:190)	PCDATA	$1, $3
	0x0104 00260 ($GOROOT/src/sync/mutex.go:190)	LEAQ	"".mLock(SB), CX
	0x010b 00267 ($GOROOT/src/sync/mutex.go:190)	PCDATA	$0, $0
	0x010b 00267 ($GOROOT/src/sync/mutex.go:190)	MOVQ	CX, (SP)
	0x010f 00271 ($GOROOT/src/sync/mutex.go:190)	MOVL	AX, 8(SP)
	0x0113 00275 ($GOROOT/src/sync/mutex.go:190)	CALL	sync.(*Mutex).unlockSlow(SB)
	0x0118 00280 ($GOROOT/src/sync/mutex.go:190)	JMP	250
	0x011a 00282 ($GOROOT/src/sync/mutex.go:81)	PCDATA	$0, $2
	0x011a 00282 ($GOROOT/src/sync/mutex.go:81)	PCDATA	$1, $0
	0x011a 00282 ($GOROOT/src/sync/mutex.go:81)	LEAQ	"".mLock(SB), AX
	0x0121 00289 ($GOROOT/src/sync/mutex.go:81)	PCDATA	$0, $0
	0x0121 00289 ($GOROOT/src/sync/mutex.go:81)	MOVQ	AX, (SP)
	0x0125 00293 ($GOROOT/src/sync/mutex.go:81)	CALL	sync.(*Mutex).lockSlow(SB)
	0x012a 00298 (server2.go:25)	JMP	62
	0x012f 00303 (server2.go:25)	NOP
	0x012f 00303 (server2.go:24)	PCDATA	$1, $-1
	0x012f 00303 (server2.go:24)	PCDATA	$0, $-2
	0x012f 00303 (server2.go:24)	CALL	runtime.morestack_noctxt(SB)
	0x0134 00308 (server2.go:24)	PCDATA	$0, $-1
	0x0134 00308 (server2.go:24)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 1c  eH..%....H;a....
	0x0010 01 00 00 48 83 ec 68 48 89 6c 24 60 48 8d 6c 24  ...H..hH.l$`H.l$
	0x0020 60 31 c0 48 8d 0d 00 00 00 00 ba 01 00 00 00 f0  `1.H............
	0x0030 0f b1 11 0f 94 c2 84 d2 0f 84 dc 00 00 00 48 8b  ..............H.
	0x0040 05 00 00 00 00 48 ff c0 48 89 05 00 00 00 00 48  .....H..H......H
	0x0050 89 04 24 e8 00 00 00 00 48 8b 44 24 08 0f 57 c0  ..$.....H.D$..W.
	0x0060 0f 11 44 24 50 48 8d 0d 00 00 00 00 48 89 4c 24  ..D$PH......H.L$
	0x0070 50 48 89 44 24 58 48 8d 05 00 00 00 00 48 89 04  PH.D$XH......H..
	0x0080 24 48 8b 44 24 70 48 89 44 24 08 48 8b 44 24 78  $H.D$pH.D$.H.D$x
	0x0090 48 89 44 24 10 e8 00 00 00 00 48 8b 44 24 18 48  H.D$......H.D$.H
	0x00a0 8b 4c 24 20 48 89 04 24 48 89 4c 24 08 48 8d 05  .L$ H..$H.L$.H..
	0x00b0 00 00 00 00 48 89 44 24 10 48 c7 44 24 18 09 00  ....H.D$.H.D$...
	0x00c0 00 00 48 8d 44 24 50 48 89 44 24 20 48 c7 44 24  ..H.D$PH.D$ H.D$
	0x00d0 28 01 00 00 00 48 c7 44 24 30 01 00 00 00 e8 00  (....H.D$0......
	0x00e0 00 00 00 90 b8 ff ff ff ff 48 8d 0d 00 00 00 00  .........H......
	0x00f0 f0 0f c1 01 ff c8 85 c0 75 0a 48 8b 6c 24 60 48  ........u.H.l$`H
	0x0100 83 c4 68 c3 48 8d 0d 00 00 00 00 48 89 0c 24 89  ..h.H......H..$.
	0x0110 44 24 08 e8 00 00 00 00 eb e0 48 8d 05 00 00 00  D$........H.....
	0x0120 00 48 89 04 24 e8 00 00 00 00 e9 0f ff ff ff e8  .H..$...........
	0x0130 00 00 00 00 e9 c7 fe ff ff                       .........
	rel 5+4 t=17 TLS+0
	rel 38+4 t=16 "".mLock+0
	rel 65+4 t=16 "".count+0
	rel 75+4 t=16 "".count+0
	rel 84+4 t=8 runtime.convT64+0
	rel 104+4 t=16 type.int+0
	rel 121+4 t=16 type.io.Writer+0
	rel 150+4 t=8 runtime.convI2I+0
	rel 176+4 t=16 go.string."Count %d\n"+0
	rel 223+4 t=8 fmt.Fprintf+0
	rel 236+4 t=16 "".mLock+0
	rel 263+4 t=16 "".mLock+0
	rel 276+4 t=8 sync.(*Mutex).unlockSlow+0
	rel 285+4 t=16 "".mLock+0
	rel 294+4 t=8 sync.(*Mutex).lockSlow+0
	rel 304+4 t=8 runtime.morestack_noctxt+0
"".handlerTwo STEXT size=303 args=0x18 locals=0x68
	0x0000 00000 (server2.go:31)	TEXT	"".handlerTwo(SB), ABIInternal, $104-24
	0x0000 00000 (server2.go:31)	MOVQ	(TLS), CX
	0x0009 00009 (server2.go:31)	CMPQ	SP, 16(CX)
	0x000d 00013 (server2.go:31)	PCDATA	$0, $-2
	0x000d 00013 (server2.go:31)	JLS	293
	0x0013 00019 (server2.go:31)	PCDATA	$0, $-1
	0x0013 00019 (server2.go:31)	SUBQ	$104, SP
	0x0017 00023 (server2.go:31)	MOVQ	BP, 96(SP)
	0x001c 00028 (server2.go:31)	LEAQ	96(SP), BP
	0x0021 00033 (server2.go:31)	PCDATA	$0, $-2
	0x0021 00033 (server2.go:31)	PCDATA	$1, $-2
	0x0021 00033 (server2.go:31)	FUNCDATA	$0, gclocals·ac25fd02b55a71fa32f691fc8a685923(SB)
	0x0021 00033 (server2.go:31)	FUNCDATA	$1, gclocals·b566bf517073933b5de3b38142d02a51(SB)
	0x0021 00033 (server2.go:31)	FUNCDATA	$2, gclocals·88474949c786709129e808e85e508726(SB)
	0x0021 00033 (server2.go:31)	FUNCDATA	$3, "".handlerTwo.stkobj(SB)
	0x0021 00033 (server2.go:32)	PCDATA	$0, $-1
	0x0021 00033 (server2.go:32)	PCDATA	$1, $-1
	0x0021 00033 (<unknown line number>)	NOP
	0x0021 00033 (server2.go:32)	PCDATA	$0, $0
	0x0021 00033 (server2.go:32)	PCDATA	$1, $0
	0x0021 00033 (server2.go:32)	XORL	AX, AX
	0x0023 00035 ($GOROOT/src/sync/mutex.go:74)	PCDATA	$0, $1
	0x0023 00035 ($GOROOT/src/sync/mutex.go:74)	LEAQ	"".mLock(SB), CX
	0x002a 00042 ($GOROOT/src/sync/mutex.go:74)	MOVL	$1, DX
	0x002f 00047 ($GOROOT/src/sync/mutex.go:74)	PCDATA	$0, $0
	0x002f 00047 ($GOROOT/src/sync/mutex.go:74)	LOCK
	0x0030 00048 ($GOROOT/src/sync/mutex.go:74)	CMPXCHGL	DX, (CX)
	0x0033 00051 ($GOROOT/src/sync/mutex.go:74)	SETEQ	DL
	0x0036 00054 ($GOROOT/src/sync/mutex.go:74)	TESTB	DL, DL
	0x0038 00056 ($GOROOT/src/sync/mutex.go:74)	JEQ	272
	0x003e 00062 (server2.go:33)	MOVQ	"".count(SB), AX
	0x0045 00069 (server2.go:33)	MOVQ	AX, (SP)
	0x0049 00073 (server2.go:33)	CALL	runtime.convT64(SB)
	0x004e 00078 (server2.go:33)	PCDATA	$0, $2
	0x004e 00078 (server2.go:33)	MOVQ	8(SP), AX
	0x0053 00083 (server2.go:33)	PCDATA	$1, $1
	0x0053 00083 (server2.go:33)	XORPS	X0, X0
	0x0056 00086 (server2.go:33)	MOVUPS	X0, ""..autotmp_6+80(SP)
	0x005b 00091 (server2.go:33)	PCDATA	$0, $3
	0x005b 00091 (server2.go:33)	LEAQ	type.int(SB), CX
	0x0062 00098 (server2.go:33)	PCDATA	$0, $2
	0x0062 00098 (server2.go:33)	MOVQ	CX, ""..autotmp_6+80(SP)
	0x0067 00103 (server2.go:33)	PCDATA	$0, $0
	0x0067 00103 (server2.go:33)	MOVQ	AX, ""..autotmp_6+88(SP)
	0x006c 00108 (server2.go:33)	PCDATA	$0, $2
	0x006c 00108 (server2.go:33)	LEAQ	type.io.Writer(SB), AX
	0x0073 00115 (server2.go:33)	PCDATA	$0, $0
	0x0073 00115 (server2.go:33)	MOVQ	AX, (SP)
	0x0077 00119 (server2.go:33)	MOVQ	"".writer+112(SP), AX
	0x007c 00124 (server2.go:33)	MOVQ	AX, 8(SP)
	0x0081 00129 (server2.go:33)	PCDATA	$0, $2
	0x0081 00129 (server2.go:33)	PCDATA	$1, $2
	0x0081 00129 (server2.go:33)	MOVQ	"".writer+120(SP), AX
	0x0086 00134 (server2.go:33)	PCDATA	$0, $0
	0x0086 00134 (server2.go:33)	MOVQ	AX, 16(SP)
	0x008b 00139 (server2.go:33)	CALL	runtime.convI2I(SB)
	0x0090 00144 (server2.go:33)	MOVQ	24(SP), AX
	0x0095 00149 (server2.go:33)	PCDATA	$0, $1
	0x0095 00149 (server2.go:33)	MOVQ	32(SP), CX
	0x009a 00154 (server2.go:33)	MOVQ	AX, (SP)
	0x009e 00158 (server2.go:33)	PCDATA	$0, $0
	0x009e 00158 (server2.go:33)	MOVQ	CX, 8(SP)
	0x00a3 00163 (server2.go:33)	PCDATA	$0, $2
	0x00a3 00163 (server2.go:33)	LEAQ	go.string."Count %d\n"(SB), AX
	0x00aa 00170 (server2.go:33)	PCDATA	$0, $0
	0x00aa 00170 (server2.go:33)	MOVQ	AX, 16(SP)
	0x00af 00175 (server2.go:33)	MOVQ	$9, 24(SP)
	0x00b8 00184 (server2.go:33)	PCDATA	$0, $2
	0x00b8 00184 (server2.go:33)	PCDATA	$1, $3
	0x00b8 00184 (server2.go:33)	LEAQ	""..autotmp_6+80(SP), AX
	0x00bd 00189 (server2.go:33)	PCDATA	$0, $0
	0x00bd 00189 (server2.go:33)	MOVQ	AX, 32(SP)
	0x00c2 00194 (server2.go:33)	MOVQ	$1, 40(SP)
	0x00cb 00203 (server2.go:33)	MOVQ	$1, 48(SP)
	0x00d4 00212 (server2.go:33)	CALL	fmt.Fprintf(SB)
	0x00d9 00217 (server2.go:34)	XCHGL	AX, AX
	0x00da 00218 ($GOROOT/src/sync/mutex.go:186)	MOVL	$-1, AX
	0x00df 00223 ($GOROOT/src/sync/mutex.go:186)	PCDATA	$0, $1
	0x00df 00223 ($GOROOT/src/sync/mutex.go:186)	LEAQ	"".mLock(SB), CX
	0x00e6 00230 ($GOROOT/src/sync/mutex.go:186)	PCDATA	$0, $0
	0x00e6 00230 ($GOROOT/src/sync/mutex.go:186)	LOCK
	0x00e7 00231 ($GOROOT/src/sync/mutex.go:186)	XADDL	AX, (CX)
	0x00ea 00234 ($GOROOT/src/sync/mutex.go:186)	DECL	AX
	0x00ec 00236 ($GOROOT/src/sync/mutex.go:187)	TESTL	AX, AX
	0x00ee 00238 ($GOROOT/src/sync/mutex.go:187)	JNE	250
	0x00f0 00240 (<unknown line number>)	PCDATA	$0, $-1
	0x00f0 00240 (<unknown line number>)	PCDATA	$1, $-1
	0x00f0 00240 (<unknown line number>)	MOVQ	96(SP), BP
	0x00f5 00245 (<unknown line number>)	ADDQ	$104, SP
	0x00f9 00249 (<unknown line number>)	RET
	0x00fa 00250 ($GOROOT/src/sync/mutex.go:190)	PCDATA	$0, $1
	0x00fa 00250 ($GOROOT/src/sync/mutex.go:190)	PCDATA	$1, $3
	0x00fa 00250 ($GOROOT/src/sync/mutex.go:190)	LEAQ	"".mLock(SB), CX
	0x0101 00257 ($GOROOT/src/sync/mutex.go:190)	PCDATA	$0, $0
	0x0101 00257 ($GOROOT/src/sync/mutex.go:190)	MOVQ	CX, (SP)
	0x0105 00261 ($GOROOT/src/sync/mutex.go:190)	MOVL	AX, 8(SP)
	0x0109 00265 ($GOROOT/src/sync/mutex.go:190)	CALL	sync.(*Mutex).unlockSlow(SB)
	0x010e 00270 ($GOROOT/src/sync/mutex.go:190)	JMP	240
	0x0110 00272 ($GOROOT/src/sync/mutex.go:81)	PCDATA	$0, $2
	0x0110 00272 ($GOROOT/src/sync/mutex.go:81)	PCDATA	$1, $0
	0x0110 00272 ($GOROOT/src/sync/mutex.go:81)	LEAQ	"".mLock(SB), AX
	0x0117 00279 ($GOROOT/src/sync/mutex.go:81)	PCDATA	$0, $0
	0x0117 00279 ($GOROOT/src/sync/mutex.go:81)	MOVQ	AX, (SP)
	0x011b 00283 ($GOROOT/src/sync/mutex.go:81)	CALL	sync.(*Mutex).lockSlow(SB)
	0x0120 00288 (server2.go:32)	JMP	62
	0x0125 00293 (server2.go:32)	NOP
	0x0125 00293 (server2.go:31)	PCDATA	$1, $-1
	0x0125 00293 (server2.go:31)	PCDATA	$0, $-2
	0x0125 00293 (server2.go:31)	CALL	runtime.morestack_noctxt(SB)
	0x012a 00298 (server2.go:31)	PCDATA	$0, $-1
	0x012a 00298 (server2.go:31)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 12  eH..%....H;a....
	0x0010 01 00 00 48 83 ec 68 48 89 6c 24 60 48 8d 6c 24  ...H..hH.l$`H.l$
	0x0020 60 31 c0 48 8d 0d 00 00 00 00 ba 01 00 00 00 f0  `1.H............
	0x0030 0f b1 11 0f 94 c2 84 d2 0f 84 d2 00 00 00 48 8b  ..............H.
	0x0040 05 00 00 00 00 48 89 04 24 e8 00 00 00 00 48 8b  .....H..$.....H.
	0x0050 44 24 08 0f 57 c0 0f 11 44 24 50 48 8d 0d 00 00  D$..W...D$PH....
	0x0060 00 00 48 89 4c 24 50 48 89 44 24 58 48 8d 05 00  ..H.L$PH.D$XH...
	0x0070 00 00 00 48 89 04 24 48 8b 44 24 70 48 89 44 24  ...H..$H.D$pH.D$
	0x0080 08 48 8b 44 24 78 48 89 44 24 10 e8 00 00 00 00  .H.D$xH.D$......
	0x0090 48 8b 44 24 18 48 8b 4c 24 20 48 89 04 24 48 89  H.D$.H.L$ H..$H.
	0x00a0 4c 24 08 48 8d 05 00 00 00 00 48 89 44 24 10 48  L$.H......H.D$.H
	0x00b0 c7 44 24 18 09 00 00 00 48 8d 44 24 50 48 89 44  .D$.....H.D$PH.D
	0x00c0 24 20 48 c7 44 24 28 01 00 00 00 48 c7 44 24 30  $ H.D$(....H.D$0
	0x00d0 01 00 00 00 e8 00 00 00 00 90 b8 ff ff ff ff 48  ...............H
	0x00e0 8d 0d 00 00 00 00 f0 0f c1 01 ff c8 85 c0 75 0a  ..............u.
	0x00f0 48 8b 6c 24 60 48 83 c4 68 c3 48 8d 0d 00 00 00  H.l$`H..h.H.....
	0x0100 00 48 89 0c 24 89 44 24 08 e8 00 00 00 00 eb e0  .H..$.D$........
	0x0110 48 8d 05 00 00 00 00 48 89 04 24 e8 00 00 00 00  H......H..$.....
	0x0120 e9 19 ff ff ff e8 00 00 00 00 e9 d1 fe ff ff     ...............
	rel 5+4 t=17 TLS+0
	rel 38+4 t=16 "".mLock+0
	rel 65+4 t=16 "".count+0
	rel 74+4 t=8 runtime.convT64+0
	rel 94+4 t=16 type.int+0
	rel 111+4 t=16 type.io.Writer+0
	rel 140+4 t=8 runtime.convI2I+0
	rel 166+4 t=16 go.string."Count %d\n"+0
	rel 213+4 t=8 fmt.Fprintf+0
	rel 226+4 t=16 "".mLock+0
	rel 253+4 t=16 "".mLock+0
	rel 266+4 t=8 sync.(*Mutex).unlockSlow+0
	rel 275+4 t=16 "".mLock+0
	rel 284+4 t=8 sync.(*Mutex).lockSlow+0
	rel 294+4 t=8 runtime.morestack_noctxt+0
go.cuinfo.packagename. SDWARFINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
go.info.net/http.HandleFunc$abstract SDWARFINFO dupok size=52
	0x0000 04 6e 65 74 2f 68 74 74 70 2e 48 61 6e 64 6c 65  .net/http.Handle
	0x0010 46 75 6e 63 00 01 01 11 70 61 74 74 65 72 6e 00  Func....pattern.
	0x0020 00 00 00 00 00 11 68 61 6e 64 6c 65 72 00 00 00  ......handler...
	0x0030 00 00 00 00                                      ....
	rel 0+0 t=24 type.func(net/http.ResponseWriter, *net/http.Request)+0
	rel 0+0 t=24 type.string+0
	rel 33+4 t=29 go.info.string+0
	rel 47+4 t=29 go.info.func(net/http.ResponseWriter, *net/http.Request)+0
go.info.net/http.(*ServeMux).HandleFunc$abstract SDWARFINFO dupok size=74
	0x0000 04 6e 65 74 2f 68 74 74 70 2e 28 2a 53 65 72 76  .net/http.(*Serv
	0x0010 65 4d 75 78 29 2e 48 61 6e 64 6c 65 46 75 6e 63  eMux).HandleFunc
	0x0020 00 01 01 11 6d 75 78 00 00 00 00 00 00 11 70 61  ....mux.......pa
	0x0030 74 74 65 72 6e 00 00 00 00 00 00 11 68 61 6e 64  ttern.......hand
	0x0040 6c 65 72 00 00 00 00 00 00 00                    ler.......
	rel 0+0 t=24 type.*net/http.ServeMux+0
	rel 0+0 t=24 type.func(net/http.ResponseWriter, *net/http.Request)+0
	rel 0+0 t=24 type.string+0
	rel 41+4 t=29 go.info.*net/http.ServeMux+0
	rel 55+4 t=29 go.info.string+0
	rel 69+4 t=29 go.info.func(net/http.ResponseWriter, *net/http.Request)+0
go.info.net/http.ListenAndServe$abstract SDWARFINFO dupok size=67
	0x0000 04 6e 65 74 2f 68 74 74 70 2e 4c 69 73 74 65 6e  .net/http.Listen
	0x0010 41 6e 64 53 65 72 76 65 00 01 01 11 61 64 64 72  AndServe....addr
	0x0020 00 00 00 00 00 00 11 68 61 6e 64 6c 65 72 00 00  .......handler..
	0x0030 00 00 00 00 0c 73 65 72 76 65 72 00 8d 18 00 00  .....server.....
	0x0040 00 00 00                                         ...
	rel 0+0 t=24 type.*net/http.Server+0
	rel 0+0 t=24 type.net/http.Handler+0
	rel 0+0 t=24 type.string+0
	rel 34+4 t=29 go.info.string+0
	rel 48+4 t=29 go.info.net/http.Handler+0
	rel 62+4 t=29 go.info.*net/http.Server+0
go.info.sync.(*Mutex).Lock$abstract SDWARFINFO dupok size=31
	0x0000 04 73 79 6e 63 2e 28 2a 4d 75 74 65 78 29 2e 4c  .sync.(*Mutex).L
	0x0010 6f 63 6b 00 01 01 11 6d 00 00 00 00 00 00 00     ock....m.......
	rel 0+0 t=24 type.*sync.Mutex+0
	rel 26+4 t=29 go.info.*sync.Mutex+0
go.info.sync.(*Mutex).Unlock$abstract SDWARFINFO dupok size=44
	0x0000 04 73 79 6e 63 2e 28 2a 4d 75 74 65 78 29 2e 55  .sync.(*Mutex).U
	0x0010 6e 6c 6f 63 6b 00 01 01 11 6d 00 00 00 00 00 00  nlock....m......
	0x0020 0c 6e 65 77 00 ba 01 00 00 00 00 00              .new........
	rel 0+0 t=24 type.*sync.Mutex+0
	rel 0+0 t=24 type.int32+0
	rel 28+4 t=29 go.info.*sync.Mutex+0
	rel 39+4 t=29 go.info.int32+0
go.string."http: nil handler" SRODATA dupok size=17
	0x0000 68 74 74 70 3a 20 6e 69 6c 20 68 61 6e 64 6c 65  http: nil handle
	0x0010 72                                               r
go.string."/" SRODATA dupok size=1
	0x0000 2f                                               /
go.string."/counter" SRODATA dupok size=8
	0x0000 2f 63 6f 75 6e 74 65 72                          /counter
go.string."localhost:8888" SRODATA dupok size=14
	0x0000 6c 6f 63 61 6c 68 6f 73 74 3a 38 38 38 38        localhost:8888
go.loc."".main SDWARFLOC size=105
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 01 00 50 00 00 00 00 00 00 00 00 00 00 00 00 00  ..P.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 01 00 50 00 00 00 00 00 00 00 00 00 00  .....P..........
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 01 00 50 00 00 00 00 00 00 00  ........P.......
	0x0060 00 00 00 00 00 00 00 00 00                       .........
	rel 0+8 t=53 "".main+41
	rel 8+8 t=53 "".main+52
	rel 35+8 t=53 "".main+103
	rel 43+8 t=53 "".main+114
	rel 70+8 t=53 "".main+178
	rel 78+8 t=53 "".main+212
go.info."".main SDWARFINFO size=258
	0x0000 03 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 11 00 00 00 12 00 00  ................
	0x0040 00 00 00 12 00 00 00 00 00 06 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 94 09 00 00 13 00 00 00 00 00 00 00 00 12  ................
	0x0070 00 00 00 00 00 12 00 00 00 00 00 00 00 06 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 12 00 00 00 12 00 00 00 00 00  ................
	0x00a0 12 00 00 00 00 00 06 00 00 00 00 00 00 00 00 00  ................
	0x00b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 94  ................
	0x00c0 09 00 00 13 00 00 00 00 00 00 00 00 12 00 00 00  ................
	0x00d0 00 00 12 00 00 00 00 00 00 00 06 00 00 00 00 00  ................
	0x00e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00f0 00 00 00 14 00 00 00 0e 00 00 00 00 00 00 00 00  ................
	0x0100 00 00                                            ..
	rel 0+0 t=24 type.[1]interface {}+0
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+301
	rel 27+4 t=30 gofile../Users/renfakai/go/src/GoStudy/ch1/server2.go+0
	rel 33+4 t=29 go.info.net/http.HandleFunc$abstract+0
	rel 37+8 t=1 "".main+33
	rel 45+8 t=1 "".main+34
	rel 53+4 t=30 gofile../Users/renfakai/go/src/GoStudy/ch1/server2.go+0
	rel 62+4 t=29 go.info.net/http.HandleFunc$abstract+23
	rel 68+4 t=29 go.info.net/http.HandleFunc$abstract+37
	rel 74+4 t=29 go.info.net/http.(*ServeMux).HandleFunc$abstract+0
	rel 78+8 t=1 "".main+41
	rel 86+8 t=1 "".main+95
	rel 94+4 t=30 gofile..$GOROOT/src/net/http/server.go+0
	rel 103+4 t=29 go.info.net/http.(*ServeMux).HandleFunc$abstract+35
	rel 107+4 t=29 go.loc."".main+0
	rel 112+4 t=29 go.info.net/http.(*ServeMux).HandleFunc$abstract+45
	rel 118+4 t=29 go.info.net/http.(*ServeMux).HandleFunc$abstract+59
	rel 126+4 t=29 go.info.net/http.HandleFunc$abstract+0
	rel 130+8 t=1 "".main+96
	rel 138+8 t=1 "".main+103
	rel 146+4 t=30 gofile../Users/renfakai/go/src/GoStudy/ch1/server2.go+0
	rel 155+4 t=29 go.info.net/http.HandleFunc$abstract+23
	rel 161+4 t=29 go.info.net/http.HandleFunc$abstract+37
	rel 167+4 t=29 go.info.net/http.(*ServeMux).HandleFunc$abstract+0
	rel 171+8 t=1 "".main+103
	rel 179+8 t=1 "".main+157
	rel 187+4 t=30 gofile..$GOROOT/src/net/http/server.go+0
	rel 196+4 t=29 go.info.net/http.(*ServeMux).HandleFunc$abstract+35
	rel 200+4 t=29 go.loc."".main+35
	rel 205+4 t=29 go.info.net/http.(*ServeMux).HandleFunc$abstract+45
	rel 211+4 t=29 go.info.net/http.(*ServeMux).HandleFunc$abstract+59
	rel 219+4 t=29 go.info.net/http.ListenAndServe$abstract+0
	rel 223+8 t=1 "".main+157
	rel 231+8 t=1 "".main+222
	rel 239+4 t=30 gofile../Users/renfakai/go/src/GoStudy/ch1/server2.go+0
	rel 248+4 t=29 go.info.net/http.ListenAndServe$abstract+52
	rel 252+4 t=29 go.loc."".main+70
go.range."".main SDWARFRANGE size=0
go.debuglines."".main SDWARFMISC size=84
	0x0000 04 02 03 0a 14 0a cd 04 03 06 03 ff 12 a0 04 02  ................
	0x0010 06 03 81 6d 15 04 03 03 f2 12 5a 06 37 06 08 e1  ...m......Z.7...
	0x0020 04 02 03 8e 6d 3d 04 03 03 fd 12 1e 03 78 51 06  ....m=.......xQ.
	0x0030 37 06 08 e1 03 80 05 46 06 55 06 08 a6 06 69 04  7......F.U....i.
	0x0040 02 06 03 8a 68 6f 06 2d 06 02 21 f7 03 7e 6f 04  ....ho.-..!..~o.
	0x0050 01 03 71 01                                      ..q.
runtime.nilinterequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.nilinterequal+0
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*interface {}- SRODATA dupok size=16
	0x0000 00 00 0d 2a 69 6e 74 65 72 66 61 63 65 20 7b 7d  ...*interface {}
type.*interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 4f 0f 96 9d 08 08 08 36 00 00 00 00 00 00 00 00  O......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 48+8 t=1 type.interface {}+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type.interface {} SRODATA dupok size=80
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 e7 57 a0 18 02 08 08 14 00 00 00 00 00 00 00 00  .W..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 44+4 t=6 type.*interface {}+0
	rel 56+8 t=1 type.interface {}+80
type..namedata.*[]interface {}- SRODATA dupok size=18
	0x0000 00 00 0f 2a 5b 5d 69 6e 74 65 72 66 61 63 65 20  ...*[]interface 
	0x0010 7b 7d                                            {}
type.*[]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f3 04 9a e7 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 48+8 t=1 type.[]interface {}+0
type.[]interface {} SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 70 93 ea 2f 02 08 08 17 00 00 00 00 00 00 00 00  p../............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 44+4 t=6 type.*[]interface {}+0
	rel 48+8 t=1 type.interface {}+0
type..namedata.*[1]interface {}- SRODATA dupok size=19
	0x0000 00 00 10 2a 5b 31 5d 69 6e 74 65 72 66 61 63 65  ...*[1]interface
	0x0010 20 7b 7d                                          {}
type.*[1]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 bf 03 a8 35 08 08 08 36 00 00 00 00 00 00 00 00  ...5...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 48+8 t=1 type.[1]interface {}+0
type.[1]interface {} SRODATA dupok size=72
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 50 91 5b fa 02 08 08 11 00 00 00 00 00 00 00 00  P.[.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 44+4 t=6 type.*[1]interface {}+0
	rel 48+8 t=1 type.interface {}+0
	rel 56+8 t=1 type.[]interface {}+0
go.string."Count %d\n" SRODATA dupok size=9
	0x0000 43 6f 75 6e 74 20 25 64 0a                       Count %d.
go.loc."".counter SDWARFLOC size=76
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 07 00 9c 93 08 91 08 93 08 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 01 00 50 00 00 00 00  ...........P....
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00              ............
	rel 0+8 t=53 "".counter+0
	rel 8+8 t=53 "".counter+313
	rel 41+8 t=53 "".counter+246
	rel 49+8 t=53 "".counter+250
go.info."".counter SDWARFINFO size=121
	0x0000 03 22 22 2e 63 6f 75 6e 74 65 72 00 00 00 00 00  ."".counter.....
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 01 9c 00 00  ................
	0x0020 00 00 01 10 77 72 69 74 65 72 00 00 18 00 00 00  ....writer......
	0x0030 00 00 00 00 00 0f 72 65 71 75 65 73 74 00 00 18  ......request...
	0x0040 00 00 00 00 00 07 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 19 00 00 00 12 00 00 00 00 00 00 07 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 1c 00 00 00 0e 00  ................
	0x0070 00 00 00 00 00 00 00 00 00                       .........
	rel 0+0 t=24 type.*net/http.Request+0
	rel 0+0 t=24 type.[1]interface {}+0
	rel 0+0 t=24 type.net/http.ResponseWriter+0
	rel 12+8 t=1 "".counter+0
	rel 20+8 t=1 "".counter+313
	rel 30+4 t=30 gofile../Users/renfakai/go/src/GoStudy/ch1/server2.go+0
	rel 45+4 t=29 go.info.net/http.ResponseWriter+0
	rel 49+4 t=29 go.loc."".counter+0
	rel 64+4 t=29 go.info.*net/http.Request+0
	rel 70+4 t=29 go.info.sync.(*Mutex).Lock$abstract+0
	rel 74+4 t=29 go.range."".counter+0
	rel 78+4 t=30 gofile../Users/renfakai/go/src/GoStudy/ch1/server2.go+0
	rel 87+4 t=29 go.info.sync.(*Mutex).Lock$abstract+22
	rel 94+4 t=29 go.info.sync.(*Mutex).Unlock$abstract+0
	rel 98+4 t=29 go.range."".counter+48
	rel 102+4 t=30 gofile../Users/renfakai/go/src/GoStudy/ch1/server2.go+0
	rel 111+4 t=29 go.info.sync.(*Mutex).Unlock$abstract+32
	rel 115+4 t=29 go.loc."".counter+41
go.range."".counter SDWARFRANGE size=96
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=53 "".counter+35
	rel 8+8 t=53 "".counter+62
	rel 16+8 t=53 "".counter+282
	rel 24+8 t=53 "".counter+298
	rel 48+8 t=53 "".counter+228
	rel 56+8 t=53 "".counter+250
	rel 64+8 t=53 "".counter+260
	rel 72+8 t=53 "".counter+282
go.debuglines."".counter SDWARFMISC size=71
	0x0000 04 02 03 12 14 0a cd 9c 04 2f 03 2c 28 06 55 04  ........./.,(.U.
	0x0010 02 06 03 54 d3 06 55 06 74 06 69 06 02 74 f6 04  ...T..U.t.i..t..
	0x0020 2f 03 99 01 1e 06 41 06 92 06 23 06 8a 06 55 06  /.....A...#...U.
	0x0030 5f 06 41 06 03 97 7f 1f 06 55 06 37 04 02 03 4c  _.A......U.7...L
	0x0040 3d 40 04 01 03 69 01                             =@...i.
go.loc."".handlerTwo SDWARFLOC size=76
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 07 00 9c 93 08 91 08 93 08 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 01 00 50 00 00 00 00  ...........P....
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00              ............
	rel 0+8 t=53 "".handlerTwo+0
	rel 8+8 t=53 "".handlerTwo+303
	rel 41+8 t=53 "".handlerTwo+236
	rel 49+8 t=53 "".handlerTwo+240
go.info."".handlerTwo SDWARFINFO size=124
	0x0000 03 22 22 2e 68 61 6e 64 6c 65 72 54 77 6f 00 00  ."".handlerTwo..
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01  ................
	0x0020 9c 00 00 00 00 01 10 77 72 69 74 65 72 00 00 1f  .......writer...
	0x0030 00 00 00 00 00 00 00 00 0f 72 65 71 75 65 73 74  .........request
	0x0040 00 00 1f 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 20 00 00 00 12 00 00 00 00 00 00  ..... ..........
	0x0060 07 00 00 00 00 00 00 00 00 00 00 00 00 22 00 00  ............."..
	0x0070 00 0e 00 00 00 00 00 00 00 00 00 00              ............
	rel 0+0 t=24 type.*net/http.Request+0
	rel 0+0 t=24 type.[1]interface {}+0
	rel 0+0 t=24 type.net/http.ResponseWriter+0
	rel 15+8 t=1 "".handlerTwo+0
	rel 23+8 t=1 "".handlerTwo+303
	rel 33+4 t=30 gofile../Users/renfakai/go/src/GoStudy/ch1/server2.go+0
	rel 48+4 t=29 go.info.net/http.ResponseWriter+0
	rel 52+4 t=29 go.loc."".handlerTwo+0
	rel 67+4 t=29 go.info.*net/http.Request+0
	rel 73+4 t=29 go.info.sync.(*Mutex).Lock$abstract+0
	rel 77+4 t=29 go.range."".handlerTwo+0
	rel 81+4 t=30 gofile../Users/renfakai/go/src/GoStudy/ch1/server2.go+0
	rel 90+4 t=29 go.info.sync.(*Mutex).Lock$abstract+22
	rel 97+4 t=29 go.info.sync.(*Mutex).Unlock$abstract+0
	rel 101+4 t=29 go.range."".handlerTwo+48
	rel 105+4 t=30 gofile../Users/renfakai/go/src/GoStudy/ch1/server2.go+0
	rel 114+4 t=29 go.info.sync.(*Mutex).Unlock$abstract+32
	rel 118+4 t=29 go.loc."".handlerTwo+41
go.range."".handlerTwo SDWARFRANGE size=96
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=53 "".handlerTwo+35
	rel 8+8 t=53 "".handlerTwo+62
	rel 16+8 t=53 "".handlerTwo+272
	rel 24+8 t=53 "".handlerTwo+288
	rel 48+8 t=53 "".handlerTwo+218
	rel 56+8 t=53 "".handlerTwo+240
	rel 64+8 t=53 "".handlerTwo+250
	rel 72+8 t=53 "".handlerTwo+272
go.debuglines."".handlerTwo SDWARFMISC size=67
	0x0000 04 02 03 19 14 0a cd 9c 04 2f 03 25 28 06 55 04  ........./.%(.U.
	0x0010 02 06 03 5b d3 06 55 06 02 7d f6 04 2f 03 93 01  ...[..U..}../...
	0x0020 1e 06 41 06 92 06 23 06 8a 06 55 06 5f 06 41 06  ..A...#...U._.A.
	0x0030 03 97 7f 1f 06 55 06 37 04 02 03 53 3d 40 04 01  .....U.7...S=@..
	0x0040 03 62 01                                         .b.
""..inittask SNOPTRDATA size=56
	0x0000 00 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 fmt..inittask+0
	rel 32+8 t=1 log..inittask+0
	rel 40+8 t=1 net/http..inittask+0
	rel 48+8 t=1 sync..inittask+0
"".mLock SNOPTRBSS size=8
"".count SNOPTRBSS size=8
""..stmp_0 SRODATA size=16
	0x0000 00 00 00 00 00 00 00 00 11 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."http: nil handler"+0
""..stmp_1 SRODATA size=16
	0x0000 00 00 00 00 00 00 00 00 11 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."http: nil handler"+0
"".counter·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".counter+0
"".handlerTwo·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".handlerTwo+0
type..namedata.*func(http.ResponseWriter, *http.Request)- SRODATA dupok size=44
	0x0000 00 00 29 2a 66 75 6e 63 28 68 74 74 70 2e 52 65  ..)*func(http.Re
	0x0010 73 70 6f 6e 73 65 57 72 69 74 65 72 2c 20 2a 68  sponseWriter, *h
	0x0020 74 74 70 2e 52 65 71 75 65 73 74 29              ttp.Request)
type.*func(net/http.ResponseWriter, *net/http.Request) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f6 27 7e 50 08 08 08 36 00 00 00 00 00 00 00 00  .'~P...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(http.ResponseWriter, *http.Request)-+0
	rel 48+8 t=1 type.func(net/http.ResponseWriter, *net/http.Request)+0
type.func(net/http.ResponseWriter, *net/http.Request) SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 91 f4 9b 04 02 08 08 33 00 00 00 00 00 00 00 00  .......3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(http.ResponseWriter, *http.Request)-+0
	rel 44+4 t=6 type.*func(net/http.ResponseWriter, *net/http.Request)+0
	rel 56+8 t=1 type.net/http.ResponseWriter+0
	rel 64+8 t=1 type.*net/http.Request+0
go.itab.net/http.HandlerFunc,net/http.Handler SRODATA dupok size=32
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 39 e6 07 b1 00 00 00 00 00 00 00 00 00 00 00 00  9...............
	rel 0+8 t=1 type.net/http.Handler+0
	rel 8+8 t=1 type.net/http.HandlerFunc+0
	rel 24+8 t=1 net/http.HandlerFunc.ServeHTTP+0
go.itablink.net/http.HandlerFunc,net/http.Handler SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 go.itab.net/http.HandlerFunc,net/http.Handler+0
type..importpath.fmt. SRODATA dupok size=6
	0x0000 00 00 03 66 6d 74                                ...fmt
type..importpath.log. SRODATA dupok size=6
	0x0000 00 00 03 6c 6f 67                                ...log
type..importpath.net/http. SRODATA dupok size=11
	0x0000 00 00 08 6e 65 74 2f 68 74 74 70                 ...net/http
type..importpath.sync. SRODATA dupok size=7
	0x0000 00 00 04 73 79 6e 63                             ...sync
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·568470801006e5c0dc3947ea998fe279 SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 00 02                    ..........
gclocals·ba192201ac73f95fb90b551d9176d705 SRODATA dupok size=12
	0x0000 04 00 00 00 02 00 00 00 00 01 02 03              ............
"".main.stkobj SRODATA size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.[1]interface {}+0
gclocals·ac25fd02b55a71fa32f691fc8a685923 SRODATA dupok size=12
	0x0000 04 00 00 00 03 00 00 00 02 02 00 00              ............
gclocals·b566bf517073933b5de3b38142d02a51 SRODATA dupok size=12
	0x0000 04 00 00 00 02 00 00 00 00 02 02 00              ............
gclocals·88474949c786709129e808e85e508726 SRODATA dupok size=12
	0x0000 04 00 00 00 02 00 00 00 00 02 01 03              ............
"".counter.stkobj SRODATA size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.[1]interface {}+0
"".handlerTwo.stkobj SRODATA size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.[1]interface {}+0
