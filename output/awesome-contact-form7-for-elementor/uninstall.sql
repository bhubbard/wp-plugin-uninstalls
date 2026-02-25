-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aep_ac7_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_notice_close_date';

