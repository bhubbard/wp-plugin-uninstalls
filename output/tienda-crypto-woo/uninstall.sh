#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tiendacrypto_webhook'
wp option delete 'woocommerce_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'checkout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'checkout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'checkout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'checkout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tiendacrypto_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tiendacrypto_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tiendacrypto_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tiendacrypto_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tiendacrypto_response_ipn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tiendacrypto_response_ipn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tiendacrypto_response_ipn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tiendacrypto_response_ipn'"
