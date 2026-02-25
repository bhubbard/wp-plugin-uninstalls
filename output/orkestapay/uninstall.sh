#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_orkesta_settings'
wp option delete 'woocommerce_orkestapay_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_orkestapay_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_orkestapay_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_orkestapay_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_orkestapay_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_orkestapay_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_orkestapay_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_orkestapay_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_orkestapay_payment_id'"
