select *, 
	MD5(CONCAT(vsource.id,asource.id, ssource.id)) as hash, 
    GREATEST(vsource.updated_ts, asource.updated_ts, ssource.updated_ts) as GREATEST_ts,
    "rule1" as rule
from ( select * from VideoSource) as vsource
join ( select * from AudioSource) as asource
join ( select * from SubTitleSource) as ssource
where vsource.bitrate > 10
having GREATEST_ts > TIMESTAMP("2021-07-30",  "13:10:11");

select *, 
	MD5(CONCAT(vsource.id,asource.id, ssource.id)) as hash, 
    GREATEST(vsource.updated_ts, asource.updated_ts, ssource.updated_ts) as GREATEST_ts,
    "rule1" as rule
from ( select * from VideoSource) as vsource
join ( select * from AudioSource) as asource
join ( select * from SubTitleSource) as ssource
where vsource.bitrate > 10
having GREATEST_ts > TIMESTAMP("2021-07-30",  "13:10:11");