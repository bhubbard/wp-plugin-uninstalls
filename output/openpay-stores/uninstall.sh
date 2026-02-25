#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_openpay_stores_webhook_id'
wp option delete 'woocommerce_openpay_stores_settings'
wp option delete 'woocommerce_email_header_image'
wp option delete 'woocommerce_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_openpay_customer_sandbox_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_openpay_customer_sandbox_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_openpay_customer_sandbox_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_openpay_customer_sandbox_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_openpay_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_openpay_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_openpay_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_openpay_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_openpay_customer_test_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_openpay_customer_test_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_openpay_customer_test_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_openpay_customer_test_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_openpay_customer_live_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_openpay_customer_live_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_openpay_customer_live_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_openpay_customer_live_id'"
