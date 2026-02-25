#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_eukapay_settings'

# Delete Transients
wp transient delete 'wc-gateway-eukapay-admin-notice-transient'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eukapay_ipn_nonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eukapay_ipn_nonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eukapay_ipn_nonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eukapay_ipn_nonce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eukapay_transaction_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eukapay_transaction_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eukapay_transaction_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eukapay_transaction_code'"
