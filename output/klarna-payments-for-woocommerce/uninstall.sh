#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_klarna_payments_settings'
wp option delete 'kp_has_valid_credentials'
wp option delete 'kp_uuid4'
wp option delete 'kp_credentials_error'
wp option delete 'kec_signing_key'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'kec_webhook'
wp option delete 'kp_unavailable_feature_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'kom_settings'
wp option delete 'woocommerce_kco_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'krokedil_support_%'"
wp option delete 'woocommerce_smart_coupon_apply_before_tax'
wp option delete 'krokedil_debuglog_kp'
wp option delete 'kp_plugin_features'
wp option delete 'klarna_acquiring_partner_key'

# Delete Transients
wp transient delete 'klarna_payments_settings_page_config'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_kp_check_permalinks_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_kp_check_permalinks_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_kp_check_permalinks_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_kp_check_permalinks_notice'"
