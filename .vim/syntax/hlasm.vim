" Vim syntax file
" Language: High Level Assembler Language, HLASM, ASM370
" Maintainer:   Shen Bing
" Last Change:  August 23 2009

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

" Set ColorColumn options
highlight ColorColumn ctermbg=233 guibg=#2c2d27
"let &colorcolumn="16,72,80,".join(range(120,999),",")

syn case ignore

syn iskeyword 35,36,38,48-57,64,65-90,95,97-122

syn keyword xInstruction a ad adb adbr adr adtr adtra ae aeb aebr aer afi ag agf agfi agfr aghi agfhik agr agrk agsi ah ahhhr ahhlr ahi ahik ahy aih al alc alcg alcgr alcr alfi alg algf algfi algfr alghsik algr algrk algsi alhhhr alhhlr alhsik alr alrk alsi alsih alsihn aly ap ar ark asi au aur aw awr axbr axr axtr axtra ay contained
syn keyword xInstruction bakr bal balr bas basm basr bassm bc bcr bct bctg bctgr bctr bpp bprp bras brasl brc brcl brct brctg brcth brxh brxhg brxle bsa bsg bsm bxh bxhg bxle bxleg contained
syn keyword xInstruction c cd cdb cdbr cdfbr cdfbra cdfr cdftr cdgbr cdgbra cdgr cdgtr cdgtra cdlfbr cdlftr cdlgbr cdlgtr cdpt cdr cds cdsg cdstr cdsy cdtr cdutr cdzt ce ceb cebr cedtr cefbr cefbra cefr cegbr cegbra cegr celfbr celgbr cer cextr cfc cfdbr cfdbra cfdr cfdtr cfebr cfebra cfer cfi cfxbr cfxbra cfxr cfxtr cg cgdbr cgdbra cgdr cgdtr cgdtra cgebr cgebra cger cgf cgfi cgfr cgfrl cgh cghi cghrl cghsi cgib cgij cgit cgr cgrb cgrj cgrl cgrt cgxbr cgxbra cgxr cgxtr cgxtra ch chf chhr chhsi chi chlr chrl chsi chy cib cij cit cksm cl clc clcl clcle clclu clfdbr clfdtr clfebr clfhsi clfi clfit clfxbr clfxtr clg clgdbr clgdtr clgebr clgf clgfi clgfr clgfrl clghrl clghsi clgib clgij clgit clgr clgrb clgrj clgrl clgrt clgt clgxbr clgxtr clhf clhhr clhhsi clhlr clhrl cli clib clih clij cliy clm clmh clmy clr clrb clrj clrl clrt clst clt cly cmpsc cp cpdt cpsdr cpxt cpya cr crb crdte crj crl crt cs csch csdtr csg csp cspg csst csxtr csy cu12 cu14 cu21 cu24 cu41 cu42 cudtr cuse cutfu cuutf cuxtr cvb cvbg cvby cvd cvdg cvdy cxbr cxfbr cxfbra cxfr cxftr cxgbr cxgbra cxgr cxgtr cxgtra cxlfbr cxlftr cxlgbr cxlgtr cxpt cxr cxstr cxtr cxutr cxzt cy czdt czxt contained
syn keyword xInstruction d dd ddb ddbr ddr ddtr ddtra de deb debr der didbr diebr dl dlg dlgr dlr dp dr dsg dsgf dsgfr dsgr dxbr dxr dxtr dxtra contained
syn keyword xInstruction ear ecag ectg ed edmk eedtr eextr efpc epair epar epsw ereg eregg esair esar esdtr esea esta esxtr etnd ex exrl contained
syn keyword xInstruction fidbr fidbra fidr fidtr fiebr fiebra fier fixbr fixbra fixr fixtr flogr contained
syn keyword xInstruction hdr her hsch contained
syn keyword xInstruction iac ic icm icmh icmy icy idte iedtr iextr iihf iihh iihl iilf iilh iill ipk ipm ipte iske ivsk contained
syn keyword xInstruction kdb kdbr kdtr keb kebr kimd klmd km kmac kmc kmctr kmf kmo kxbr kxtr contained
syn keyword xInstruction l la laa laag laal laalg lae laey lam lamy lan lang lao laog larl lasp lat lax laxg laxy lay lb lbh lbr lcbb lcdbr lcdfr lcdr lcebr lcer lcgfr lcgr lcr lctl lctlg lcxbr lcxr ld lde ldeb ldebr lder ldetr ldgr ldr ldxbr ldxbra ldxr ldxtr ldy le ledbr ledbra ledtr ler lerbrlexbra lexr ley lfas lfh lfhat lfpc lg lgat lgb lgbr lgdr lgf lgfi lgfr lgfrl lgh lghi lghr lghrl lgr lgrl lh lhh lhi lhr lhrl lhy llc llch llcr llgc llgcr llgf llgfat llgfr llgfrl llgh llghr llghrl llgt llgtat llgtr llh llhh llhr llhrl llihf llihh llihl llilf llilh llill llzrgf lm lmd lmg lmh lmy lnd lndbr lndr lnebr lner lngfr lngr lnr lnxbr lnxr loc locfh locfhr locg locghi locgr lochhi lochi locr lpd lpdbr lpdfr lpdg lpdr lpebr lper lpgfr lpgr lpq lpr lpsw lpswe lptea lpxbr lpxr lr lra lrag lray lrdr lrer lrl lrv lrvg lrvgr lrvh lrvr lt ltdbr ltdr ltdtr ltebr lter ltg ltgf ltgfr ltgr ltr ltxbr ltxtr lura lurag lxd lxdb lxdbr lxdr lxdtr lxe lxeb lxebr lxer ly lzdr lzer lzrrf lzrg lzxr contained
syn keyword xInstruction m mad madb madbr madr mae maeb maebr maer may mayh mayhr mayl maylr mayr mc md mdb mdbr mde mdeb mdebr mder mdr mdtr mdtra me mee meeb meebr meer mer mfy mghi mh mhi mhy ml mlg mlgr mlr mp mr ms msch msd sdb msdbr msdr mse mseb msebr mser msfi msg msgf msgfi msgfr msgr msta msy mvc mvcdk mvcin mvck mvcl mvcle mvclu mvcos mvcp mvcs mvcsk mvghi mvhhi mvhi mvi mviy mvn mvo mvpg mvst mvz mxbr mxd mxdb mxdbr mxdr mxr mxtr mxtra my myh myhr myl mylr myr contained
syn keyword xInstruction n nc ng ngr ngrk ni niai nihf nihh nihl nilf nilh nill niy nr nrk ntstg ny contained
syn keyword xInstruction o oc og ogr ogrk oi oihf oihh oihl oilf oilh oill oiy or ork oy contained
syn keyword xInstruction pack palb pc pcc pckmo pfd pfdrl pfmf pfpo pgin pgout pka pku plo popcnt ppa ppno pr pt ptf ptff pti ptlb contained
syn keyword xInstruction qadtr qaxtr contained
syn keyword xInstruction rchp risbg risbgn risbhg risblg rll rllg rnsbg rosbg rp rrbe rrbm rrdtr rrxtr rsch rxsbg contained
syn keyword xInstruction s sac sacf sal sam24 sam31 sam64 sar schm sck sckc sckpf sd sdb sdbr sdr sdtr sdtra se seb sebr ser sfasr sfpc sg sgf sgfr sgr sgrk sh shhhr shhlr shy sie sigp sl sla slag slak slb slbg slbgr slbr slda sldl sldt slfi slg slgf slgfi slgfr slgr slgrk slhhhr slhhlr sll sllg sllk slr slrk slxt sly sp spka spm spt spx sqd sqdb sqdbr sqdr sqe sqeb sqebr sqer sqxbr sqxr sr sra srag srak srda srdl srdt srk srl srlg srlk srnm srnmb srnmt srp srst srstu srxt ssair ssar ssch sske ssm st stam stamy stap stc stch stck stckc stcke stckf stcm stcmh stcmy stcps stcrw stctg stctl stcy srcy std stdy ste stey stfh stfl stfle stfpc stg stgrl sth sthh sthrl sthy stidp stm stmg stmh stmy stnsm stoc stocfh stocg stosm stpq stpt stpx strag strl strv strvg strvh stsch stsi stura sturg sty su sur svc sw swr sxbr sxr sxtr sxtra sy contained
syn keyword xInstruction tabort tam tar tb tbdr tbedr tbegin tbeginc tcdb tceb tcxb tdcdt tdcet tdcxt tdgdt tdget tdgxt tend thder thdr tm tmh tmhh tmhl tml tmlh tmll tmy tptpi tprot tr trace tracg trap2 trap4 tre troo trot trt trte trto trtr trtre trtt ts tsch contained
syn keyword xInstruction unpk unpka unpku upt contained
syn keyword xInstruction va vac vacc vaccc vavg vavgl vcdg vcdlg cdeq vcgd vch vchl vcksn vclgd vclz vctz vec vecl verim verll verllv vesl veslv vesra vesrav vesrl vesrlv vfa vfae vfce vfch vfche vfd vfee vfene vfi vfm vfma vfms vfpso vfs vfsq vftci vgbm vgef vgfm vgfma vgm vistr vlc vlde vvleb vled vlef vleg vleh vleid vleif vleig vleih vlgv vll vllez vlm vlp vlr vlrep vlvgp vmae vmah vmal vmale vmalh vmalo vmao vme vmeh vml vmle vmlh vmlo vmn vmnl vmo vmrh vmrl vmx vmxl vn vnc vno vo vpdi vperm vpk vpkls vkps vpopct vrep vrepi vs vsbcbi vsbu vscbi vscef vsceg vseg vsel vsl vslb vsldb vsra vsrab vsrl vsrlb vst vsteb vstef vsteg vsteh vstl vstm vstrc vsum vsumg vsumq vtm vuph vupl vuplh vupll vx contained
syn keyword xInstruction wfc wfk contained
syn keyword xInstruction x xc xg xgr xgrk xi xihf xilf xiy xr xrk xsch xy contained
syn keyword xInstruction zap contained

