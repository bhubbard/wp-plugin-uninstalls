-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mobile_switcher_enabled', 'ms_desktop_template', 'ms_mobile_template', 'ms_tablet_template');

