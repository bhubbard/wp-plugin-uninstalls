#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'wpr_bulk_category_removal_last_log'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr_bulk_category_removal_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr_bulk_category_removal_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr_bulk_category_removal_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr_bulk_category_removal_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr_bulk_category_removal_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr_bulk_category_removal_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr_bulk_category_removal_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr_bulk_category_removal_per_page'"
