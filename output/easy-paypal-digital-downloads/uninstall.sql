-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpepdd_settingsoptions', 'wpepdd_my_plugin_notice_shown');

