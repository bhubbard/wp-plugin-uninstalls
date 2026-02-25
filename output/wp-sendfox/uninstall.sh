#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gb_sf4wp_options'

# Delete Transients
wp transient delete 'gb_sf4wp_api_lists'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sf4wp_send'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sf4wp_send'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sf4wp_send'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sf4wp_send'"
