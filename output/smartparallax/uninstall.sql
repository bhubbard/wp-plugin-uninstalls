-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_do_activation_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_menu_type';

