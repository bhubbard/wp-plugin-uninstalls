#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'page_dpago_response'
wp option delete 'page_pagodigital_response'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'commerce_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'commerce_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'commerce_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'commerce_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transactionid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transactionid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transactionid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transactionid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_currency'"
