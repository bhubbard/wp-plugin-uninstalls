#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tablesome_api_credentials'
wp option delete 'tablesome_mailchimp_api_key'
wp option delete 'tablesome_mailchimp_api_status'
wp option delete 'tablesome_mailchimp_api_status_message'
wp option delete 'tablesome_notion_api_key'
wp option delete 'tablesome_notion_api_status'
wp option delete 'tablesome_notion_api_status_message'
wp option delete 'workflow_redirection_data'
wp option delete 'tablesome_can_track_events'
wp option delete 'tablesome_oauth_errors'
wp option delete 'tablesome_oauth_error_counts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'tablesome_image_link_migration_v0592'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_registered_datetime'"
wp option delete 'tablesome_opt_in_notices'
wp option delete 'tablesome_version'
wp option delete 'tablesome_upgrades'
wp option delete 'csf_demo_mode'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'tablesome_workflow_nonce'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tablesome_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tablesome_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tablesome_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tablesome_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tablesome_table_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tablesome_table_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tablesome_table_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tablesome_table_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_update_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_update_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_update_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_update_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_update_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_update_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_update_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_update_method'"
