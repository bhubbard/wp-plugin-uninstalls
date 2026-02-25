-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seasongreets_snowflakes', 'seasongreets_timeout', 'seasongreets_maxstepx', 'seasongreets_maxstepy', 'seasongreets_selected', 'seasongreets_maxtime', 'seasongreets_uri', 'seasongreets_precise', 'seasongreets_flakesize', 'seasongreets_invert', 'seasongreets_homelink');

