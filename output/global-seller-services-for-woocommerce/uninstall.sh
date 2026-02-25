#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dr_flush_rewrite_rules_flag'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_digitalriver_settings'
wp option delete 'dr_endpoints_hash'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_enable_shipping_calc'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dr_compliance_%' OR option_name LIKE '_site_transient_dr_compliance_%'"

# Clear Cron Jobs
wp cron event delete 'dr_api_retry'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dr_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dr_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dr_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dr_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dr_checkout_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dr_checkout_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dr_checkout_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dr_checkout_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digitalriver_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digitalriver_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digitalriver_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digitalriver_customer_id'"
