CREATE DEFINER=`root`@`localhost` PROCEDURE `update_status`(in mymarks int)
begin
if mymarks>40 then
update child set status='pass' where marks=mymarks;
else
update child set status='fail' where marks=mymarks;
end if;
end