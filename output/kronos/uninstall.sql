-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kronos_calendar_categories', 'kronos_calendar_url', 'kronos_abbreviations', 'kronos_state');
DELETE FROM wp_options WHERE option_name LIKE 'kronos_update_cal_%';
DELETE FROM wp_options WHERE option_name LIKE 'kronos_cal_%';

