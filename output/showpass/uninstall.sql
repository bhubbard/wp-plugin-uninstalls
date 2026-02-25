-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('option_use_showpass_beta', 'option_use_showpass_demo', 'option_showpass_access_token', 'option_organization_id', 'option_widget_color', 'option_showpass_default_button_class', 'option_keep_shopping', 'option_show_widget_description', 'option_disable_verify_ssl', 'format_date', 'format_time', 'option_theme_dark');

