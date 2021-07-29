create table myjson (idf number, jc clob)

INSERT INTO myjson (idf, jc) 
  VALUES (101, UTL_RAW.convert(UTL_RAW.cast_to_raw('{"namy":"name i have", "items": ["a", "b", "c"]}'), 
                          'AL32UTF8', 
                          'WE8MSWIN1252'))
                          
INSERT INTO myjson (idf, jc) 
  VALUES (102, '{"namy":"name i have", "items": ["a", "b", "c"]}')
  
select * from myjson

select UTL_RAW.CAST_TO_VARCHAR2(dbms_lob.substr( jc, dbms_lob.getlength(jc), 1)) jcc from myjson where idf=101

INSERT INTO myjson (idf, jc) 
  VALUES (103, UTL_RAW.convert(utl_encode.base64_encode('{"namy":"name i have", "items": ["a", "b", "c"]}')))

utl_raw.cast_to_varchar2(utl_encode.base64_encode(utl_raw.cast_to_raw(t)));

select (utl_raw.cast_to_varchar2(utl_encode.base64_decode(utl_raw.cast_to_raw('5ZCI5ZCM562+6K6i5o+Q5Lqk'))))  from dual

--select utl_encode.BASE64_EnCODE(CAST('{"namy":"name i have", "items": ["a", "b", "c"]}' AS RAW)) dec  from dual

--hexa string
SELECT utl_raw.cast_to_raw('{"namy":"name i have", "items": ["a", "b", "c"]}') dec  from dual

--hexa string
SELECT utl_encode.base64_decode(utl_encode.base64_encode(utl_raw.cast_to_raw('{"namy":"name i have", "items": ["a", "b", "c"]}'))) dec  from dual


select utl_raw.cast_to_raw('9') from dual
