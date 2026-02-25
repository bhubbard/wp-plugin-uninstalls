#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'pgmb_accounts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pgmb_location_import_last_error_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pgmb_account_refresh_%'"
wp option delete 'pgmb_activated'
wp option delete 'mbp_misc'
wp option delete 'mbp_google_settings'
wp option delete 'mbp_quick_post_settings'
wp option delete 'mbp_review_notifications'
wp option delete 'mbp_welcome_message'
wp option delete 'mbp_request_key'
wp option delete 'mbp_api_key'
wp option delete 'mbp_api_token'
wp option delete 'mbp_site_key'
wp option delete 'mbp_debug_info'
wp option delete 'mbp_dashboard'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_upgrade_running'"

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'pgmb_public_keys'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'mbp_scheduled_google_post'
wp cron event delete 'pgmb_delete_previous_post'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgmb_queued_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgmb_queued_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgmb_queued_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgmb_queued_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mbp_form_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mbp_form_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mbp_form_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mbp_form_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbp_is_autopost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbp_is_autopost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbp_is_autopost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbp_is_autopost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mbp_last_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mbp_last_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mbp_last_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mbp_last_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbp_autopost_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbp_autopost_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbp_autopost_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbp_autopost_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgmb_ap_template_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgmb_ap_template_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgmb_ap_template_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgmb_ap_template_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgmb_autopost_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgmb_autopost_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgmb_autopost_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgmb_autopost_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mbp_autopost_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mbp_autopost_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mbp_autopost_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mbp_autopost_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbp_gutenberg_autopost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbp_gutenberg_autopost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbp_gutenberg_autopost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbp_gutenberg_autopost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgmb_scheduled_autopost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgmb_scheduled_autopost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgmb_scheduled_autopost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgmb_scheduled_autopost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbp_post_publish_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbp_post_publish_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbp_post_publish_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbp_post_publish_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgmb_previous_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgmb_previous_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgmb_previous_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgmb_previous_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mbp_autopost_checked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mbp_autopost_checked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mbp_autopost_checked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mbp_autopost_checked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mbp_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mbp_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mbp_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mbp_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mbp_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mbp_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mbp_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mbp_errors'"
