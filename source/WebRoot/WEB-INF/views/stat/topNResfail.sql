select s.calling_id, s.user_name, s.group_name, res_count
  from (select t.calling_id,
               t.user_name,
               t.group_name,
               count(t.calling_id) as res_count
          from request_results t
         where t.result_type <> 1
         group by t.calling_id, t.user_name, t.group_name
         order by count(t.calling_id) desc) s
 where rownum <= 10;