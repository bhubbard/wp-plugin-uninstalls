#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CoinPayments payment complete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CoinPayments payment complete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CoinPayments payment complete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CoinPayments payment complete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Transaction ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Transaction ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Transaction ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Transaction ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Payer first name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Payer first name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Payer first name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Payer first name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Payer last name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Payer last name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Payer last name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Payer last name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Payer email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Payer email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Payer email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Payer email'"
