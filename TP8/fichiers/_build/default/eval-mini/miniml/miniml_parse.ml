type token =
  | EOF
  | OPEN
  | CLOSE
  | LBRACKET
  | RBRACKET
  | EMPTYLIST
  | SEMICOLON
  | LET
  | DOT
  | ARROW
  | IN
  | REC
  | NEG
  | ASSIGN
  | CARET
  | COLONCOLON
  | COLONEQUAL
  | PLUS
  | MINUS
  | GET
  | TIMES
  | SET
  | GREATERTHAN
  | LESSTHAN
  | EQUALS
  | IF
  | THEN
  | ELSE
  | INCR
  | FUNCTION
  | COMMA
  | LEN
  | MATCH
  | RAISE
  | TRY
  | WITH
  | PIPE
  | FST
  | SND
  | ID of (string)
  | STRING of (string)
  | BUILTIN of (string)
  | INT of (int)
  | TRUE
  | FALSE
  | TEE
  | BANG
  | REF

open Parsing;;
let _ = parse_error;;
# 3 "eval-mini/miniml/miniml_parse.mly"
  open Expr ;;

# 57 "eval-mini/miniml/miniml_parse.ml"
let yytransl_const = [|
    0 (* EOF *);
  257 (* OPEN *);
  258 (* CLOSE *);
  259 (* LBRACKET *);
  260 (* RBRACKET *);
  261 (* EMPTYLIST *);
  262 (* SEMICOLON *);
  263 (* LET *);
  264 (* DOT *);
  265 (* ARROW *);
  266 (* IN *);
  267 (* REC *);
  268 (* NEG *);
  269 (* ASSIGN *);
  270 (* CARET *);
  271 (* COLONCOLON *);
  272 (* COLONEQUAL *);
  273 (* PLUS *);
  274 (* MINUS *);
  275 (* GET *);
  276 (* TIMES *);
  277 (* SET *);
  278 (* GREATERTHAN *);
  279 (* LESSTHAN *);
  280 (* EQUALS *);
  281 (* IF *);
  282 (* THEN *);
  283 (* ELSE *);
  284 (* INCR *);
  285 (* FUNCTION *);
  286 (* COMMA *);
  287 (* LEN *);
  288 (* MATCH *);
  289 (* RAISE *);
  290 (* TRY *);
  291 (* WITH *);
  292 (* PIPE *);
  293 (* FST *);
  294 (* SND *);
  299 (* TRUE *);
  300 (* FALSE *);
  301 (* TEE *);
  302 (* BANG *);
  303 (* REF *);
    0|]

