#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tpul_settings_term_modal_reset_info'
wp option delete 'tpul_settings_general_options'
wp option delete 'tpul_settings_term_modal_options'
wp option delete 'tpul_settings_remote_config_options'
wp option delete 'tpul_settings_term_modal_display_options'
wp option delete 'tpul_settings_term_modal_woo_options'
wp option delete 'tpul_addv_logging'
wp option delete 'tpul_admin_notices'
wp option delete 'tpul_log_db_version'
wp option delete 'tpul_terms_user_state_version'

# Clear Cron Jobs
wp cron event delete 'tpul_weekly_system_check'
wp cron event delete 'tpul_daily_remote_manifest_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tpul_user_accepted_terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tpul_user_accepted_terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tpul_user_accepted_terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tpul_user_accepted_terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tpul_user_acc_for_this_session'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tpul_user_acc_for_this_session'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tpul_user_acc_for_this_session'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tpul_user_acc_for_this_session'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tpul_last_user_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tpul_last_user_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tpul_last_user_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tpul_last_user_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tpul_user_accepted_terms_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tpul_user_accepted_terms_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tpul_user_accepted_terms_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tpul_user_accepted_terms_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tpul_user_accepted_useragent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tpul_user_accepted_useragent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tpul_user_accepted_useragent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tpul_user_accepted_useragent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tpul_visitor_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tpul_visitor_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tpul_visitor_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tpul_visitor_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tpul_user_clientIP'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tpul_user_clientIP'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tpul_user_clientIP'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tpul_user_clientIP'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tpul_user_location_coordinates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tpul_user_location_coordinates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tpul_user_location_coordinates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tpul_user_location_coordinates'"
