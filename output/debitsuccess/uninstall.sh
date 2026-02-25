#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_debitsuccess_settings'
wp option delete 'woocommerce_force_ssl_checkout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_vault_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_vault_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_vault_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_vault_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_method_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_method_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_method_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_method_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_id'"
