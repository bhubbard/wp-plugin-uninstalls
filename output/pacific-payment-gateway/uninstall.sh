#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_shipping_tax_class'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_credentials_valid'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Wybrany paczkomat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Wybrany paczkomat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Wybrany paczkomat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Wybrany paczkomat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paczkomat_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paczkomat_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paczkomat_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paczkomat_key'"
