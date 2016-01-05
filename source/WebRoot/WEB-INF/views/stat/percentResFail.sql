select s.reply_msg as reason,
       count(s.reply_msg) as count,
       round((ratio_to_report(count(s.reply_msg)) over())*100,3)||'%' as radio
  from request_results s
 group by s.reply_msg
 order by count(s.reply_msg) desc;