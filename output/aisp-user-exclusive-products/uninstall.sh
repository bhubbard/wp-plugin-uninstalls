#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'aisp_bulk_products'
wp transient delete 'aisp_bulk_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aisp_exclusive_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aisp_exclusive_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aisp_exclusive_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aisp_exclusive_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aisp_category_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aisp_category_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aisp_category_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aisp_category_users'"
