-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wl_entity_type_settings', 'wl_analytics_settings', 'wl_general_settings', '_wl_video_sitemap_generation', '_wl_content_migration__migrated', 'wl_db_version', '_wl_main_ingredient_content_migration__migrated', '_wl_term_content_migration__migrated', '_wl_sync_background_process_started', '_wl_sync_background_process_offset', '_wl_sync_background_process_stage', '_wl_sync_background_process_count', '_wl_sync_background_process_updated', '_wl_sync_background_process_state', 'wpsso_options', 'wl_http_api', '_wl_blog_url', 'wl_mappings', 'wl_webhooks_settings', 'wl_exclude_include_urls_settings', '_wl_dashboard__synchronization', '_wl_events__include_exclude__initial__sent', '_wl_features', '_wl_include_exclude_default_sent', 'wl_option_prefixes', 'wl_advanced_settings', '_wl_activation_redirect', '_wl_entity_service__count', 'wl-key-error-msg', '_wl_installing', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count', '_wl_notices');
DELETE FROM wp_options WHERE option_name LIKE '%started';
DELETE FROM wp_options WHERE option_name LIKE '%offset';
DELETE FROM wp_options WHERE option_name LIKE '%count';
DELETE FROM wp_options WHERE option_name LIKE '%updated';
DELETE FROM wp_options WHERE option_name LIKE '%state';
DELETE FROM wp_options WHERE option_name LIKE '%_children';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('entity_same_as', '_wl_uri', '_wl_name', 'fusion_builder_status', '_elementor_edit_mode', 'wl_source_url', 'wl_entity_type', '_wl_sample_data', 'wl_about_count', 'wl_mentions_count', '_wp_attachment_image_alt', 'thumbnail_id', '_wl_entity_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('entity_same_as', '_wl_uri', '_wl_name', 'fusion_builder_status', '_elementor_edit_mode', 'wl_source_url', 'wl_entity_type', '_wl_sample_data', 'wl_about_count', 'wl_mentions_count', '_wp_attachment_image_alt', 'thumbnail_id', '_wl_entity_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('entity_same_as', '_wl_uri', '_wl_name', 'fusion_builder_status', '_elementor_edit_mode', 'wl_source_url', 'wl_entity_type', '_wl_sample_data', 'wl_about_count', 'wl_mentions_count', '_wp_attachment_image_alt', 'thumbnail_id', '_wl_entity_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('entity_same_as', '_wl_uri', '_wl_name', 'fusion_builder_status', '_elementor_edit_mode', 'wl_source_url', 'wl_entity_type', '_wl_sample_data', 'wl_about_count', 'wl_mentions_count', '_wp_attachment_image_alt', 'thumbnail_id', '_wl_entity_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_count';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_count';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_count';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_count';

