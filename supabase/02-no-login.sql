-- Run once in Supabase → SQL Editor (after schema.sql). Clears lists not saved for 7 days, every night at 03:00 UTC.
create extension if not exists pg_cron;
select cron.schedule('clear-old-lists', '0 3 * * *', $$delete from public.traders where updated_at < now() - interval '7 days'$$);
