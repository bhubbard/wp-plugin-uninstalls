#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'kt_woo_ele_single_template_default'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kt_woo_ele_product_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kt_woo_ele_product_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kt_woo_ele_product_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kt_woo_ele_product_template'"
