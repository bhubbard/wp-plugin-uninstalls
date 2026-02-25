-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbelnt_custom_css', 'wbelnt_custom_js', 'wbelnt_installed_time');
DELETE FROM wp_options WHERE option_name LIKE 'wbelnt_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wbelnt_deactivation_details_%';
DELETE FROM wp_options WHERE option_name LIKE 'wbelnt_deactivation_email_%';
DELETE FROM wp_options WHERE option_name LIKE 'wbelnt_deactivation_main_reason_%';

