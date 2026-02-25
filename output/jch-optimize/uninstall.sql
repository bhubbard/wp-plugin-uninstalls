-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jch-optimize_settings', 'jch_options', 'jch-optimize_notices');
DELETE FROM wp_options WHERE option_name LIKE 'jch_optimize_state_%';

