#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcal_features_last_checked'
wp option delete 'wpcal_db_version'
wp option delete 'wpcal_last_local_task_started_time'
wp option delete 'wpcal_install_version'
wp option delete 'wpcal_version'
wp option delete 'wpcal_last_validate_attempt'
wp option delete 'wpcal_setting_time_format'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcal_setting_%'"
wp option delete 'wpcal_first_activation_redirect'
wp option delete 'wpcal_setting_asset_preloading_is_enabled'
wp option delete 'wpcal_license_auth_info'

# Clear Cron Jobs
wp cron event delete 'wpcal_api_task_cron'
wp cron event delete 'wpcal_local_task_cron'
wp cron event delete 'wpcal_misc_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcal_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcal_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcal_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcal_admin_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcal_admin_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcal_admin_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcal_admin_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcal_admin_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpcal_admin_setting_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpcal_admin_setting_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpcal_admin_setting_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpcal_admin_setting_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcal_user_tz'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcal_user_tz'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcal_user_tz'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcal_user_tz'"
