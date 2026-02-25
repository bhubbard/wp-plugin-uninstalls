-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mapster_tutorial', 'mapster_default_popup', 'mapster_settings_page', 'mapster_default_image_text', 'mapster_default_header', 'mapster_welcome_message', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'acf_first_activated_version', 'acf_version', 'acf_escaped_html_notice_dismissed', 'cptui_post_types', 'cptui_taxonomies', 'acf_escaped_html_log', 'acf_will_escape_html_log', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'acf_deactivated_notice_id');
DELETE FROM wp_options WHERE option_name LIKE 'acf_network_upgrade_needed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('term_order', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', '_acf_changed', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_usermeta WHERE meta_key IN ('term_order', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', '_acf_changed', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_termmeta WHERE meta_key IN ('term_order', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', '_acf_changed', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_commentmeta WHERE meta_key IN ('term_order', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', '_acf_changed', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_target';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_target';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_target';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_target';

