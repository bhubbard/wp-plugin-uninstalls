#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wnbell_options'
wp option delete 'wnbell_settings'
wp option delete 'wnbell_notif_options'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wnbell_db_version'
wp option delete 'wnbell_change_metakeys_complete'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wnbell_item_name_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wnbell_item_name_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wnbell_item_name_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wnbell_item_name_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnbell_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnbell_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnbell_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnbell_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnbell_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnbell_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnbell_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnbell_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnbell_recipient_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnbell_recipient_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnbell_recipient_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnbell_recipient_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnbell_recipient_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnbell_recipient_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnbell_recipient_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnbell_recipient_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnbell_incremented_once'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnbell_incremented_once'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnbell_incremented_once'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnbell_incremented_once'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnbell_unseen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnbell_unseen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnbell_unseen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnbell_unseen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnbell_notification_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnbell_notification_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnbell_notification_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnbell_notification_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_publish_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_publish_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_publish_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_publish_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnbell_unseen_bbpress_replies'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnbell_unseen_bbpress_replies'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnbell_unseen_bbpress_replies'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnbell_unseen_bbpress_replies'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnbell_bp_last_seen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnbell_bp_last_seen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnbell_bp_last_seen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnbell_bp_last_seen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnbell_seen_notification_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnbell_seen_notification_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnbell_seen_notification_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnbell_seen_notification_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnbell_seen_comments_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnbell_seen_comments_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnbell_seen_comments_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnbell_seen_comments_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnbell_seen_bbp_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnbell_seen_bbp_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnbell_seen_bbp_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnbell_seen_bbp_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnbell_seen_woocommerce_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnbell_seen_woocommerce_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnbell_seen_woocommerce_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnbell_seen_woocommerce_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnbell_unseen_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnbell_unseen_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnbell_unseen_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnbell_unseen_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnbell_woocommerce_updates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnbell_woocommerce_updates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnbell_woocommerce_updates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnbell_woocommerce_updates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnbell_last_seen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnbell_last_seen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnbell_last_seen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnbell_last_seen'"
