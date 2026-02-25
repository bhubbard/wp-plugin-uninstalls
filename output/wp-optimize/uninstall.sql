-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpo_cache_config', 'pagespeedninja_config', 'far_future_expiration_settings', 'custom_permalink_table', 'wpo_update_version', 'autoptimize_js', 'autoptimize_css', 'autoptimize_html', 'gd_system_last_cache_flush', 'wpo_minify_config', 'wpo_min_disable_on_url', 'updraft_task_manager_dbversion', 'updraft_task_manager_plugins', 'updraftcentral_client_log', 'menu_items', 'allowedthemes', 'active_sitewide_plugins', 'wpo_get_cache_size', 'wpo_get_current_db_size', 'wpo_minify_get_cached_files', 'update_plugins', 'update_themes', 'update_core', 'teamupdraft_random_plugin_indexes', 'teamupdraft_plugin_download_active');
DELETE FROM wp_options WHERE option_name LIKE 'wp-optimize-%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-optimize-mu-%';
DELETE FROM wp_options WHERE option_name LIKE '%_start_onboarding';
DELETE FROM wp_options WHERE option_name LIKE 'teamupdraft_installation_source_%';
DELETE FROM wp_options WHERE option_name LIKE '%_skipped_onboarding';
DELETE FROM wp_options WHERE option_name LIKE '%_completed_onboarding';
DELETE FROM wp_options WHERE option_name LIKE '%_count';
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_info';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('custom_permalink', 'smush-info', 'smush-stats', 'smush-complete', 'smush-marked', 'original-file', 'wpo-webp-conversion-complete', 'wpo-ignores-table-deletion-warning', 'wpo-ignores-post-meta-deletion-warning', 'wpo-ignores-orphaned-relationship-data-deletion-warning', 'wpo-hide-minify-information-notice', 'updraftcentral_login_key', '_wp_attachment_image_alt', '_wp_attachment_backup_sizes', '_wp_page_template', '_edit_lock', 'featured_media_updraftcentral', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('custom_permalink', 'smush-info', 'smush-stats', 'smush-complete', 'smush-marked', 'original-file', 'wpo-webp-conversion-complete', 'wpo-ignores-table-deletion-warning', 'wpo-ignores-post-meta-deletion-warning', 'wpo-ignores-orphaned-relationship-data-deletion-warning', 'wpo-hide-minify-information-notice', 'updraftcentral_login_key', '_wp_attachment_image_alt', '_wp_attachment_backup_sizes', '_wp_page_template', '_edit_lock', 'featured_media_updraftcentral', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('custom_permalink', 'smush-info', 'smush-stats', 'smush-complete', 'smush-marked', 'original-file', 'wpo-webp-conversion-complete', 'wpo-ignores-table-deletion-warning', 'wpo-ignores-post-meta-deletion-warning', 'wpo-ignores-orphaned-relationship-data-deletion-warning', 'wpo-hide-minify-information-notice', 'updraftcentral_login_key', '_wp_attachment_image_alt', '_wp_attachment_backup_sizes', '_wp_page_template', '_edit_lock', 'featured_media_updraftcentral', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('custom_permalink', 'smush-info', 'smush-stats', 'smush-complete', 'smush-marked', 'original-file', 'wpo-webp-conversion-complete', 'wpo-ignores-table-deletion-warning', 'wpo-ignores-post-meta-deletion-warning', 'wpo-ignores-orphaned-relationship-data-deletion-warning', 'wpo-hide-minify-information-notice', 'updraftcentral_login_key', '_wp_attachment_image_alt', '_wp_attachment_backup_sizes', '_wp_page_template', '_edit_lock', 'featured_media_updraftcentral', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_merging_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_merging_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_merging_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_merging_notice';

