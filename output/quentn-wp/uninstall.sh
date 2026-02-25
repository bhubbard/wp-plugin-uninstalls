#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quentn_member_plugin_notice_dismiss'
wp option delete 'quentn_cookie_notice_dismiss'
wp option delete 'quentn_add_remove_wp_user_from_host'
wp option delete 'quentn_tags_wp_user'
wp option delete 'quentn_auto_login_url'
wp option delete 'quentn_add_log'
wp option delete 'quentn_log_expire_days'
wp option delete 'quentn_db_version'
wp option delete 'quentn_app_key'
wp option delete 'quentn_base_url'
wp option delete 'quentn_client_id'
wp option delete 'quentn_client_secret'
wp option delete 'quentn_elementor_api_data_auto_update_flag'
wp option delete 'quentn_web_tracking_enabled'
wp option delete 'quentn_web_tracking_code'
wp option delete 'active_sitewide_plugins'
wp option delete 'quentn_unique_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elementor_%'"
wp option delete 'quentn_learndash_courses_settings_for_user_roles'
wp option delete 'default_post_edit_rows'
wp option delete 'quentn_web_tracking_consent_method'

# Clear Cron Jobs
wp cron event delete 'quentn_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quentn_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quentn_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quentn_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quentn_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quentn_post_restrict_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quentn_post_restrict_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quentn_post_restrict_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quentn_post_restrict_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quentn_reset_pwd_vu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quentn_reset_pwd_vu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quentn_reset_pwd_vu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quentn_reset_pwd_vu'"
