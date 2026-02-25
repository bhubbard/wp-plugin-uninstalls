-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wpan_disable_help_tabs', '_wpan_disable_notice_posts', '_wpan_animate_help_tab', '_wpan_hide_default_help_tabs', '_wpan_enable_global_help_tab', '_wpan_global_help_tab_title', '_wpan_global_help_tab_body', '_wpan_global_help_tab_image_id', '_wpan_enable_admin_footer_text', '_wpan_admin_footer_text', '_wpan_admin_footer_icon_image_id', 'acf_version', 'carbon_custom_sidebars', 'update_plugins', 'acf_plugin_updates');
DELETE FROM wp_options WHERE option_name LIKE 'wpan_help_tabs_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpan_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpan_has_seen_help_tab_animation', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpan_has_seen_help_tab_animation', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpan_has_seen_help_tab_animation', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpan_has_seen_help_tab_animation', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');

