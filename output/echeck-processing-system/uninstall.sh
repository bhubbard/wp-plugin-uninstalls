#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'woocommerce_echeckprocessing_echeck_settings'
wp option delete 'my_notifications'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eCheck Processing Reference ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eCheck Processing Reference ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eCheck Processing Reference ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eCheck Processing Reference ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eCheck Processing Transact ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eCheck Processing Transact ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eCheck Processing Transact ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eCheck Processing Transact ID'"
