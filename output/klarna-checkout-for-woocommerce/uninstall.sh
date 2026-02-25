#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_kco_settings'
wp option delete 'autoptimize_optimize_checkout'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'krokedil_debuglog_kco'
wp option delete 'kco_credentials_error'
wp option delete 'woocommerce_checkout_phone_field'
wp option delete 'woocommerce_smart_coupon_apply_before_tax'

# Delete Transients
wp transient delete 'wc_kco_addons'
wp transient delete 'klarna_hide_banner'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kss_data_%' OR option_name LIKE '_site_transient_kss_data_%'"
wp transient delete 'kustom_checkout_settings_page_config'

# Clear Cron Jobs
wp cron event delete 'kco_wc_punted_notification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_kco_check_terms_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_kco_check_terms_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_kco_check_terms_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_kco_check_terms_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_kco_check_https_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_kco_check_https_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_kco_check_https_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_kco_check_https_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_kco_check_autoptimize_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_kco_check_autoptimize_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_kco_check_autoptimize_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_kco_check_autoptimize_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_kco_check_optimize_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_kco_check_optimize_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_kco_check_optimize_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_kco_check_optimize_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_kco_check_upstream_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_kco_check_upstream_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_kco_check_upstream_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_kco_check_upstream_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_kco_version_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_kco_version_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_kco_version_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_kco_version_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_kco_check_permalinks_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_kco_check_permalinks_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_kco_check_permalinks_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_kco_check_permalinks_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_email'"
