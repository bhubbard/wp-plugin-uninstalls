#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'givepayments_secret_key'
wp option delete 'givepayments_settings'
wp option delete 'givepayments_environment'
wp option delete 'givepayments_production_api_key'
wp option delete 'givepayments_sandbox_api_key'
wp option delete 'givepayments_merchant_id'
wp option delete 'givepayments_webhook_set_production'
wp option delete 'givepayments_webhook_set_test'
wp option delete 'givepayments_image_url'
wp option delete 'givepayments_merchant_name'
wp option delete 'givepayments_can_process_money'
wp option delete 'givepayments_order_status'
wp option delete 'woocommerce_givepayments_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_givepayments_payment_initiated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_givepayments_payment_initiated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_givepayments_payment_initiated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_givepayments_payment_initiated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_givepayments_payment_failed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_givepayments_payment_failed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_givepayments_payment_failed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_givepayments_payment_failed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_givepayments_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_givepayments_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_givepayments_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_givepayments_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_givepayments_merchant_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_givepayments_merchant_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_givepayments_merchant_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_givepayments_merchant_name'"
