#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_new_order_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CCAvenue Tracking ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CCAvenue Tracking ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CCAvenue Tracking ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CCAvenue Tracking ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CCAvenue Bank Ref No'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CCAvenue Bank Ref No'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CCAvenue Bank Ref No'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CCAvenue Bank Ref No'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Payer first name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Payer first name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Payer first name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Payer first name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Payer last name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Payer last name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Payer last name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Payer last name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Payment type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Payment type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Payment type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Payment type'"
