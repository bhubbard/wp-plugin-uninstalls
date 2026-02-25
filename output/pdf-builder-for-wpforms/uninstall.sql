-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('automation_dont_show_again', 'rednao_design_mode');
DELETE FROM wp_options WHERE option_name LIKE '%_skip_save';
DELETE FROM wp_options WHERE option_name LIKE '%_enable_log';

