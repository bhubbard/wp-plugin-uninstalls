#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Payer beanstream address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Payer beanstream address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Payer beanstream address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Payer beanstream address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Payer first name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Payer first name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Payer first name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Payer first name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Payment type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Payment type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Payment type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Payment type'"
