-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'elementor_controls_usage', 'wowelements_widgets', 'wowelements_extensions', 'wowelements_google_map_key', 'wowelements_mapbox_access_token', 'wowelements_facebook_app_id', 'wowelements_facebook_app_secret', 'wowelements_google_client_id', 'wowelements_yelp_client_id', 'wowelements_yelp_api_key', 'wowelements_other_settings', 'wowe_compare_products_page_id', 'lcp_enable_magic_copy_btn_specific_section', 'lcp_enable_copy_paste_btn', 'lcp_enable_magic_copy_btn', 'lcp_enable_magic_copy_btn_login_user', 'elementor_viewport_lg', 'elementor_viewport_md', 'wowelements_api_settings', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'wowelements_widget_usage_stats');
DELETE FROM wp_options WHERE option_name LIKE 'wowe_changelog_widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_elementor_template_type', 'wowe-category-image-id', '_wowelements_video_link_meta_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_elementor_template_type', 'wowe-category-image-id', '_wowelements_video_link_meta_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_elementor_template_type', 'wowe-category-image-id', '_wowelements_video_link_meta_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_elementor_template_type', 'wowe-category-image-id', '_wowelements_video_link_meta_key');

