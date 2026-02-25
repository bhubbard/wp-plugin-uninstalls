#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_irandargah_settings'

# Delete Transients
wp transient delete 'wc-gateway-irandargah-admin-notice-transient'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'irandargah_transaction_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'irandargah_transaction_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'irandargah_transaction_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'irandargah_transaction_status'"
