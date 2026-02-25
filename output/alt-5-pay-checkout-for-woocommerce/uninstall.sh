#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'woocommerce_alt5pay_settings'
wp option delete 'debug_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_vault_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_vault_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_vault_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_vault_ids'"
