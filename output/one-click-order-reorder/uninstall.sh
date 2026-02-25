#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ced_ocor_general_settings'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'ced_ocor_attchment_icon'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ced_ocor_basket_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ced_ocor_basket_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ced_ocor_basket_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ced_ocor_basket_info'"
