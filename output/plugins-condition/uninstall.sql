-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plg_cond_notify_interval', 'plg_cond_update_date_time');
DELETE FROM wp_options WHERE option_name LIKE 'plg_cond_text_%';

