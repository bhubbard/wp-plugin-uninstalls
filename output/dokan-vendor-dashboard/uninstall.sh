#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dokan_pages'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_calc_shipping'
wp option delete 'dokan_vendor_dashboard_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
