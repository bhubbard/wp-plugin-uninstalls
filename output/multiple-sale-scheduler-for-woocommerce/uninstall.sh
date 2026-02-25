#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'msswc_products_onsale'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_schedule_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_schedule_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_schedule_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_schedule_sales'"
