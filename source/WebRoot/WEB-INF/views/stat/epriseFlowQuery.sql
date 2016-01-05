select t.group_name, t.stats_day, t.used_volume
  from volume_stats_by_day t
 where t.stats_day between '2015-10-01' and '2015-10-11'
   and t.group_name like '%abc%';