(*
 * This software is released under the new BSD 2006 license.
 * 
 * Note the new BSD license is equivalent to the MIT License, except for the
 * no-endorsement final clause.
 * 
 * Copyright (c) 2007, Clemson University
 * 
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * 
 *   * Redistributions of source code must retain the above copyright notice,
 *     this list of conditions and the following disclaimer. 
 *   * Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution. 
 *   * Neither the name of the Clemson University nor the names of its
 *     contributors may be used to endorse or promote products derived from
 *     this software without specific prior written permission. 
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER
 * OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 * This sofware has been developed by past and present members of the
 * Reusable Sofware Research Groups (RSRG) at Clemson University and
 * The Ohio State University.
 *)

Precis Natural_Number_Theory;
	uses Monogenerator_Theory, Basic_Properties;
	
Categorical Definition introduces
	N : SSet,
	0 : N,
	suc : N -> N
related by
	Is_Monogeneric_for(N, 0, suc);
	
Inductive Definition (m : N) + (n : N) : N is
	(i) m + 0 = m;
	(ii) m + suc(n) = suc(m + n);
	
Corollary Plus_1:
	Is_Right_Identity_for(op +, 0);
	
Theorem N1:
	Is_Associative(op +);
	
Theorem N2:
	Is_Left_Identity_for(op +, 0);
	
Corollary N2_1:
	Is_Monoid(N, 0, op +);
	
Theorem N3:
	For all m, n : N,
		suc(m) + n = suc(m + n);

Theorem N4:
	Is_Commutative(op +);
	
Corollary N4_1:
	Is_Abelian_Monoid(N, 0, op +);
	
Theorem N5:
	Is_Right_Cancelative(op +);
	
Theorem N6:
	For all n : N,
		n = 0 or 
		(There exists p : N,
			n = suc(p));
			
Corollary N6_1:
	not(Is_Factorable_for(op +, 0));
	
Definition 1 : N = suc(0);
Definition 2 : N = suc(1);
Definition 3 : N = suc(2);
Definition 4 : N = suc(3);
Definition 5 : N = suc(4);
Definition 6 : N = suc(5);
Definition 7 : N = suc(6);
Definition 8 : N = suc(7);
Definition 9 : N = suc(8);

Corollary Def1_1:
	For all n : N,
		suc(n) = n + 1;
			
(*Theorem N7:
	For all S : Powerset(N),
		({0, 1} is_subset_of S and
		(For all m, n : S, m + n is_in S)) implies
			S = N;*)
			
Definition Is_Alg_N_N_Like(D : SSet, i : D, g : D, f : D * D -> D) : B;

Corollary Alg_1:
	Is_Alg_N_N_Like(N, 0, 1, op +);
	
(*Theorem N8:
	For all D : SSet,
	For all i, g : D,
	For all f : D * D -> D,
		(Is_Alg_N_N_Like(D, i, g, f)) implies
		(not(There exists h : N -> D,
			(h(1) = g) and (For all m : N,
				m = 0 and (For all n : N,
				m = 0 and (For all n : N,
					h(m + n) = f(h(m), h(n)) and Is_Bijective(h))) implies
						h(m) = i)));*)

Definition (m : N) <= (n : N) : B =
	There exists i : N,
		m + i = n;
		
Theorem N9:
	Is_Total_Ordering(op <=);
	
Theorem N10:
	Is_Preserved_by(op +, op <=);
	
Theorem NN_LTE_Addition:
	For all m,n:N,
		m <= m + n;
	
Theorem Not_LTE_Z_1_0:
	For all n:N,
		not(1 <= n) implies n = 0;
		
Theorem Zero_min:
	For all n:N,
		0 <= n;
	
end Natural_Number_Theory;