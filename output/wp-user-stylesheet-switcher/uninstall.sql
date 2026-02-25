-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_user_stylesheet_switcher_settings', 'widget_wp_user_stylesheet_switcher_widgets');

