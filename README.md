# PLLI Card Swap

Photocard trading for PLLI (PLAVE fans), PLAVE 5th mini album *Hyperdrive*. Mark the cards you have and want, get matched with other PLLI, and track trades.

## Setup
1. Supabase: create a project, run `supabase/schema.sql` in the SQL Editor.
2. Supabase → Authentication → Sign In / Providers: turn on "Allow anonymous sign-ins" (no login screen; each browser gets its own list). Then run `supabase/02-no-login.sql` for the 7-day auto-clear.
3. Put the Project URL and anon key into `config.js`.
4. GitHub → repo Settings → Pages → deploy from branch `main`, folder `/`.

It is a static site: `index.html` plus `config.js`. No build step.

Card pictures are cropped from the fan-made checklist by @ppusyu_nyangi.
