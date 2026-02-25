#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcblu_option'
wp option delete 'wcblu_general_option'
wp option delete 'wcblu_rules_option'
wp option delete 'wbl_plugin_notice_shown'
wp option delete 'wcblu_where_hear_about_us'
wp option delete 'wcblu_data_submited_in_sendiblue'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wcblu_geo_loc_city'
wp option delete 'wcblu_geo_loc_cntry'
wp option delete 'wcblu_geo_loc_state'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete '_woo_blacklist_users_welcome_screen'
wp transient delete 'wcbfc_failed_order_lock'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbfc_order_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbfc_order_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbfc_order_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbfc_order_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbfc_whitelisted_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbfc_whitelisted_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbfc_whitelisted_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbfc_whitelisted_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcblu_ai_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcblu_ai_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcblu_ai_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcblu_ai_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcblu_ai_threshold'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcblu_ai_threshold'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcblu_ai_threshold'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcblu_ai_threshold'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_wcbfc_order_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_wcbfc_order_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_wcbfc_order_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_wcbfc_order_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbfc_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbfc_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbfc_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbfc_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbfc_score_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbfc_score_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbfc_score_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbfc_score_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_wcbfc_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_wcbfc_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_wcbfc_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_wcbfc_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_wcbfc_score_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_wcbfc_score_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_wcbfc_score_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_wcbfc_score_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Attempt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Attempt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Attempt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Attempt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whitelist_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whitelist_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whitelist_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whitelist_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'First Name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'First Name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'First Name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'First Name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Last Name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Last Name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Last Name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Last Name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'City'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'City'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'City'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'City'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Address 1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Address 1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Address 1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Address 1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Address 2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Address 2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Address 2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Address 2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'State'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'State'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'State'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'State'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WhereUserBanned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WhereUserBanned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WhereUserBanned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WhereUserBanned'"
