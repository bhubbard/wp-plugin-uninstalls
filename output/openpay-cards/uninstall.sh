#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_force_ssl_checkout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_openpay_customer_test_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_openpay_customer_test_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_openpay_customer_test_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_openpay_customer_test_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_openpay_customer_live_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_openpay_customer_live_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_openpay_customer_live_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_openpay_customer_live_id'"
