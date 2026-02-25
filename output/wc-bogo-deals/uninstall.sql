-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'acf_first_activated_version', 'acf_version', 'acf_escaped_html_notice_dismissed', 'cptui_post_types', 'cptui_taxonomies', 'acf_escaped_html_log', 'acf_will_escape_html_log', 'acf_deactivated_notice_id');
DELETE FROM wp_options WHERE option_name LIKE 'acf_network_upgrade_needed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', '_acf_changed', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_usermeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', '_acf_changed', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_termmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', '_acf_changed', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', '_acf_changed', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');

