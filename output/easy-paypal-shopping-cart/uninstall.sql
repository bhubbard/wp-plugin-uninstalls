-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpepsc_settingsoptions', 'wpepsc_my_plugin_notice_shown');

