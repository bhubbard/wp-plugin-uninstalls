-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('screencloud_plugin_settings', 'screencloud_activation_notice');

