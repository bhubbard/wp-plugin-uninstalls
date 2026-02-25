#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'HGES_PACKAGING_AVAILABLE'
wp option delete 'HGES_PREF_TRANSP'
wp option delete 'HGES_WORKING_DAYS'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_quantity'"
