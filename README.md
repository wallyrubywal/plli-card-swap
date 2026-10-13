# PLLI Card Swap

Photocard trading for PLLI (PLAVE fans), PLAVE 5th mini album *Hyperdrive*. Mark the cards you have and want, get matched with other PLLI, and track trades.

## Setup
1. Supabase: create a project, run `supabase/schema.sql` in the SQL Editor.
2. Supabase → Authentication → URL Configuration: set Site URL to your site address (for example `https://<user>.github.io/plli-card-swap/`).
3. Put the Project URL and anon key into `config.js`.
4. GitHub → repo Settings → Pages → deploy from branch `main`, folder `/`.

It is a static site: `index.html` plus `config.js`. No build step.

Card pictures are cropped from the fan-made checklist by @ppusyu_nyangi.
