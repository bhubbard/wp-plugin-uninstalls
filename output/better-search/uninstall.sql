-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bsearch_db_version', 'bsearch_settings', 'bsearch_show_wizard', 'bsearch_wizard_notice_dismissed', 'wz_posts_custom_tables_ready', 'ald_bsearch_settings', 'better_search_selected_sites', 'bsearch_wizard_completed', 'bsearch_wizard_completed_date', 'bsearch_wizard_current_step', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'bsearch_deactivated_notice', 'bsearch_show_wizard_activation_redirect', 'bsearch_reindex_state', 'bsearch_deactivated_notice_id', 'bsearch_reindex_scheduled', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_video_thumbnail', '_wp_attachment_image_alt', '_seopress_robots_primary_cat');
DELETE FROM wp_usermeta WHERE meta_key IN ('_video_thumbnail', '_wp_attachment_image_alt', '_seopress_robots_primary_cat');
DELETE FROM wp_termmeta WHERE meta_key IN ('_video_thumbnail', '_wp_attachment_image_alt', '_seopress_robots_primary_cat');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_video_thumbnail', '_wp_attachment_image_alt', '_seopress_robots_primary_cat');