syn keyword xDirective acontrol actr adata aeject agob ago aif aifb ainsert alias amode anop aread aspace contained
syn keyword xDirective cattr ccw ccw0 ccw1 ceject cnop com copy csect cxd contained
syn keyword xDirective dc drop dsect ds dxd contained
syn keyword xDirective eject end entry equ exitctl extrn contained
syn keyword xDirective gbla gblb gblc contained
syn keyword xDirective ictl iseq contained
syn keyword xDirective lcla lclb lclc loctr ltorg contained
syn keyword xDirective macro mend mexit mhelp mnote contained
syn keyword xDirective opsyn org contained
syn keyword xDirective pop print punch push contained
syn keyword xDirective repro rmode rsect contained
syn keyword xDirective seta setaf setb setc setcf space start contained
syn keyword xDirective title contained
syn keyword xDirective using contained
syn keyword xDirective wxtrn contained
syn keyword xDirective xattr contained

syn keyword xBranch b br nop nopr bh bhr bl blr be ber bnh bnhr bnl bnlr bne bner bp bpr bm bmr bz bzr bo bor bnp bnpr bnm bnmr bnz bnzr bno bnor contained
syn keyword xBranch bru j brul jlu jnop jlnop brh brhl jh jlh brl brll jl jll bre brel je jle brnh brnhl jnh jlnh brnl brnll jnl jlnl brne brnel jne jlne brp brpl jp jlp brm brml jm jlm brz brzl jz jlz bro brol jo jlo brnp brnpl jnp jlnp brnm brnml jnm jlnm brnz brnzl jnz jlnz brno brnol jno jlno jas jasl jct jctg jxh jxhg jxle jxleg contained 
syn keyword xBranch risblgz rnsbgt rxsbgt contained

