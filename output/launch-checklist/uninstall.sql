-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_launch_checklist_accessibility_config');
DELETE FROM wp_options WHERE option_name LIKE '%_values';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

