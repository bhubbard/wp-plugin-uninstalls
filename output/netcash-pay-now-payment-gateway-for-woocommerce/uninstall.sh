#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_update_failing_payment_method_called'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_update_failing_payment_method_called'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_update_failing_payment_method_called'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_update_failing_payment_method_called'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_your_gateway_customer_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_your_gateway_customer_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_your_gateway_customer_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_your_gateway_customer_token_id'"
