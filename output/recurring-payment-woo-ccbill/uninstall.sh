#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Payer CCBILL email address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Payer CCBILL email address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Payer CCBILL email address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Payer CCBILL email address'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Subscription ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Subscription ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Subscription ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Subscription ID'"
