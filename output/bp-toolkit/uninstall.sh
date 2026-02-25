#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'block_section'
wp option delete 'bptk_blocks_already_rebuilt'
wp option delete 'suspend_section'
wp option delete 'styling_section'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'report_user_section'
wp option delete 'report_emails_section'
wp option delete 'report_section'

# Delete Transients
wp transient delete 'bptk-admin-notice-activation'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bptk_suspend'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bptk_suspend'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bptk_suspend'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bptk_suspend'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bptk_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bptk_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bptk_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bptk_item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_upheld'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_upheld'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_upheld'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_upheld'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bptk_member_reported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bptk_member_reported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bptk_member_reported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bptk_member_reported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bptk_reported_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bptk_reported_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bptk_reported_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bptk_reported_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bptk_activity_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bptk_activity_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bptk_activity_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bptk_activity_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bptk_report_substantiated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bptk_report_substantiated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bptk_report_substantiated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bptk_report_substantiated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bptk_admin_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bptk_admin_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bptk_admin_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bptk_admin_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bptk_block'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bptk_block'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bptk_block'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bptk_block'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bptk_blocked_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bptk_blocked_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bptk_blocked_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bptk_blocked_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_read'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_read'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_read'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_read'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'automod_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'automod_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'automod_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'automod_status'"
