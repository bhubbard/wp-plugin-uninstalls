#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sg_about_page_was_read'
wp option delete 'giveasap_active_integrations'
wp option delete 'sg_giveaway_slug'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'giveasap_settings'
wp option delete 'giveasap_version'
wp option delete 'giveasap_convertkit_custom_fields'
wp option delete 'sg_facebook'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_giveaway_leaderboard_%' OR option_name LIKE '_site_transient_giveaway_leaderboard_%'"

# Clear Cron Jobs
wp cron event delete 'giveasap_has_ended'
wp cron event delete 'giveasap_remind_subscribers'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_import_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_import_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_import_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_import_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'giveasap_schedule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'giveasap_schedule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'giveasap_schedule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'giveasap_schedule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'giveasap_prize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'giveasap_prize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'giveasap_prize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'giveasap_prize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_extra_actions_max_instance_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_extra_actions_max_instance_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_extra_actions_max_instance_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_extra_actions_max_instance_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'giveasap_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'giveasap_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'giveasap_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'giveasap_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'giveasap_extra_entries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'giveasap_extra_entries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'giveasap_extra_entries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'giveasap_extra_entries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'giveasap_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'giveasap_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'giveasap_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'giveasap_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'giveasap_winners'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'giveasap_winners'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'giveasap_winners'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'giveasap_winners'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'giveasap_registered_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'giveasap_registered_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'giveasap_registered_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'giveasap_registered_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'giveasap_registered_entries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'giveasap_registered_entries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'giveasap_registered_entries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'giveasap_registered_entries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'winner_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'winner_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'winner_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'winner_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'giveasap_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'giveasap_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'giveasap_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'giveasap_display'"
