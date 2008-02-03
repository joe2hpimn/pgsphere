-- Create tables

CREATE TABLE spheretmp1 (p spoint);

\copy spheretmp1 from 'data/test_spherepoint.data'
\copy spheretmp1 from 'data/test_spherepoint.data'
\copy spheretmp1 from 'data/test_spherepoint.data'
\copy spheretmp1 from 'data/test_spherepoint.data'

CREATE TABLE spheretmp2 (c scircle);

\copy spheretmp2 from 'data/test_spherecircle.data'
\copy spheretmp2 from 'data/test_spherecircle.data'
\copy spheretmp2 from 'data/test_spherecircle.data'
\copy spheretmp2 from 'data/test_spherecircle.data'

CREATE TABLE spheretmp3 (b sbox);
\copy spheretmp3 from 'data/test_spherebox.data'

CREATE TABLE spheretmp4 AS                
  SELECT sline ( p , p - strans '-15d,-15d,-15d,ZXZ' ) AS l
  FROM spheretmp1;

