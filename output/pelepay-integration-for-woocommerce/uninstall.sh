#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_pelepay_failure_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Payer PelePay address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Payer PelePay address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Payer PelePay address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Payer PelePay address'"
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
