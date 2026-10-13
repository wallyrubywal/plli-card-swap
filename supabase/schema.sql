-- Run once in Supabase → SQL Editor.
create table if not exists public.traders (
  id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.traders enable row level security;
-- Everyone can see lists (needed for matching); each person can only write their own.
create policy "lists are public" on public.traders for select using (true);
create policy "insert own list" on public.traders for insert with check (auth.uid() = id);
create policy "update own list" on public.traders for update using (auth.uid() = id) with check (auth.uid() = id);
create policy "delete own list" on public.traders for delete using (auth.uid() = id);
alter publication supabase_realtime add table public.traders;
