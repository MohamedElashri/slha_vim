" vim-syntax file
" Language: SUSY Les Houches Accord
" Maintainer:    Mohamed Elashri <muhammadelashri@gmail.com>
" Date:      06/24/2022
" Version:   1.0

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn case ignore " Case if not important

syn match   slhaError       "\t" " mark tabs as error

" Lines that does not follow the spcs    
syn match slhaBadLine     "^[^#]*"     
syn match slhaRealNum     "[+-]\?\d\+\.\d*\(E[+-]\=\d\+\|\)"
syn match slhaComment     "#.*$" contains=slhaTodo
syn match slhaBlocklINE   "^\(BLOCK\|DECAY\).*$"
syn match slhaDataLine    "^\s\+[0-9+-].*" contains=slhaRealNum,slhaComment
syn keyword slhaBlock       BLOCK DECAY

" SLHA version 1 BLOCK NAMES
syn keyword slhaBlockNames  MODSEL SMINPUTS MINPAR EXTPAR MASS NMIX UMIX VMIX
                            \ STOPMIX SBOTMIX STAUMIX ALPHA HMIX GAUGE MSOFT 
                            \ AU AD AE YU YD YE SPINFO

" SLHA version 2 BLOCK NAMES (Flavour Violation)
syn keyword slhaBlockNames  QEXTPAR VCKMIN VCKM IMVCKM UPMNSIN UPMNS IMUPMNS
                            \ MSQ2IN MSQ2 MSU2IN MSU2 MSD2IN MSD2 MSL2IN MSL2
                            \ MSE2IN MSE2 TUIN TU TDIN TD TEIN TE USQMIX DSQMIX
                            \ SELMIX SNUMIX SNSMIX SNAMIX
" SLHA version 2 BLOCK NAMES (R-Parity Violation)
syn keyword slhaBlockNames  RVLAMLLEIN RVLAMLLE RVLAMLQDIN RVLAMLQD RVLAMUDDIN 
                            \ RVLAMUDD RVTLLEIN RVTLLE RVTLQDIN RVTLQD RVTUDDIN
                            \ RVTUDD RVKAPPAIN RVKAPPA RVDIN RVD RVSNVEVIN
                            \ RVSNVEV RVM2LH1IN RVM2LH1
                            \ RVNMIX RVUMIX RVVMIX RVHMIX RVAMIX RVLMIX
" SLHA version 2 BLOCK NAMES (CP Violation)
syn keyword slhaBlockNames  IMAU IMAD IMAE IMMINPAR IMEXTPAR CVHMIX IMCVHMIX
" SLHA version 2 BLOCK NAMES (The Next-to-Minimal Supersymmetric SM)
syn keyword slhaBlockNames  NMSSMRUN NMHMIX NMAMIX NMNMIX

" SPheno and others generator specific block (TODO: add more)
syn keyword slhaBlockNames  DCINFO SPhenoInput SPhenoINFO SPhenoCrossSections
                            \ SPhenoLowEnergy SPhenoRP

" Define highlighting for SLHA blocks
hi def link slhaError       Error
hi def link slhaBadLine     Error
hi def link slhaRealNum     Constant
hi def link slhaComment     Comment
hi def link slhaTodo        Todo
hi def link slhaBlock       Statement
hi def link slhaBlockNames  Type


let b:current_syntax = "slha"