#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_force_ssl_checkout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'card_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'card_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'card_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'card_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cvc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cvc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cvc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cvc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