let yytransl_block = [|
  295 (* ID *);
  296 (* STRING *);
  297 (* BUILTIN *);
  298 (* INT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\003\000\003\000\003\000\003\000\003\000\004\000\
\004\000\004\000\004\000\005\000\005\000\005\000\006\000\007\000\
\007\000\008\000\008\000\009\000\009\000\010\000\010\000\010\000\
\010\000\010\000\000\000"

let yylen = "\002\000\
\001\000\001\000\006\000\007\000\004\000\006\000\001\000\003\000\
\003\000\003\000\001\000\003\000\003\000\001\000\001\000\002\000\
\001\000\003\000\001\000\001\000\003\000\001\000\001\000\001\000\
\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\025\000\026\000\
\022\000\023\000\024\000\027\000\001\000\002\000\000\000\000\000\
\014\000\000\000\017\000\000\000\020\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\
\000\000\021\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\012\000\013\000\018\000\000\000\000\000\000\000\005\000\
\000\000\000\000\000\000\000\000\003\000\006\000\004\000"

let yydgoto = "\002\000\
\012\000\013\000\014\000\015\000\016\000\017\000\018\000\019\000\
\020\000\021\000"

let yysindex = "\003\000\
\012\255\000\000\012\255\245\254\012\255\238\254\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\240\254\253\254\
\000\000\019\255\000\000\248\254\000\000\021\255\241\254\001\255\
\000\255\018\255\019\255\019\255\019\255\019\255\019\255\000\000\
\019\255\000\000\005\255\012\255\012\255\012\255\253\254\253\254\
\253\254\000\000\000\000\000\000\012\255\020\255\009\255\000\000\
\022\255\012\255\012\255\012\255\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\005\000\031\000\
\000\000\012\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\046\000\057\000\
\064\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\035\000\253\255\000\000\238\255\242\255\000\000\241\255\
\000\000\000\000"

let yytablesize = 347
let yytable = "\023\000\
\019\000\025\000\032\000\001\000\007\000\027\000\028\000\029\000\
\039\000\040\000\041\000\015\000\003\000\030\000\031\000\042\000\
\043\000\044\000\004\000\003\000\026\000\033\000\034\000\035\000\
\036\000\037\000\038\000\024\000\045\000\050\000\011\000\052\000\
\046\000\047\000\048\000\051\000\005\000\022\000\000\000\000\000\
\006\000\049\000\000\000\000\000\000\000\010\000\053\000\054\000\
\055\000\000\000\007\000\000\000\008\000\009\000\010\000\011\000\
\009\000\007\000\000\000\008\000\009\000\010\000\011\000\008\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\019\000\019\000\000\000\000\000\000\000\007\000\000\000\
\000\000\000\000\019\000\000\000\000\000\015\000\007\000\000\000\
\000\000\019\000\019\000\000\000\000\000\015\000\019\000\019\000\
\019\000\000\000\019\000\019\000\015\000\015\000\007\000\007\000\
\011\000\015\000\015\000\015\000\000\000\015\000\015\000\019\000\
\011\000\019\000\019\000\019\000\019\000\000\000\000\000\010\000\
\000\000\000\000\000\000\000\000\011\000\011\000\011\000\010\000\
\011\000\011\000\009\000\000\000\000\000\000\000\000\000\000\000\
\000\000\008\000\009\000\010\000\010\000\010\000\000\000\010\000\
\010\000\008\000\000\000\000\000\000\000\000\000\009\000\009\000\
\009\000\000\000\009\000\009\000\000\000\008\000\008\000\008\000\
\000\000\008\000\008\000"

let yycheck = "\011\001\
\000\000\005\000\018\000\001\000\000\000\022\001\023\001\024\001\
\027\000\028\000\029\000\000\000\001\001\017\001\018\001\030\000\
\031\000\033\000\007\001\001\001\039\001\030\001\002\001\039\001\
\024\001\026\001\009\001\039\001\024\001\010\001\000\000\010\001\
\036\000\037\000\038\000\027\001\025\001\003\000\255\255\255\255\
\029\001\045\000\255\255\255\255\255\255\000\000\050\000\051\000\
\052\000\255\255\039\001\255\255\041\001\042\001\043\001\044\001\
\000\000\039\001\255\255\041\001\042\001\043\001\044\001\000\000\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\001\001\002\001\255\255\255\255\255\255\002\001\255\255\
\255\255\255\255\010\001\255\255\255\255\002\001\010\001\255\255\
\255\255\017\001\018\001\255\255\255\255\010\001\022\001\023\001\
\024\001\255\255\026\001\027\001\017\001\018\001\026\001\027\001\
\002\001\022\001\023\001\024\001\255\255\026\001\027\001\039\001\
\010\001\041\001\042\001\043\001\044\001\255\255\255\255\002\001\
\255\255\255\255\255\255\255\255\022\001\023\001\024\001\010\001\
\026\001\027\001\002\001\255\255\255\255\255\255\255\255\255\255\
\255\255\002\001\010\001\022\001\023\001\024\001\255\255\026\001\
\027\001\010\001\255\255\255\255\255\255\255\255\022\001\023\001\
\024\001\255\255\026\001\027\001\255\255\022\001\023\001\024\001\
\255\255\026\001\027\001"

let yynames_const = "\
  EOF\000\
  OPEN\000\
  CLOSE\000\
  LBRACKET\000\
  RBRACKET\000\
  EMPTYLIST\000\
  SEMICOLON\000\
  LET\000\
  DOT\000\
  ARROW\000\
  IN\000\
  REC\000\
  NEG\000\
  ASSIGN\000\
  CARET\000\
  COLONCOLON\000\
  COLONEQUAL\000\
  PLUS\000\
  MINUS\000\
  GET\000\
  TIMES\000\
  SET\000\
  GREATERTHAN\000\
  LESSTHAN\000\
  EQUALS\000\
  IF\000\
  THEN\000\
  ELSE\000\
  INCR\000\
  FUNCTION\000\
  COMMA\000\
  LEN\000\
  MATCH\000\
  RAISE\000\
  TRY\000\
  WITH\000\
  PIPE\000\
  FST\000\
  SND\000\
  TRUE\000\
  FALSE\000\
  TEE\000\
  BANG\000\
  REF\000\
  "

let yynames_block = "\
  ID\000\
  STRING\000\
  BUILTIN\000\
  INT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 37 "eval-mini/miniml/miniml_parse.mly"
              ( _1 )
# 313 "eval-mini/miniml/miniml_parse.ml"
               : Expr.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr1) in
    Obj.repr(
# 39 "eval-mini/miniml/miniml_parse.mly"
            ( _1)
# 320 "eval-mini/miniml/miniml_parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'expr1) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr1) in
    Obj.repr(
# 41 "eval-mini/miniml/miniml_parse.mly"
                                      ( Let(_2, _4, _6) )
# 329 "eval-mini/miniml/miniml_parse.ml"
               : 'expr1))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'expr1) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'expr1) in
    Obj.repr(
# 42 "eval-mini/miniml/miniml_parse.mly"
                                     ( Letrec(_3, _5, _7) )
# 338 "eval-mini/miniml/miniml_parse.ml"
               : 'expr1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'expr1) in
    Obj.repr(
# 43 "eval-mini/miniml/miniml_parse.mly"
                            ( Fun(_2, _4) )
# 346 "eval-mini/miniml/miniml_parse.ml"
               : 'expr1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'expr1) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'expr1) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr1) in
    Obj.repr(
# 44 "eval-mini/miniml/miniml_parse.mly"
                                        ( If(_2, _4, _6) )
# 355 "eval-mini/miniml/miniml_parse.ml"
               : 'expr1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp2) in
    Obj.repr(
# 45 "eval-mini/miniml/miniml_parse.mly"
         ( _1 )
# 362 "eval-mini/miniml/miniml_parse.ml"
               : 'expr1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp2) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp3) in
    Obj.repr(
# 47 "eval-mini/miniml/miniml_parse.mly"
                         ( Eq(_1, _3) )
# 370 "eval-mini/miniml/miniml_parse.ml"
               : 'exp2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp2) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp3) in
    Obj.repr(
# 48 "eval-mini/miniml/miniml_parse.mly"
                              ( Less(_1, _3) )
# 378 "eval-mini/miniml/miniml_parse.ml"
               : 'exp2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp2) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp3) in
    Obj.repr(
# 49 "eval-mini/miniml/miniml_parse.mly"
                                 ( Greater(_1, _3) )
# 386 "eval-mini/miniml/miniml_parse.ml"
               : 'exp2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp3) in
    Obj.repr(
# 50 "eval-mini/miniml/miniml_parse.mly"
              ( _1 )
# 393 "eval-mini/miniml/miniml_parse.ml"
               : 'exp2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp3) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp4) in
    Obj.repr(
# 53 "eval-mini/miniml/miniml_parse.mly"
                       ( Plus(_1, _3) )
# 401 "eval-mini/miniml/miniml_parse.ml"
               : 'exp3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp3) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp4) in
    Obj.repr(
# 54 "eval-mini/miniml/miniml_parse.mly"
                      ( Minus(_1, _3) )
# 409 "eval-mini/miniml/miniml_parse.ml"
               : 'exp3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp4) in
    Obj.repr(
# 55 "eval-mini/miniml/miniml_parse.mly"
         ( _1 )
# 416 "eval-mini/miniml/miniml_parse.ml"
               : 'exp3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp_app) in
    Obj.repr(
# 57 "eval-mini/miniml/miniml_parse.mly"
              ( _1 )
# 423 "eval-mini/miniml/miniml_parse.ml"
               : 'exp4))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'exp_app) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp5) in
    Obj.repr(
# 59 "eval-mini/miniml/miniml_parse.mly"
                      ( App(_1, _2) )
# 431 "eval-mini/miniml/miniml_parse.ml"
               : 'exp_app))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp5) in
    Obj.repr(
# 60 "eval-mini/miniml/miniml_parse.mly"
                ( _1 )
# 438 "eval-mini/miniml/miniml_parse.ml"
               : 'exp_app))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp6) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp5) in
    Obj.repr(
# 62 "eval-mini/miniml/miniml_parse.mly"
                      ( Pair(_1, _3) )
# 446 "eval-mini/miniml/miniml_parse.ml"
               : 'exp5))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp6) in
    Obj.repr(
# 63 "eval-mini/miniml/miniml_parse.mly"
                ( _1 )
# 453 "eval-mini/miniml/miniml_parse.ml"
               : 'exp5))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'constant) in
    Obj.repr(
# 65 "eval-mini/miniml/miniml_parse.mly"
                   ( _1 )
# 460 "eval-mini/miniml/miniml_parse.ml"
               : 'exp6))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 66 "eval-mini/miniml/miniml_parse.mly"
                          ( _2 )
# 467 "eval-mini/miniml/miniml_parse.ml"
               : 'exp6))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 69 "eval-mini/miniml/miniml_parse.mly"
                ( Num _1 )
# 474 "eval-mini/miniml/miniml_parse.ml"
               : 'constant))
; (fun __caml_parser_env ->
    Obj.repr(
# 70 "eval-mini/miniml/miniml_parse.mly"
          ( Bool true )
# 480 "eval-mini/miniml/miniml_parse.ml"
               : 'constant))
; (fun __caml_parser_env ->
    Obj.repr(
# 71 "eval-mini/miniml/miniml_parse.mly"
           ( Bool false )
# 486 "eval-mini/miniml/miniml_parse.ml"
               : 'constant))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 72 "eval-mini/miniml/miniml_parse.mly"
               ( Var _1 )
# 493 "eval-mini/miniml/miniml_parse.ml"
               : 'constant))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 73 "eval-mini/miniml/miniml_parse.mly"
                                    ( Builtin _1 )
# 500 "eval-mini/miniml/miniml_parse.ml"
               : 'constant))
(* Entry input *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let input (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Expr.expr)
;;