syn keyword xMacro actr ago aif anop chau close contained
syn keyword xMacro dcb contained
syn keyword xMacro gbla gblb gblc get contained
syn keyword xMacro lcla lclb lclc contained
syn keyword xMacro open contained
syn keyword xMacro ppio put contained
syn keyword xMacro read contained
syn keyword xMacro seta setb setc snap contained
syn keyword xMacro write wto wtor wtorpc contained

syn keyword xParameter blksize contained
syn keyword xParameter dcb ddname dsorg contained
syn keyword xParameter eodad gen contained
syn keyword xParameter id contained
syn keyword xParameter lrecl lv contained
syn keyword xParameter macrf contained
syn keyword xParameter nogen contained
syn keyword xParameter pdata contained
syn keyword xParameter recfm record ru contained
syn keyword xParameter storage contained

syn keyword xRegister   r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 contained
syn keyword xOperator   and eq ge gt le lt ne not or contained
syn match   xDelimiter  /[+\-,=.*/]/ contained
syn match   xAttribute  /[iklnst]'/ contained
syn match   xSymbol     /[&][0-9a-z@$#_]\+/ contained
syn match   xSymbol     /[.][0-9a-z@$#_]\+/ contained
syn match   xSymbol     /[a-z@#$][0-9a-z@$#_]\+/ contained
syn match   xSymbol1    /[&][0-9a-z@$#_]\+/ contained
syn match   xString     /[cbdxfhp]\(l[1-9][0-9]*\)\?'\([^']\|''\)*'/ contained contains=xSymbol1
syn match   xString     /[ ,]'\([^']\|''\)*'/ contained contains=xSymbol1
syn match   xString1    /'\([^']\|''\)*'/ contained contains=xSymbol1

