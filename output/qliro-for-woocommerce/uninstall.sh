#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_qliro_one_settings'
wp option delete 'woocommerce_qliro_one_banner_widget_enabled'
wp option delete 'woocommerce_qliro_one_payment_widget_enabled'
wp option delete 'krokedil_debuglog_qliro_one'
wp option delete 'woocommerce_smart_coupon_apply_before_tax'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_qoc_shipping_data_%' OR option_name LIKE '_site_transient_qoc_shipping_data_%'"
wp transient delete 'qliro_checkout_settings_page_config'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_email'"
