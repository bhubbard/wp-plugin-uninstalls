#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'store_rules_module_data'
wp option delete 'active_sitewide_plugins'
wp option delete 'wcs_deactivated_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcs_min_max_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcs_min_max_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcs_min_max_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcs_min_max_rules'"
