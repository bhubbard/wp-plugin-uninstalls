#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_force_ssl_checkout'

# Delete Transients
wp transient delete 'fx-admin-notice-openpath-woocommerce'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'OpenPath Subscriber ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'OpenPath Subscriber ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'OpenPath Subscriber ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'OpenPath Subscriber ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Subscriber ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Subscriber ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Subscriber ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Subscriber ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Transaction ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Transaction ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Transaction ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Transaction ID'"
