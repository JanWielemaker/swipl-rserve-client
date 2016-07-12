/*  Part of SWI-Prolog

    Author:        Jan Wielemaker
    E-mail:        J.Wielemaker@vu.nl
    WWW:           http://www.swi-prolog.org
    Copyright (c)  2016, CWI Amsterdam
    All rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions
    are met:

    1. Redistributions of source code must retain the above copyright
       notice, this list of conditions and the following disclaimer.

    2. Redistributions in binary form must reproduce the above copyright
       notice, this list of conditions and the following disclaimer in
       the documentation and/or other materials provided with the
       distribution.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
    "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
    LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
    FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
    COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
    INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
    BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
    CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
    LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
    ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
    POSSIBILITY OF SUCH DAMAGE.
*/

:- module(rserve,
	  [ r_open/2,				% -RServe, +Options
	    r_close/1,				% +RServe
	    r_assign/3,				% +RServe, +Var, +Data
	    r_eval/3,				% +RServe, +Command, -Result
	    r_read_file/3,			% +Result, +FileName, -String
	    r_remove_file/2			% +Result, +FileName
	  ]).
:- use_foreign_library(rserve).

/** <module> SWI-Prolog Rserver client
*/

%%	r_open(-RServe, +Options) is det.
%
%	Open a connection to an R server.  Options:
%
%	  - alias(+Alias)
%	  Give a name to the connection.
%	  - open(+How)
%	  If `once`, turn opening a connection for the second time
%	  in a no-op.

%%	r_close(+Rserve) is det.
%
%	Close an open connection to an R server.

%%	r_assign(+Rserve, +VarName, +Value) is det.
%
%	Assign a value to variable VarName   in  Rserve. Value follows a
%	generic transformation of Prolog values into R values:
%
%	  $ list :
%	  $ integer :
%	  $ float :

%%	r_eval(+Rserve, +Command, -Value) is det.
%
%	Send Command to Rserve and translate  the resulting R expression
%	into a Prolog representation.

%%	r_read_file(+RServe, +FileName, -Content:string) is det.
%
%	Read the content of a remote file into the string Content.

%%	r_remove_file(+RServe, +FileName) is det.
%
%
