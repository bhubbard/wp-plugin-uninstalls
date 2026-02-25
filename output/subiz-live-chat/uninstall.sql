-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('subiz_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_last_submit_at';
DELETE FROM wp_options WHERE option_name LIKE '%enabled';

