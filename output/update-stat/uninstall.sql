-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('up_number_of_days', 'up_puzo_cache', 'up_puzo');

