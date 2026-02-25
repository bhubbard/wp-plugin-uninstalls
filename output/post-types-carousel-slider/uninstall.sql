-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ps_setting', 'ps_setting_mousewheel', 'ps_setting_swipe');

