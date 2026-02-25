#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'goft-wpjm-activated'
wp option delete 'goft-wpjm-error'
wp option delete 'goft-wpjm-samples-installed'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'job_manager_submission_duration'

# Delete Transients
wp transient delete '_goft-rss-feed-chunks'
wp transient delete '_wp_sh_plugin_browser-list-info'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'gofetch_wpjm_importer'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_goft_wpjm_is_external'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_goft_wpjm_is_external'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_goft_wpjm_is_external'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_goft_wpjm_is_external'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bc_screen_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bc_screen_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bc_screen_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bc_screen_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_goft_source_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_goft_source_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_goft_source_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_goft_source_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_goft_wpjm_import_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_goft_wpjm_import_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_goft_wpjm_import_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_goft_wpjm_import_params'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_goft_wpjm_other'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_goft_wpjm_other'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_goft_wpjm_other'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_goft_wpjm_other'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_goft_jobfeed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_goft_jobfeed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_goft_jobfeed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_goft_jobfeed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_goft_external_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_goft_external_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_goft_external_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_goft_external_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_goft_wpjm_original_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_goft_wpjm_original_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_goft_wpjm_original_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_goft_wpjm_original_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_log_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_log_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_log_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_log_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_error_data_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_error_data_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_error_data_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_error_data_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_apply_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_apply_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_apply_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_apply_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_manager_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_manager_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_manager_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_manager_id'"
