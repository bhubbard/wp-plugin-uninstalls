#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cookie_notice_options'
wp option delete 'cookie_notice_privacy_consent'
wp option delete 'cookie_notice_version'
wp option delete 'cookie_notice_status'
wp option delete 'cookie_notice_app_analytics'
wp option delete 'cookie_notice_app_blocking'
wp option delete 'cookie_notice_privacy_consent_contactform7'
wp option delete 'cookie_notice_privacy_consent_easydigitaldownloads'
wp option delete 'cookie_notice_privacy_consent_formidableforms'
wp option delete 'cookie_notice_privacy_consent_mailchimp'
wp option delete 'cookie_notice_privacy_consent_woocommerce'
wp option delete 'cookie_notice_privacy_consent_wordpress'
wp option delete 'cookie_notice_privacy_consent_wpforms'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cookie_notice_privacy_consent_%'"

# Delete Transients
wp transient delete 'cookie_notice_app_token'
wp transient delete 'cookie_notice_app_quick_config'
wp transient delete 'cookie_notice_app_subscriptions'
wp transient delete 'cookie_notice_config_update'
wp transient delete 'cn_show_welcome'

# Clear Cron Jobs
wp cron event delete 'cookie_notice_get_app_analytics'
wp cron event delete 'cookie_notice_get_app_config'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pvc_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pvc_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pvc_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pvc_dashboard'"
