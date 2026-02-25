#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'lpagery_queue_create_post_secret'
wp option delete 'lpagery_database_version'
wp option delete 'lpagery_google_sheet_sync_interval'
wp option delete 'colibri_page_builder_regenerate_tries_count'
wp option delete 'lpagery_sheet_sync_ram_usage'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_suite_oauth_code_%' OR option_name LIKE '_site_transient_suite_oauth_code_%'"

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'lpagery_backfill_attachment_basename'
wp cron event delete 'lpagery_sync_google_sheet'
wp cron event delete 'lpagery_queue_worker_cron_event'
wp cron event delete 'lpagery_trigger_cron_started_syncs'
wp cron event delete 'lpagery_start_sync_for_process'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lpagery_plan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lpagery_plan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lpagery_plan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lpagery_plan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lpagery_replace_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lpagery_replace_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lpagery_replace_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lpagery_replace_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lpagery_update_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lpagery_update_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lpagery_update_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lpagery_update_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lpagery_process_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lpagery_process_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lpagery_process_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lpagery_process_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fifu_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fifu_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fifu_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fifu_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lpagery_page_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lpagery_page_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lpagery_page_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lpagery_page_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lpagery_process'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lpagery_process'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lpagery_process'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lpagery_process'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vcv-pageContent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vcv-pageContent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vcv-pageContent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vcv-pageContent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breakdance_css_file_paths_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breakdance_css_file_paths_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breakdance_css_file_paths_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breakdance_css_file_paths_cache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breakdance_dependency_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breakdance_dependency_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breakdance_dependency_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breakdance_dependency_cache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mfn-builder-preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mfn-builder-preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mfn-builder-preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mfn-builder-preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mfn-page-items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mfn-page-items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mfn-page-items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mfn-page-items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mfn-page-object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mfn-page-object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mfn-page-object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mfn-page-object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bricks_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bricks_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bricks_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bricks_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bricks_page_content_2'"
