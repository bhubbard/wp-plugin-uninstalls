#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_stripe_pix_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_stripe_pix_secret_key_sandbox'
wp option delete 'woocommerce_stripe_pix_secret_key_production'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_cpf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_cpf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_cpf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_cpf'"
