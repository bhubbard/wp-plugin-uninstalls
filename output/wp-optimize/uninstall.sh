#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpo_cache_config'
wp option delete 'pagespeedninja_config'
wp option delete 'far_future_expiration_settings'
wp option delete 'custom_permalink_table'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-optimize-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-optimize-mu-%'"
wp option delete 'wpo_update_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_onboarding'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'teamupdraft_installation_source_%'"
wp option delete 'autoptimize_js'
wp option delete 'autoptimize_css'
wp option delete 'autoptimize_html'
wp option delete 'gd_system_last_cache_flush'
wp option delete 'wpo_minify_config'
wp option delete 'wpo_min_disable_on_url'
wp option delete 'updraft_task_manager_dbversion'
wp option delete 'updraft_task_manager_plugins'
wp option delete 'updraftcentral_client_log'
wp option delete 'menu_items'
wp option delete 'allowedthemes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_skipped_onboarding'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_completed_onboarding'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'wpo_get_cache_size'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_count' OR option_name LIKE '_site_transient_%_count'"
wp transient delete 'wpo_get_current_db_size'
wp transient delete 'wpo_minify_get_cached_files'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'update_core'
wp transient delete 'teamupdraft_random_plugin_indexes'
wp transient delete 'teamupdraft_plugin_download_active'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_plugin_info' OR option_name LIKE '_site_transient_%_plugin_info'"

# Clear Cron Jobs
wp cron event delete 'wpo_prune_cache_logs'
wp cron event delete 'wpo_page_cache_schedule_preload'
wp cron event delete 'wpo_page_cache_run_preload'
wp cron event delete 'wpo_purge_old_cache'
wp cron event delete 'wpo_smush_clear_backup_images'
wp cron event delete 'wpo_smush_clear_failed_tasks'
wp cron event delete 'process_smush_tasks'
wp cron event delete 'prune_smush_logs'
wp cron event delete 'wpo_prune_404_log'
wp cron event delete 'wpo_cron_event2'
wp cron event delete 'wpo_plugin_cron_tasks'
wp cron event delete 'wpo_minify_purge_old_cache'
wp cron event delete 'updraft_backup'
wp cron event delete 'updraft_backup_database'
wp cron event delete 'wpo_reset_webp_conversion_test_result'
wp cron event delete 'wpo_prune_webp_logs'
wp cron event delete 'wpo_webp_convert_compressed_images'
wp cron event delete 'wpo_reset_stats_counter'
wp cron event delete 'wpo_update_record_count_event'
wp cron event delete 'wpo_weekly_cron_tasks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smush-info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smush-info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smush-info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smush-info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smush-stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smush-stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smush-stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smush-stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smush-complete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smush-complete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smush-complete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smush-complete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smush-marked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smush-marked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smush-marked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smush-marked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'original-file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'original-file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'original-file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'original-file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpo-webp-conversion-complete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpo-webp-conversion-complete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpo-webp-conversion-complete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpo-webp-conversion-complete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpo-ignores-table-deletion-warning'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpo-ignores-table-deletion-warning'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpo-ignores-table-deletion-warning'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpo-ignores-table-deletion-warning'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpo-ignores-post-meta-deletion-warning'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpo-ignores-post-meta-deletion-warning'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpo-ignores-post-meta-deletion-warning'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpo-ignores-post-meta-deletion-warning'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpo-ignores-orphaned-relationship-data-deletion-warning'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpo-ignores-orphaned-relationship-data-deletion-warning'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpo-ignores-orphaned-relationship-data-deletion-warning'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpo-ignores-orphaned-relationship-data-deletion-warning'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpo-hide-minify-information-notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpo-hide-minify-information-notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpo-hide-minify-information-notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpo-hide-minify-information-notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_merging_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_merging_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_merging_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_merging_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updraftcentral_login_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updraftcentral_login_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updraftcentral_login_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updraftcentral_login_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured_media_updraftcentral'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured_media_updraftcentral'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured_media_updraftcentral'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured_media_updraftcentral'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
