-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disable_right_click_enabled', 'show_topbar_panel', 'disable_rest_api');

