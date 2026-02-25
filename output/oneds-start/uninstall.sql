-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'acf_first_activated_version', 'acf_version', 'cptui_post_types', 'cptui_taxonomies', 'acf_escaped_html_log', 'acf_will_escape_html_log', 'acf_deactivated_notice_id', 'online_users');
DELETE FROM wp_options WHERE option_name LIKE 'acf_network_upgrade_needed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('admin_acf_menu', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', '_acf_changed', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen', 'no_theme_switch', 'admin_dashboard_widgets', 'admin_language_switcher', 'show_welcome_panel');
DELETE FROM wp_usermeta WHERE meta_key IN ('admin_acf_menu', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', '_acf_changed', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen', 'no_theme_switch', 'admin_dashboard_widgets', 'admin_language_switcher', 'show_welcome_panel');
DELETE FROM wp_termmeta WHERE meta_key IN ('admin_acf_menu', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', '_acf_changed', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen', 'no_theme_switch', 'admin_dashboard_widgets', 'admin_language_switcher', 'show_welcome_panel');
DELETE FROM wp_commentmeta WHERE meta_key IN ('admin_acf_menu', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', '_acf_changed', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen', 'no_theme_switch', 'admin_dashboard_widgets', 'admin_language_switcher', 'show_welcome_panel');

