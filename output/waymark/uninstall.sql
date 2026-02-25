-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Waymark_Settings', 'waymark_activation_redirect', 'Waymark_Settings_Backup', 'Waymark_Version');
DELETE FROM wp_options WHERE option_name LIKE 'Waymark_Settings_%';

