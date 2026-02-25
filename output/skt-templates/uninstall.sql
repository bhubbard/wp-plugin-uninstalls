-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'skt_templates_activation_redirect', 'skt_templates_rules_flushed', 'rewrite_rules', 'sktb_synced_templates', 'sizzify_synced_templates', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'sktb_beta_show_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('skt_templates_ignore_visit_dashboard_notice', '_wp_page_template', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('skt_templates_ignore_visit_dashboard_notice', '_wp_page_template', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('skt_templates_ignore_visit_dashboard_notice', '_wp_page_template', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('skt_templates_ignore_visit_dashboard_notice', '_wp_page_template', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css');

