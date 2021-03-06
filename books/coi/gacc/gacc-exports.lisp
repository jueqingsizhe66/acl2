#|-*-Lisp-*-=================================================================|#
#|								             |#
#| coi: Computational Object Inference                                       |#
#|								             |#
#|===========================================================================|#
(in-package "GACC")

(defconst *exports*
  '(

    memberp

;    wx
 ;   rx

;    g*
 ;   g*-list
;    s*
 ;   x*

;    caddddr
;    cadddddr
 ;   cdddddr

;    met

;    wfixn
 ;   wintn

;    flat
;    perm
    unique
;    subbagp
  ;  any-subbagp
    disjoint
;    disjoint-list
;    remove-1
;    remove-bag

;    flatten
;    mesh
;    wf-skel

;    sblk
;    blk
 ;   blks
;    max-offset

;    syntax-atom
 ;   syntax-consp-or-quote
  ;  syntax-consp-or-symbol

;added by Eric:
    FIX-MEMORY-LIST-FIX-MEMORY-EQUIV
     FIX-MEMORY
     FIX-MEMORY-LIST-REDUCTION
     FIX-MEMORY-LIST
     Z*-S*-LIST-INDUCTION
     Z*-S*-LIST-INTRODUCTION
     G*-LIST-H*-LIST-EQUALITY-REDUCTION
     ATOMIC-G*-LIST-OP-REPLACMENT
     G*-LIST
     LEN-NTHCDR V1-REC->SPEC
     TRUE-LISTP-NTH-CDR
     NTHCDR-NIL NTHCDR-NTHCDR
     TRUE-LISTP-V1-REC->SPEC
     FLATTENLISTW-H*-RD
     FLATTENLISTW
     SBLKP-LIST-F*-REC SBLKP-LIST
     FIXLISTW-RD-SPEC FIXLISTW
     RD-LIST-APPEND RD-LIST
     F*-REC-G*-RD F*-REC
     LEN-F*-REC LEN-RD-SPEC
     WFIXLIST-RD-LIST WFIXLIST
     WFIXN-RD WFIXN
     LEN-RD-LIST V*-REC-G*-RD
     V*-REC SLOT-P-LIST-LIST->REC
     SLOT-P-LIST
     SLOT-P-LIST-SPEC->REC
     SLOT-P-APPEND
     H*-RD LEN-SBLKP
     MAX-OFFSET-OFFSET-SIZE
     MAX-OFFSET V0-SBLK-PARMS
     RD-SPEC-RD-REC-REDUCTION
     FLAT
     WR-SPEC-WR-REC-REDUCTION
     WR-SPEC
     LEN-ENLISTW WR-LIST-APPEND
     WR-LIST WR-LIST-OVER-WR
     S*-LIST-S*-REC-REDUCTION
     S*-LIST
     S*-REC-OVER-S*-REC S*-REC
     H*-LIST-H*-REC-REDUCTION
     H*-LIST
     ATOMIC-LIST->REC-OP-REPLACEMENT
     LIST->REC
     LIST-REC-H*-LIST-REDUCTION
     H*-REC-H*-LIST-COMMUTE
     H*-REC
     F*-LIST-F*-REC-REDUCTION
     F*-LIST
     G*-LIST-G*-REC-REDUCTION
     APPEND-LEN0 LEN-SPEC->REC
     V2-REC->SPEC-REDUCTION
     LEN-V1-REC->SPEC
     G*-REC-REDUCTION
     G*-REC G*-LIST-DEFAULT-WHICH
     G*-LIST-G*-REC-COMMUTE
     G*-REC-G*-LIST-COMMUTE
     REC->LIST-OF-LIST->REC
     REC->LIST-OF-LIST->REC-HYP
     REC->LIST-H*-LIST-NOT-WHICH-INTRODUCTION
     REC->LIST-OF-LIST->REC-H*-LIST
     REC->LIST-OF-LIST->REC-H*-LIST-RAW
     REC->LIST-OF-LIST->REC-H*-LIST-HELPER
     REC->LIST-APPEND-REDUCTION
     ATOMIC-REC->LIST-REPLACEMENT
     REC->LIST OPEN-REC->LIST
     S*-REC-REDUCTION
     ENLISTW-WFIXN
     ENLISTW ENLISTW-WFIXW
     G*-RD RD-SPEC
     WX-TO-WR-LIST-REDUCTION WX
     RX-TO-RD-LIST-REDUCTION RX
     WX-REC-TO-WR-LIST-REDUCTION
     WX-REC
     RX-REC-TO-RD-LIST-REDUCTION
     RX-REC UNFIXED-BASE-BLK-REC
     BLK-REC UNFIXED-BASE-WX-REC
     UNFIXED-BASE-RX-REC
     WINTNLIST-ENLISTW
     WINTLIST ENLISTW-WINTLIST
     WCAR-REDUCTION
     WFIXEDLIST-WFIXLIST
     WFIXEDLIST
     F*-LIST-OF-G*-LIST
     F*-SPEC-OF-G*-SPEC F*-SPEC
     F*-SPEC-H*-SPEC-REDUCTION
     F*-LIST-H*-LIST-INTRODUCTION
     F*-SPEC-H*-SPEC-INTRODUCTION
     H*-SPEC-WV-VAL-2 H*-SPEC
     H*-SPEC-WV-VAL V0-SPLIT-BLK
     SPLIT-BLK-FIX-SLOT
     BIND-FN-INSTANCE-EQUAL
     BIND-FN-INSTANCE FN-INSTANCE
     FN-INSTANCE-WRAPPER
     FN-INSTANCE-FN
     BIND-KEYS FN-INSTANCE-REC
     FIXED-SKEL-SPEC FLAT-LIST
     STRUC-LIST FLAT-SKEL
     STRUC SKEL-TYPE
     SHAPE-SKEL SHAPE-SPEC
     SHAPE-LIST RV-OF-WV-ALL
     RV SPEC-TYPE-EQUALITY
     SPEC-TYPE SPEC-TYPE-FREE
     SPEC-TYPE-H*-SPEC-REDUCTION
     ZZ-OF-WV ZZ
     ZZ-OF-WS RS-OF-H*-SPEC
     RS Z*-S*-LIST-ELIMINATION
     Z* S*-LIST-OVER-Z*
     G*-SPEC-OVER-Z* G*-SPEC
     DISJOINT-LIST-APPEND-REDUCTION
     DISJOINT-LIST
     S*-SPEC-OVER-Z*
     Z*-S*-SPEC-ELIMINATION
     Z*-S*-SPEC-INDUCTION
     Z*-S*-SPEC-INTRODUCTION
     G*-SPEC-H*-SPEC-EQUALITY-REDUCTION
     Z*-S*-REC-ELIMINATION
     Z*-S*-REC-INDUCTION
     G*-REC-OVER-Z*
     Z*-COMMUTE Z*-CONS-REDUCTION
     Z*-S*-REC-INTRODUCTION
     S*-REC-OVER-Z*
     S*-REC-OVER-WX
     H*-SPEC-H*-REC-REDUCTION
     SPEC-REC-H*-SPEC-REDUCTION
     SPEC->REC
     H*-SPEC-H*-SPEC-COMMUTE
     H*-REC-APPEND
     LEN-H*-REC TRUE-LISTP-H*-REC
     F*-SPEC-F*-REC-REDUCTION
     F*-REC-APPEND
     G*-SPEC-G*-REC-REDUCTION
     G*-SPEC-DEFAULT-WHICH
     G*-REC-G*-SPEC-COMMUTE
     G*-REC-APPEND
     LEN-G*-REC TRUE-LISTP-G*-REC
     REC->SPEC-OF-SPEC->REC
     REC->SPEC-OF-SPEC->REC-HYP
     REC->SPEC-H*-SPEC-NOT-WHICH-INTRODUCTION
     REC->SPEC-OF-SPEC->REC-H*-SPEC
     REC->SPEC-OF-SPEC->REC-H*-SPEC-RAW
     REC->SPEC-OF-SPEC->REC-H*-SPEC-HELPER
     NOT-WHICH
     REC->SPEC-APPEND-REDUCTION
     ATOMIC-REC->SPEC-REPLACEMENT
     REC->SPEC OPEN-REC->SPEC
     S*-SPEC-S*-REC-REDUCTION
     S*-SPEC S*-REC-APPEND
     LEN-SPEC->REC-H*-SPEC-REDUCTION
     LEN-SPEC->REC-G*-SPEC-REDUCTION
     LEN-SPEC->REC-REDUCTION
     ATOMIC-SPEC->REC-REPLACEMENT
     TRUE-LISTP-SPEC->REC
     OPEN-SPEC->REC
     JOIN-LIST-SPLIT-LIST
     JOIN-LIST-APPEND-REDUCTION
     OPEN-JOIN-LIST JOIN-LIST
     SPLIT-LIST CONSP-APPEND
     CDR-APPEND CAR-APPEND
     Z*-LIST-APPEND-REDUCTION
     Z*-NIL-REDUCTION
     Z*-OF-S* ANY-SUBBAGP-SUBBAGP
     ANY-SUBBAGP RV-OVER-G*-SPEC
     G*-SPEC-V0-SPLIT-BLK-OF-WX
     RV-OVER-G*-SPEC-HELPER
     G*-SPEC-V0-SPLIT-BLK-OF-WX-HELPER
     NON-INTEGERP-FIX-SIZE
     FIX-SIZE
     SUBBAGP-MEMBERSHIP-FWD
     F*-SPEC-VP-PERM CONCRETE-PV
     F*-VP F*-SPEC-NIL VAL!
     PTR! FIND-FN-TEMPLATE
     TEMPLATE-KEYS
     FIND-FN-TEMPLATE-ARGS
     FIND-FN-TEMPLATE-ARGS-REC
     BIND-FN-TEMPLATE-ARGS
     F*-SPEC-G*-SPEC-V0-SPLIT-BLK
     SPLIT-BLK-H*-SPEC
     UNFIXED-SIZE-WX
     UNFIXED-SIZE-RX
     SYNTAX-OFFSET GETS
     SETS GETX SETX
     SET-SLOT-VALUE SET-SLOT-SKEL
     UPDATE-SLOT-SKEL
     UPDATE-SLOT-VALUE GET-SLOT
     SLOT-P-MISSING-KEY SLOT-P
     MISSING-KEY FIXED-SPEC-P-RS
     WINTN FIXED-SPEC-P
     WINTN-RS H*-SPEC-OVER-WV
     H*-SPEC-OF-WV F*-SPEC-X-WS
     F*-SPEC-WV STRIP
     ZZ-WV-INDUCTION ZV-OVER-ZS
     ZV ZS-OVER-ZV
     ZS ZZ-WS-INDUCTION
     RV-ZS RS-ZV ZS-OVER-WV
     ZV-OVER-WS WS-WV
     WV ZZ-WS-INTRODUCTION
     ZZ-WV-INTRODUCTION
     ZS-INDUCTION
     ZS-OVER-WS FIXED-SPEC-P-ZS
     KEYS-SPEC-ZS SPLIT-SBLK-WS
     OPEN-SPLIT-BLK SPLIT-BLK
     ZS-INTRODUCTION-RIGHT
     ZS-INTRODUCTION-LEFT
     ZS-OF-WS
     OPEN-ZS ZV-INDUCTION
     ZV-OVER-WV FIXED-SPEC-P-WS
     FIXED-SPEC-P-ZV
     FIXED-SPEC-P-WV
     KEYS-SPEC-ZV H*-SPEC-NIL-ZV
     ZV-INTRODUCTION-RIGHT
     ZV-INTRODUCTION-LEFT
     UNFIXED-SIZE-WINTN ZV-OF-WV
     OPEN-ZV UNFIXED-SIZE-RS
     UNFIXED-SIZE-WS
     WS UNFIXED-SIZE-RV
     UNFIXED-SIZE-WV
     NON-INTEGERP-WS
     NON-INTEGERP-WV CONSP-WV
     CONSP-WS SPEC-SPEC-INDUCTION
     H*-SPEC-OF-WS
     UNFIXED-SIZE-WFIXN
     H*-SPEC-NIL-WV
     WV-OVER-WV WV-OF-WV
     WS-OF-WS DEFAULT-RV
     DEFAULT-RS VANISHING-WV
     VANISHING-WS RV-OF-WV
     RS-OF-WS RV-OVER-WV
     RS-OVER-WS RV-OVER-WS
     RS-OVER-WV KEYS-SPEC
     OPEN-WV OPEN-WS
     EQUAL-SBLK-EXTENSIONALITY
     EQUAL-BLK-REC-EXTENSIONALITY
     EQUAL-X-BLK-REC-INDUCTION
     REWRITE-CONSP-BLK-REC
     SBLKP-SBLK
     SBLKP SBLKP-BLK-REC
     CONSP-BLK-REC OPEN-LEN
     EQUAL-SBLK-TO-EQUAL-ARGS
     NOT-INTEGERP-BLK-REC ;;bzo
     EQUAL-BLK-REC-TO-EQUAL-ARGS
     BLK-BLK-REC
     COMPARE SBLK-PARMS-SBLK-FREE
     SBLK-PARMS SBLK-PARMS-SBLK
     SYNTAX-PTR APPEARS
     NON-INTEGERP-SBLK-BASE
     UNFIXED-SIZE-MAX-OFFSET
     MAX-OFFSET-TO-FIX-SIZE
     OFFSET-EQUAL-INDUCTION
     UNFIXED-SIZE-SBLK
     SBLK SYNTAX-UNFIXED-SIZE
     OFFSET-SIZE-LEN-SBLK
     OFFSET-SIZE
     OFFSET-SIZE-MAX-OFFSET-FREE
     OFFSET-SIZE-MAX-OFFSET
     FIX-SIZE-OFFSET-SIZE
     FIX-SIZE-MAGNITUDE
     FIX-SIZE-+8
     MAX-OFFSET-FIX-SIZE
     FIX-SIZE-FIX-SIZE CAR-SBLK
     CONSP-SBLK INTEGERP-IFIX
     NON-INTEGERP-IFIX
     MV-NTH-CONS
     SLOT-P-IMPLIES-SKEL-P-SLOT-SKEL
     SKEL-P
     H*-SPEC-OF-G*-SPEC H*-G*-HYP
     H*-G*-OP WHICH-DISJOINT
     S*-LST-IMPLEMENTS-S*-LIST
     S*-LST
     V1-SPLIT-LST-OVER-G*-SPEC
     V0-SPLIT-LST-OVER-G*-SPEC
     NOT-MEMBERp-NIL
     F*-LST-PERM? PERM
     F*-LST-PERM F*-LST
     JOIN-LST-SPLIT-LST JOIN-LST
     SPLIT-LST KEY-LST
     S*-BLK-IMPLEMENTS-S*-SPEC
     S*-BLK
     DISJOINT-F*-CDR-REDUCTION
     V1-SPLIT-BLK-OVER-G*-SPEC
     V0-SPLIT-BLK-OVER-G*-SPEC
     F*-BLK-PERM? F*-BLK-PERM
     F*-BLK JOIN-BLK-SPLIT-BLK
     JOIN-BLK FIX-SLOT
     H*-SPEC-OF-G*-SPEC-REDUCTION
     W-NIL? G*-SPEC-WITH-X*-SPEC
     G*-G*-INDUCTION
     OP-WHICH-SUBBAGP-<
     F*-SPEC-OF-G*-SPEC-REDUCTION
     F*-G*-INDUCTION W-NILL
     H*-SPEC-OVER-G*-SPEC HOP-
     HOP-NOT G*-SPEC-WITH-H*-SPEC
     G*-H*-INDUCTION
     S*-SPEC-WITH-H*-SPEC
     S*-H*-INDUCTION-REDUCTION
     S*-H*-INDUCTION
     H*-SPEC-OF-H*-SPEC H*-H*-HYP
     H*-H*-OP WHICH-INTERSECT
     G*-SPEC-TO-H*-SPEC
     F*-SPEC-OF-H*-SPEC
     LEN-F*-SPEC-OF-H*-SPEC
     F*-H*-INDUCTION
     LEN-F*-SPEC-BASE W-ALL?
     F*-H*-OP X*-SPEC-OF-S*-SPEC
     WALL WOP-NOT W-NOT
     F*-SPEC-UNDER-H*-SPEC-EQUALITY
     LEN-F*-SPEC-UNDER-H*-SPEC-EQUALITY
     TRUE-LISTP-SBLK LEN-SBLK
     LEN-BLK-REC EQUAL-LEN-APPEND
     LEN-LEN-INDUCTION
     F*-F*-INDUCTION

;     NON-INTEGER-SIZE-SBLK
 ;    NON-INTEGER-SIZE-RX
  ;   NON-INTEGER-SIZE-WX

wx-when-size-is-not-positive
wx-when-size-is-not-an-integerp
rx-when-size-is-not-positive
rx-when-size-is-not-an-integerp
sblk-when-size-is-not-positive
sblk-when-size-is-not-an-integerp


     NON-INTEGER-SIZE-WFIXN
     MV-NTH-S*-G*-EQUAL-INDUCTION
     S*-G*-EQUAL-INDUCTION
     CDR-H*-SPEC SUBWHICH
     X*-SPEC-OVER-S*-SPEC
     G*-SPEC-OVER-S*-SPEC
     S*-SPEC-OVER-S*-SPEC
     S*-LIST-OVER-WX
     S*-SPEC-OVER-WX
     RX-OVER-S*-SPEC
     G*-SPEC-X-OVER-WX
     G*-SPEC-G-OVER-WX
     G*-SPEC-OVER-WX
     G*-WX X-OP
     G-OP G? F*-G*
     HOW-WHICH WHICH-UNION
     NOT-CONSP-H*-SPEC
     CONSP-H*-SPEC
     H*-SPEC-G*-SPEC-TRACK
     PERM-IMPLIES-PERM-FLAT-1
     FLAT-PERM
     SLOT-EXTENSIONALITY!!
     SUBBAGP-APPEND-REDUCTION
     SUBBAGP
     MEMBERp-IMPLIES-SUBBAGP-FLATTEN
     FLAT-APPEND TRUE-LISTP-FLAT
     EQUAL-CONS-CASES-2 ;drop?
     WOP-COVERS
     WHICH-COVERS SKIPPER
     ATOMIC-H*-LIST-OP-REPLACEMENT
     ATOMIC-F*-LIST-OP-REPLACEMENT
     ATOMIC-S*-OP-REPLACEMENT
     ATOMIC-G*-OP-REPLACEMENT
     ATOMIC-H*-OP-REPLACEMENT
     ATOMIC-F*-OP-REPLACEMENT XOP
     FIXED-SKEL-LIST-G*-LIST
     FIXED-SKEL-LIST
     FIXED-SPEC-P-G*-SPEC
     FIXED-SKEL-LIST-H*-LIST
     FIXED-SPEC-P-H*-SPEC
     H*-LIST-FIXED-SKEL-LIST
     H*-SPEC-FIXED-SPEC-P
     WINTN-WFIXN-2
     WINTN-0 OPEN-FIXED-SPEC-P
     TRUE-LISTP-V*-LIST
     OPEN-V*-LIST
     V*-LIST TRUE-LISTP-V*-SPEC
     OPEN-V*-SPEC V*-SPEC
     WF-SKELS-H*-LIST WF-SKELS
     OPEN-H*-LIST WF-SPEC-H*-SPEC
     WF-SPEC OPEN-H*-SPEC
     TRUE-LISTP-F*-LIST
     OPEN-F*-LIST
     TRUE-LISTP-F*-SPEC
     OPEN-F*-SPEC
     OPEN-S*-LIST OPEN-S*-SPEC
     WF-SKELS-G*-LIST
     OPEN-G*-LIST
     OPEN-G*-SPEC WF-SPEC-G*-SPEC
     OP-BASE SPECTYPE
     |+<>| SKEL-P-FIX-SKEL
     WFIXN-SKEL FIX-SKEL
     SKEL-MEASURE OPTYPE
     WHICHTYPE NUMTYPE
     NUMWHICH WHICHNUM X?
     PTR? OP-EXTENSIONALITY
     OP-EXTENSIONALITY!
     DEFS-OP-LEMMA-THEORY
     DEFS-OP-ASSERTIONS
     OP-P HOW-P WHICH-P
     DEFS-OP-DEFINITION-THEORY
     DEFS-ELIMINATE-OP
     OP-HOW OP-WHICH
     OP DEFS-OP-LIFT-IF
     DEFS-READ-OP UPDATE-OP
     MAKE-OP DEFS-OP-P-OP
     DEFS-OP-P-INCLUDES-WEAK-OP-P
     WEAK-OP-P DEFS-WEAK-OP-P-OP
     DEFS-ACL2-COUNT-OP
     SLOT-EXTENSIONALITY
     SLOT-EXTENSIONALITY!
     DEFS-SLOT-LEMMA-THEORY
     DEFS-SLOT-ASSERTIONS
     DEFS-SLOT-DEFINITION-THEORY
     DEFS-ELIMINATE-SLOT
     SLOT-SKEL SLOT-TYPE
     SLOT-VAL SLOT-SIZE
     SLOT-OFF SLOT-NAME
     SLOT DEFS-SLOT-LIFT-IF
     DEFS-READ-SLOT UPDATE-SLOT
     MK-SLOT DEFS-SLOT-P-SLOT
     DEFS-SLOT-P-INCLUDES-WEAK-SLOT-P
     WEAK-SLOT-P
     DEFS-WEAK-SLOT-P-SLOT
     DEFS-ACL2-COUNT-SLOT
     LINE-EXTENSIONALITY
     LINE-EXTENSIONALITY!
     DEFS-LINE-LEMMA-THEORY
     DEFS-LINE-ASSERTIONS LINE-P
     DEFS-LINE-DEFINITION-THEORY
     DEFS-ELIMINATE-LINE
     LINE-SKEL LINE-KEY
     LINE DEFS-LINE-LIFT-IF
     DEFS-READ-LINE UPDATE-LINE
     MAKE-LINE DEFS-LINE-P-LINE
     DEFS-LINE-P-INCLUDES-WEAK-LINE-P
     WEAK-LINE-P
     DEFS-WEAK-LINE-P-LINE
     DEFS-ACL2-COUNT-LINE
     SKEL-EXTENSIONALITY
     SKEL-EXTENSIONALITY!
     DEFS-SKEL-LEMMA-THEORY
     DEFS-SKEL-DEFINITION-THEORY
     DEFS-ELIMINATE-SKEL
     SKEL-SPEC SKEL-BASE
     SKEL DEFS-SKEL-LIFT-IF
     DEFS-READ-SKEL UPDATE-SKEL
     MAKE-SKEL DEFS-SKEL-P-SKEL
     DEFS-SKEL-P-INCLUDES-WEAK-SKEL-P
     WEAK-SKEL-P
     DEFS-WEAK-SKEL-P-SKEL
     DEFS-ACL2-COUNT-SKEL
     NON-MEMBERp-COMPUTATION
     NON-MEMBERp-HYP
     BIND-NON-MEMBERP-ARGUMENT
     DISJOINT-NOT-MEMBERSHIP
     IN-HYPS-NOT-MEMBERP
     REMOVE-Y MEMBERP-COMPUTATION
     MEMBERP-HYP
     HIDE-MEMBERP-FORWARD
     HIDE-MEMBERP
     BIND-MEMBERP-ARGUMENT
     IN-HYPS-MEMBERP
     MEMBERP-MEMBERSHIP
     FIND-MEMBERP-SUBBAGP-LIST
     FIND-MEMBERP-INSTANCE-LIST
     DISJOINT-COMPUTATION
     DISJOINT-COMPUTATION-LEMMA
     DISJOINT-HYP
     UNIQUE-SUBBAGP-CHAIN
     SUBBAGP-PAIR-X-X-Y-Y
     SUBBAGP-PAIR
     HIDE-DISJOINT-FORWARD
     HIDE-DISJOINT
     BIND-DISJOINT-ARGUMENT
     IN-clause-DISJOINT
     UNIQUE-DISJOINTNESS
     FIND-SHARED-ANCESTOR
     FIND-SHARED-ANCESTOR-LIST
     FIND-UNIQUE-SUBBAGP**
     FIND-UNIQUE-SUBBAGP*
     FIND-UNIQUE-SUBBAGP
     FIND-SUBBAGP-PAIR-ZLIST
     REVLIST
     DISJOINT-DISJOINTNESS
     FIND-DISJOINTNESS**
     FIND-DISJOINTNESS*
     FIND-DISJOINTNESS
     UNIQUE-COMPUTATION
     UNIQUE-HYP UNIQUE-CHAIN
     HIDE-UNIQUE-FORWARD
     BIND-UNIQUE-ARGUMENT
     IN-HYPS-UNIQUE
     UNIQUE-UNIQUENESS
     FIND-UNIQUE-INSTANCE-LIST
     FIND-UNIQUE-INSTANCE
     FIND-SUBBAGP-PATH
     SUBBAGP-COMPUTATION
     SUBBAGP-HYP SUBBAGP-CHAIN
     HIDE-SUBBAGP-Z-Z HIDE-SUBBAGP
     HIDE-SUBBAGP-FORWARD
     BIND-SUBBAGP-ARGUMENT
     SUBBAGP-INSTANCE REVERSE-PATH
     FIND-BOUNDED-SUBBAGP-PATH
     FIND-SYNTAX-SUBBAGP-INSTANCE
     FIND-EXACT-SUBBAGP-INSTANCE
     *META*-SUBBAGP-LIST
     SYNTAX-SUBBAGP-IMPLIES-ANY-SUBBAGP
     SYNTAX-SUBBAGP-LIST-WRAPPER
     SYNTAX-SUBBAGP-LIST
     SYNTAX-DECONSP
     APPEND-COMMON-REDUCTION
     CONS-COMMON-REDUCTION
     APPEND-ASSOCIATION
     APPEND-2-OVER-CONS
     APPEND-1-OVER-CONS
     CONS-ASSOCIATION
     PERM-IMPLIES-PERM-APPEND-1
     PERM-COMMON-ELIMINATION
     BIND-COMMON-ELEMENTS
     COMMON-ELEMENTS
     PERM-FREE-SUBSTITUTION
     REPLACE-PERM WHICH-SUBBAGP
     PERM-IMPLIES-EQUAL-DISJOINT-1
     PERM-IMPLIES-EQUAL-DISJOINT-2
     PERM-IMPLIES-IFF-UNIQUE-1
     *META*-SYNTAX-EV-META-REMOVE-1-PERM
     META-REMOVE-1
     SYNTAX-META-REMOVE-1-WRAPPER
     *META*-SYNTAX-EV-META-REMOVE-BAG-PERM
     META-REMOVE-BAG
     SYNTAX-META-REMOVE-BAG-WRAPPER
     V2-SYNTAX-REMOVE-BAG-IS-REMOVE-BAG
     SYNTAX-EV
     V1-SYNTAX-REMOVE-1-IS-REMOVE-1
     *META*-SYNTAX-EV-SYNTAX-MEMBERP
     SYNTAX-MEMBERP-WRAPPER
     SYNTAX-MEMBERP-IMPLEMENTS-MEMBERP
     *TRIGGER*-UNIQUE-SUBBAGPS-IMPLIES-DISJOINTNESS
     UNIQUE-REMOVE-1
     UNIQUE-DESPITE-REMOVE-BAG
     *META*-SYNTAX-EV-SYNTAX-UNIQUE-SUBBAGPS
     UNIQUE-SUBBAGPS
     SYNTAX-UNIQUE-SUBBAGPS-WRAPPER
     SYNTAX-UNIQUE-SUBBAGPS-IMPLIES-UNIQUE-SUBBAGPS
     V2-SYNTAX-REMOVE-BAG-IMPLICATION
     V2-SYNTAX-REMOVE-BAG-IMPLICATION-LEMMA
     V2-SUBBAGP-REMOVE-BAG
     V1-SYNTAX-REMOVE-BAG-IMPLICATION
     V1-SYNTAX-REMOVE-BAG-1-IMPLICATION-LEMMA
     SUBBAGP-REMOVE-BAG-SUBBAGP-APPEND
     SUBBAGP-MEMBERP-REMOVE-1
     CONSP-SUBBAGP REMOVE-1-CONS
     PERM-SUBBAGP-SUBBAGP
     SUBBAGP-APPEND-NIL
     *TRIGGER*-SUBBAGP-PAIR-DISJOINT
     *META*-SYNTAX-EV-SUBBAGP-PAIR
     SUBBAGP-DISJOINT-COMMUTE
     SUBBAGP-DISJOINT
     SYNTAX-SUBBAGP-PAIR-WRAPPER
     SYNTAX-SUBBAGP-PAIR-IMPLIES-SUBBAGP-PAIR-X
     *TRIGGER*-SYNTAX-EV-SYNTAX-SUBBAGP
     *META*-SYNTAX-EV-SYNTAX-SUBBAGP
     META-SUBBAGP
     SUBBAGP-UNIQUENESS
     NON-UNIQUENESS-IMPLICATIONS
     UNIQUE-MEMBERP-REMOVE
     SYNTAX-SUBBAGP-WRAPPER
     SYNTAX-SUBBAGP-IMPLEMENTS-SUBBAGP
     NOT-V1-SYNTAX-REMOVE-1
     PERM-IMPLIES-IFF-CONSP-1
     LEN-APPEND
     SYNTAX-REMOVE-BAG-1-SUBBAGP-APPEND
     SUBBAGP-APPEND-TO-SUBBAGP-REMOVE-BAG
     SUBBAGP-CONS-TO-SUBBAGP-REMOVE-1
     V1-SYNTAX-REMOVE-BAG-1-PERM-REMOVE-BAG
     V1-SYNTAX-REMOVE-1-PERM-REMOVE-1
     V0-REMOVE-1-SUBBAGP
     PERM-IMPLIES-IFF-SUBBAGP-2
     PERM-IMPLIES-IFF-SUBBAGP-1
     PERM-IMPLIES-CONSP-CORRELATION
     PERM-CONSP-REMOVE-1
     PERM-IMPLIES-EQUAL-REMOVE-BAG-1
     REMOVE-BAG
     PERM-REMOVE-BAG-2
     REMOVE-1-REMOVE-BAG-MEMBERP
     REMOVE-1 PERM-NIL-Y
     PERM-REMOVE-BAG-INDUCTION-2
     PERM-NOT-CONSP
     PERM-APPEND-X-A-Y-APPEND-A-Z
     PERM-APPEND-Y-Z-A
     PERM-APPEND-X-Y-Z
     PERM-CONS-X-Y-Z
     PERM-CONS-REDUCTION
     SUBBAGP-PERM-APPEND-REMOVE-BAG
     PERM-IMPLIES-PERM-REMOVE-BAG-2
     PERM-REMOVE-BAG
     PERM-REMOVE-BAG-INDUCTION
     PERM-IMPLIES-PERM-REMOVE-1-2
     PERM-REMOVE-1
     PERM-HAS-NO-BADBOY
     BAD-BOY PERM-APPEND-REMOVE-1
     PERM-CONS-APPEND
     SUBBAGP-CONS-CAR-MEMBERP
     SUBBAGP-CDR-REMOVE-1
     PERM-APPEND
     PERM-REMOVE-BAG-X-X
     PERM-NOT-CONSP-NIL ;bzo remove?
     SYNTAX-REMOVE-BAG-1-NOT
     V1-SYNTAX-REMOVE-BAG-1-SUBBAGP
     V1-SYNTAX-REMOVE-1-SUBBAGP
     APPEND-REMOVE-BAG
     SUBBAGP-REMOVE-BAG-APPEND
     NOT-V0-NO-CHANGE-SYNTAX-REMOVE-BAG-V2
     NOT-V0-NO-CHANGE-SYNTAX-REMOVE-BAG-V1
     NOT-V0-NO-CHANGE-SYNTAX-REMOVE-BAG-1
     NOT-V0-NO-CHANGE-SYNTAX-REMOVE-1
     SYNTAX-REMOVE-BAG-1-IMPLEMENTS-SUBBAGP
     SYNTAX-REMOVE-1-IMPLEMENTS-MEMBERP
     SUBBAGP-APPEND SYNTAX-EV-LIST
     SYNTAX-EV-CONSTRAINT-24
     SYNTAX-EV-CONSTRAINT-23
     SYNTAX-EV-CONSTRAINT-22
     SYNTAX-EV-CONSTRAINT-21
     SYNTAX-EV-CONSTRAINT-20
     SYNTAX-EV-CONSTRAINT-19
     SYNTAX-EV-CONSTRAINT-18
     SYNTAX-EV-CONSTRAINT-17
     SYNTAX-EV-CONSTRAINT-16
     SYNTAX-EV-CONSTRAINT-15
     SYNTAX-EV-CONSTRAINT-14
     SYNTAX-EV-CONSTRAINT-13
     SYNTAX-EV-CONSTRAINT-12
     SYNTAX-EV-CONSTRAINT-11
     SYNTAX-EV-CONSTRAINT-10
     SYNTAX-EV-CONSTRAINT-9
     SYNTAX-EV-CONSTRAINT-8
     SYNTAX-EV-CONSTRAINT-7
     SYNTAX-EV-CONSTRAINT-6
     SYNTAX-EV-CONSTRAINT-5
     SYNTAX-EV-CONSTRAINT-4
     SYNTAX-EV-CONSTRAINT-3
     SYNTAX-EV-CONSTRAINT-2
     SYNTAX-EV-CONSTRAINT-1
     HIDE-UNIQUE
     SYNTAX-UNIQUE-SUBBAGPS
     SYNTAX-SUBBAGP-PAIR
     SYNTAX-SUBBAGP
     SYNTAX-REMOVE-BAG
     SYNTAX-REMOVE-BAG-1
     SYNTAX-REMOVE-1
     SYNTAX-MEMBERP MET V2
     V1 V0 META-MEMBERP
     IMPLIES-IF X*-INSTANCE-G*
     X*-INSTANCE X*-FIX-G*
     X*-FIX MESH-X*-G*
     MESH DISJOINT-MESH-G*-FIX
     DISJOINT-G*-BLKS-G*-FIX-2
     DISJOINT-BLKS-G*-FIX
     DISJOINT-MESH-FROM-X*-INSTANCE
     DISJOINT-BLKS-FROM-X*-INSTANCE
     S*==S*
     S*-INSTANCE X*-G*
     X* X*-X* G*-OVER-S*-S*
     G* S*-OVER-S*
     S* X*-OVER-S*-MESH
     G*-OVER-S*-MESH
     RX-OVER-S*-MESH
     X*-OVER-WX-MESH
     G*-OVER-WX-MESH
     S*-OVER-WX-MESH X*-FIX-X*
     X*-INSTANCE-X* G*-FIX-G*
     G*-FIX G*-INSTANCE-G*
     G*-INSTANCE SPEC-EQUAL
     OPEN-S* WF-SKEL-G*
     WF-SKEL INTEGERP-CADAR-G*
     BLKS-PTR-G*-REDUCTION-CASESPLIT
     BLKS-PTR
     UNIQUE-BLKS-PTR-INDEPENDENT-OF-PTR
     BLKS-PTR-REDUCTION
     DISJOINT-BLK-PTR-BLKS-PTR-INDEPENDENT-OF-PTR-0-HYP
     DISJOINT-BLK-PTR-BLKS-PTR-INDEPENDENT-OF-PTR-0-CONCLUSION
     DISJOINT-BLK-PTR-BLKS-PTR-INDEPENDENT-OF-PTR
     UNIFORM-BASE-BLKS-TRANSFORMATION
     BLKS
     UNIFORM-BASE-G* UNIFORM-BASE
     CONSP-G*-FORWARD BASE-G*
     BLKS-G*-REDUCTION-CASESPLIT
     SIZE-G*-CASESPLIT
     SIZE SIZE-REC-G*-CASESPLIT
     SIZE-REC
     OPEN-G*
     UNIFORM-BASE-RELOCATE-BLOCK
     CONSP-RELOCATE-BLOCK
     BASE-RELOCATE-BLOCK
     RELOCATE-BLOCK WF-SKEL-X*
     UNIFORM-BASE-X* BASE-X*
     BLKS-X*-REDUCTION SIZE-X*
     SIZE-REC-X* OPEN-X*
     NON-NEGATIVE-INTEGERP-SIZE
     NON-NEGATIVE-INTEGERP
     SIZE-REC-RELATIVITY
     SIZE-REC-SKEL-PROP
     SIZE-REC-RELATION
     RMAX-BOUND-REWRITE
     NON-NEGATIVE-INTEGERP-SIZE-REC
     OPEN-SIZE-REC
     WF-SKEL-IMPLIES-WEAK-SKEL
     OPEN-WF-SKEL FLATTEN
     MESH-APPEND TRUE-LISTP-MESH
     OPEN-MESH BLKS-APPEND
     TRUE-LISTP-BLKS OPEN-BLKS
     OPEN-WEAK-SKEL WEAK-SKEL
     WEAK-SKEL-IMPLIES-TRUE-LISTP
     SKEL-ENTRY-BODY
     IMPLIES-POSITIVE-INTEGERP
     POSITIVE-INTEGERP
     POSITIVE-INTEGERP-IMPLIES
     IMPLIES-NON-NEGATIVE-INTEGERP
     NON-NEGATIVE-INTEGERP-IMPLIES
     ANYTHING
     INTEGERP-IMPLIES-COMMON-TYPES
     INTEGERP-+
     IMPLIES* SYNTAX-ATOM
     SYNTAX-CONSP-OR-SYMBOL
     SYNTAX-CONSP-OR-QUOTE
     USBP8-USBP
     WR-EQUAL-DIFFERENTIAL
     EQUAL-CAR-DIFFERENTIAL
     WFIXN-UNSIGNED-BYTE-P
     WX-WFIXN-REDUCTION
     ZP-WFIXN Z*-WX-INDUCTION
     DISJOINT-LIST-REDUCTION
     NOT-CONSP-DISJOINT-LIST
     Z*-OVER-WX-COMMUTE
     RX-OVER-Z*-DISJOINT
     WX-EQUALITY-TO-VALUE-EQUALITY
     RX-REC-OVER-Z*-DISJOINT
     Z*-INDUCTION-FN Z*-OF-WX-REC
     EQUALITY-IMPLIES-EQUAL-READS
     RX-REC-OVER-Z*-REC-DISJOINT
     RX-REC-WR-NON-MEMBERP
     Z*-REC-DISJOINT
     WFIXW Z*-REC-SWITCHEROO
     Z*-REC Z*-REC-COMMUTATIVITY
     Z*-REC-OVER-APPEND
     Z*-OF-WX Z*-OVER-WX-SUBBAGP
     REMOVE-BAG-SMALLER
     SUBBAGP-BLK-REC-MEMBERP
     OPEN-BLK-REC Z*-REC-MEMBERP
     Z*-WX-INTRODUCTION
     WX==RAM-REC OTHER-WAY-2
     OTHER-WAY-1 Z*-SAME-WX-REC-0
     WR-CORRECT-VAL-EQUAL
     WX==RAM-REC-VALUE-SAME-2
     WX==RAM-REC-VALUE-SAME
     WX==RAM-REC-EIGHTH-2
     WX==RAM-REC-EIGHTH
     Z*-REC-OF-WX-REC WR-EQUALITY
     WX==RAM-INDUCTION-8
     OPEN-RX-REC OPEN-WX-REC
     WR-WX-REC-LINEAR-NOT-MEMBERP
     LINEAR-TO-BLK-REC
     Z*-REC-BLK-REC-OF-WR
     LINEAR-MEMBERP Z*-REC-WR
     WR-OF-WR-SAME-VALUE
     WR RX-OVER-WX
     WX-OVER-WX WX-OF-RX
     WX-OF-WX WFIXN-RX
     WINTN-RX RX-OF-WX
     WX==WX WX==WX-HYP
     RAM==WX WX-INSTANCE
     RAM==WX-HYP WX-REC==WX-REC
     WX-REC==WX-REC-LEMMA
     RAM==WX-REC
     WX-REC-OVER-WX-REC-INSTANCE
     WX-REC-OVER-WX-REC
     WX-REC-OVER-WX-REC-LEMMA
     WX-REC-OF-WX-REC
     WR-OVER-WX-REC-INSTANCE
     WR-OVER-WX-REC
     WR-OVER-WX-REC-LEMMA
     WX-REC-OF-RX-REC
     WFIXW-RX-REC WINTW-RX-REC
     WINTW WX-REC-OF-RX-REC-LEMMA
     RX-REC-OF-WX-REC
     RX-REC-OF-WX-REC-LEMMA
     RX-REC-OVER-WX-REC
     RX-REC-OVER-WX-REC-LEMMA
     RX-REC-OVER-WR-INSTANCE
     RX-REC-OVER-WR
     RD-OVER-WX-REC-INSTANCE
     RD RD-OVER-WX-REC
     XXX-REC-NON-INTEGER-OFF
     WX-REC-NON-INTEGER-OFF
     WX-REC-NON-INTEGER-PTR
     RX-REC-NON-INTEGER-PTR
     BLK-REC-NON-INTEGER-PTR
     INTEGERP-RX
     INTEGERP-RX-REC TAG-LOCATION
     FAILED-LOCATION Z*-REDUCTION
     Z*-REC-OVER-WR Z*-REC-OF-WR
     Z*-REC-INDUCTION
     WR==RAM WR-WFIX8-REDUCTION
     WR==R! WR==WR
     WR==WR-HYP WR==R
     WR==R-HYP WINT8-RD
     WFIX WINT WR-SAME-WR
     WR-SAME-RD RD-OF-WR-REDUX
     WR-SAME-WR-HYPS
     WR-DIFF-WR-HYPS
     WR-SAME-RD-HYPS
     RD-DIFF-WR-HYPS
     RD-SAME-WR-HYPS
     WF-WINT8-FORWARD
     WF-WINT8 WINT8-ZP
     WFIX8-RUNE WFIX8
     WINT8 WFIXN-WFIXN
     WFIXW-REDUCTION WINTN-WFIXN
     WFIXN-0 INTEGERP-WFIXN
     NON-NEGATIVE-INTEGERP-MAX-OFFSET
     WORD-SIZE
     RELOCATE-BLK-OFFSET
     BLK RELOCATE-BLK-REC-OFFSET
     DISJOINT-RELOCATION
     MEMBERP-RELOCATE-BLK
     RELOCATE-BLK
     NULL-BLK ZP-XBLOCK
     XBLOCK UNIQUE-BLK
     BLK-NON-MEMBERSHIP-MORE
     BLK-NON-MEMBERSHIP-LESS
     DISJOINT-BLK-SUBBAGP-LEFT
     DISJOINT-BLK-SUBBAGP-RIGHT
     BLK-MEMBERSHIP
     BLK-MEMBERSHIP-SUBBAGP
     LINEAR-DISJOINTNESS
     LINEAR-BLK-REC-DISJOINTNESS
     BLK-REC-LOWER-SUBBAGP
     BLK-UPPER-SUBBAGP
     BLK-REC-UPPER-SUBBAGP
     BLK-REC-INDUCTION
     BLK-REC-NORMALIZATION
     NULL-BLK-REC
     BLK-REC-MEMBERSHIP-SUBBAGP
     BLK-REC-MEMBERSHIP
     TRUE-LISTP-BLK-REC
     UNIQUE-BLK-REC
     BLK-REC-NON-MEMBERSHIP-MORE
     BLK-REC-NON-MEMBERSHIP-LESS
     DISJOINT-BLK-REC-SUBBAGP-LEFT
     DISJOINT-BLK-REC-SUBBAGP-RIGHT
     DISJOINT-BLK-REC-SUBBAGP
     TRUE-LISTP-BLK
     INTEGER-LISTP-BLK
     INTEGER-LISTP-BLK-REC
     DISJOINT-LIST-IMPLIES-DISJOINT-FLAT
     ANY-SUBBAGP-IMPLIES-SUBBAGP-FLAT
     OPEN-DISJOINT-LIST
     APPEND-APPEND-REDUCTION
     APPEND-NIL
     TRUE-LISTP-APPEND-IMPLICATION
     TRUE-LISTP-APPEND CADDDDR
     CADDDDDR CADDDDDDR
     CDDDDDDR CDDDDDR
     NOT-MEMBERP-IMPLIES-NOT-MEMBERP-REMOVE-1
     MEMBERP-AND-NOT-CDR-IMPLIES-EQUALITY
     MEMBERP-FROM-DISJOINT-MEMBERP
     UNIQUE-of-APPEND
     DISJOINT-EQUAL-APPEND
     DISJOINT-COMMUTATIVE
     DISJOINT-NIL DISJOINT-CONS
     EQUAL-APPEND-X-APPEND-X
     REMOVE-BAG-APPEND
     APPEND-OF-CONS
     REMOVE-BAG-REDUCTION
     REMOVE-BAG-CONS-REMOVE-1-NOT-EQUAL
     REMOVE-1-IMPLIES-REMOVE-BAG-SINGLETON
     REMOVE-BAG-REMOVE-1
     SUBBAGP-REMOVE-BAG
     SUBBAGP-REMOVE
     SUBBAGP-X-X SUBBAGP-REMOVE-1
     SUBBAGP-IMPLIES-REMOVE-BAG
     SUBBAGP-IMPLIES-MEMBERSHIP
     REMOVE-BAG-CONS
     NON-CONSP-SUBBAGP
     SUBBAGP-CDR SUBBAGP-CHAINING
     SUBBAGP-IMPLIES-COMMON-MEMBERS-ARE-IRRELEVANT
     REMOVE-BAG-ADDS-NO-TERMS
     NON-MEMBERSHIP-REMOVAL-FREE
     NON-MEMBERSHIP-REMOVE-1
     SUBBAGP-SUBBAGP-INDUCTION
     NOT-REMOVE-BAG-CONS-IMPLIES-MEMBERP
     NOT-REMOVE-BAG-IMPLIES-NOT-REMOVE-BAG-REMOVE-1
     remove-bag-of-cons-non-memberp
     SUBBAGP-APPEND-APPEND
     SUBBAGP-APPEND-APPEND-LEFT
     MEMBERP-APPEND
     REMOVE-BAG-UNIT
     REMOVE-BAG-NOT-CONSP-X
     REMOVE-BAG-X-NOT-CONSP
     REMOVE-1-APPEND
     EQUAL-TRUE-LIST-CASES ;drop?
     EQUAL-CONS-CASES ;drop?
     MEMBERSHIP-EXTRACTION-INSTANCE
     MEMBERSHIP-EXTRACTION
     MEMBERP-REMOVE-IMPLICATION
     NOT-CONSP-SUBBAGP-X-X
     MEMBERP-SUBBAGP-NOT-CONSP-VERSION
     MEMBERP-SUBBAGP
     SUBBAGP-IMPLIES-SUBBAGP-APPEND-CAR-NOT-CONSP-VERSION
     SUBBAGP-IMPLIES-SUBBAGP-APPEND-CAR
     SUBBAGP-IMPLIES-SUBBAGP-APPEND-REC-NOT-CONSP-VERSION
     SUBBAGP-IMPLIES-SUBBAGP-APPEND-REC
     SUBBAGP-CONS
     SUBBAGP-IMPLIES-SUBBAGP-CONS
     EQUALITY-FROM-MEM-AND-REMOVE
     MEMBERP-X-REMOVE-X-IMPLIES-MEMBERP-X-REMOVE-1-Y
     PERM-IMPLIES-PERM-APPEND-2
     PERM-IMPLIES-IFF-MEMBERP-2
     PERM-IMPLIES-PERM-CONS-2
     PERM-IS-AN-EQUIVALENCE
     MEMBERP-REMOVE
     memberp-remove-1-lemma;MEM-REM 
     REMOVE-1-REMOVE-1
     REDUCE-MEMBERX-TO-MEMBERP
     ;MEMBERP
     WCAR-WCDR-WFIXW
     WCDR WCAR
     WINTW-WFIXW WFIXW-WFIXW
     WFIXW-0 OPEN-WFIXW
     INTEGERP-WFIXW WCAR-WINT
     WINTW-UNSIGNED-BYTE-P
     WFIXW-UNSIGNED-BYTE-P
     WCONS-WCDR-WCAR
     WCONS WCDR-WCAR-REDUCTION
     WCAR-UNSIGNED-BYTE-P
     WCONS-UNSIGNED-BYTE-P
     ;*EXPORTS*
     ))
