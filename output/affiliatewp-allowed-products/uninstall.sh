#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'affwp_version'
wp option delete 'affwp_allp_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_affwp_no_allowed_products_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_affwp_no_allowed_products_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_affwp_no_allowed_products_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_affwp_no_allowed_products_dismissed'"
