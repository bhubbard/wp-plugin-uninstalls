#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geo-rss'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'get_geo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'get_geo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'get_geo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'get_geo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo-info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo-info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo-info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo-info'"
