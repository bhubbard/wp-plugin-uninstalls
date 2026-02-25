#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_baghera_option_name'
wp option delete 'woocommerce_baghera_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fattura_creata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fattura_creata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fattura_creata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fattura_creata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fattura_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fattura_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fattura_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fattura_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_piva'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_piva'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_piva'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_piva'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_fiscalcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_fiscalcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_fiscalcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_fiscalcode'"