"syn region xCommentBlock start=/@@combeg/ skip=/\n/ end=/@@comend/
syn match xLineComment  /^\(\*.*\|\.\*.*\)\%<73c/
syn match xContinue     /\%72c\S/
syn match xLabel        /^[@#$&.]\?[0-9a-z@$#_]\+/ skipwhite nextgroup=xOperation 
syn match xSpaceAndOp1  /^ \{1,14}/ skipwhite nextgroup=xOperation
syn match xOperation    /[0-9a-z@$#&_]\+/ contained contains=xInstruction,xDirective,xBranch,xMacro skipwhite  nextgroup=xOperand,xOperandStr
syn match xContinueLine /^ \{15}/ contains=xOperation nextgroup=xOperand
syn match xOperand      /\((.*)\|[iklnst]'[0-9a-z@$#&_]\+\|[^iklnst ]'\([^']\|''\)*'\|[0-9a-z@$#&_]\+\|[+\-,=.*%!~;:?/]\+\)\+/ contained contains=xAttribute,xParameter,xRegister,xString,xOperator,xDelimiter,xSymbol skipwhite nextgroup=xComment
syn match xOperandStr   /'\([^']\|''\)*'\((.*)\)\?/ contained contains=xString1 skipwhite nextgroup=xComment
syn match xComment      /.*\%<73c/ contained
syn match xTodo         /.*:todo:.*/ 


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_asm_syntax_inits")
    if version < 508
        let did_asm_syntax_inits = 1
        command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi def link <args>
    endif


    " The default methods for highlighting.  Can be overridden later
    HiLink xLineComment   Comment
    HiLink xComment       Comment
    HiLink xCommentBlock  Comment
    HiLink xAttribute     Special
    HiLink xRegister      Type
    HiLink xContinue      Number
    HiLink xLabel         Identifier
    HiLink xSymbol        Identifier
    HiLink xSymbol1       Identifier
    HiLink xString        String
    HiLink xString1       String

    HiLink xInstruction   Statement
    HiLink xDirective     Special
    HiLink xBranch        Number
    HiLink xMacro         Macro
    HiLink xOperator      Operator
    HiLink xDelimiter     Operator

    HiLink xParameter     Keyword
    HiLink xTodo          Todo

    delcommand HiLink
endif


let b:current_syntax = "hlasm"
