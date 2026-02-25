#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_manual_order_version'
wp option delete 'woocommerce_manual_order_roles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_manual_order_%'"
wp option delete 'woocommerce_manual_order_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manual_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manual_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manual_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manual_order'"
