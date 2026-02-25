-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpfa_show_own_posts_migrated', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wpfa_network_sites', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vgfa_text_changes', '_elementor_data', 'wpfa_current_site_id', '_wp_page_template', 'vgfa_show_own_posts', 'vgfa_disabled_columns', 'is_wpfa_page', 'vgfa_hidden_elements', 'vgfa_menu');
DELETE FROM wp_usermeta WHERE meta_key IN ('vgfa_text_changes', '_elementor_data', 'wpfa_current_site_id', '_wp_page_template', 'vgfa_show_own_posts', 'vgfa_disabled_columns', 'is_wpfa_page', 'vgfa_hidden_elements', 'vgfa_menu');
DELETE FROM wp_termmeta WHERE meta_key IN ('vgfa_text_changes', '_elementor_data', 'wpfa_current_site_id', '_wp_page_template', 'vgfa_show_own_posts', 'vgfa_disabled_columns', 'is_wpfa_page', 'vgfa_hidden_elements', 'vgfa_menu');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vgfa_text_changes', '_elementor_data', 'wpfa_current_site_id', '_wp_page_template', 'vgfa_show_own_posts', 'vgfa_disabled_columns', 'is_wpfa_page', 'vgfa_hidden_elements', 'vgfa_menu');

