-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wechef_bgcolor', 'wechef_txtcolor', 'wechef_font', 'wechef_id');

