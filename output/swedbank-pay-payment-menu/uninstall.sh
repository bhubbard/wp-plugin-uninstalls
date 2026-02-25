#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_payex_checkout_settings'
wp option delete 'woocommerce_tax_display_shop'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'krokedil_support_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sb_refund_prevent_online_refund_%' OR option_name LIKE '_site_transient_sb_refund_prevent_online_refund_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sb_refund_parameters_%' OR option_name LIKE '_site_transient_sb_refund_parameters_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payex_customer_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payex_customer_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payex_customer_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payex_customer_uuid'"
