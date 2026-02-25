#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_ecrypt_payment_gateway_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecrypt_cid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecrypt_cid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecrypt_cid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecrypt_cid'"
