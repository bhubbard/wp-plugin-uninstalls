#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loginpress_pro_addons'
wp option delete 'loginpress_customization'
wp option delete 'loginpress_setting'
wp option delete 'customize_presets_settings'
wp option delete 'loginpress_limit_login_attempts'
wp option delete 'wpb_sdk_loginpress'
wp option delete 'loginpress_captcha_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'loginpress_hide_login'
wp option delete 'loginpress_social_logins'
wp option delete 'loginpress_active_time'
wp option delete 'loginpress_review_dismiss'
wp option delete 'loginpress_addon_dismiss_1'
wp option delete 'loginpress_addon_active_time'
wp option delete 'loginpress_friday_sale_active_time'
wp option delete 'loginpress_friday_21_sale_dismiss'
wp option delete 'loginpress_appsumo_active_time'
wp option delete 'loginpress_appsumo_dismiss'
wp option delete '_loginpress_optin'
wp option delete 'webarx_mv_wp_login'
wp option delete 'loginpress_pro_license_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpb_sdk_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rdn_fetch_%'"
wp option delete 'wpb_sdk_module_id'
wp option delete 'wpb_sdk_module_slug'
wp option delete 'wpb_api_cache'

# Delete Transients
wp transient delete 'loginpress_api_addons'
wp transient delete 'loginpress_pro_pop_up'
wp transient delete 'loginpress_rdn_fetch_notifications'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rn_last_notification_%' OR option_name LIKE '_site_transient_rn_last_notification_%'"
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loginpress_password_reset_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loginpress_password_reset_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loginpress_password_reset_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loginpress_password_reset_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lp_privacy_policy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lp_privacy_policy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lp_privacy_policy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lp_privacy_policy'"
