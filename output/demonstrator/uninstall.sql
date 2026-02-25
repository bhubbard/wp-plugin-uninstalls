-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('demonstrator_settings', 'demonstrator_instance_themes');
DELETE FROM wp_options WHERE option_name LIKE 'demonstrator_instance_%';

