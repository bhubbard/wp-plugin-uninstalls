#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_paylane_settings'
wp option delete 'login_PayLane'
wp option delete 'password_PayLane'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paylane-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paylane-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paylane-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paylane-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paylane-id-sale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paylane-id-sale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paylane-id-sale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paylane-id-sale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paylane-notification-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paylane-notification-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paylane-notification-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paylane-notification-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paylane-notification-timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paylane-notification-timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paylane-notification-timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paylane-notification-timestamp'"
