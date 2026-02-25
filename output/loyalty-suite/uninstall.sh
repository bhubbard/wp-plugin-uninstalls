#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loyalty_suite_account_page_hide'
wp option delete 'loyalty_suite_achievement_style'
wp option delete 'loyalty_suite_challenge_style'
wp option delete 'loyalty_suite_admin_notifications'
wp option delete 'loyalty_suite_notification_new_submission'
wp option delete 'loyalty_suite_rank_style'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_style'"
wp option delete 'loyalty_suite_share_page_id'
wp option delete 'loyalty_suite_account_page_place'
wp option delete 'rewrite_rules'
wp option delete 'loyalty_suite_account_page_name'
wp option delete 'loyalty_suite_account_page_custom'
wp option delete 'loyalty_suite_colors'
wp option delete 'loyalty_suite_account_page_redirect_url'
wp option delete 'loyalty_suite_db_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'loyalty_suite_routes_config'
wp transient delete 'loyalty_suite_routes_visibility'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loyalty_suite_unseen_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loyalty_suite_unseen_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loyalty_suite_unseen_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loyalty_suite_unseen_notifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loyalty-suite-default-page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loyalty-suite-default-page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loyalty-suite-default-page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loyalty-suite-default-page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loyalty-suite-share-page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loyalty-suite-share-page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loyalty-suite-share-page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loyalty-suite-share-page'"
