#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pvtracker_utm_sources'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pvtracker_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pvtracker_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pvtracker_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pvtracker_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_view_timestamps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_view_timestamps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_view_timestamps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_view_timestamps'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_add_to_cart_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_add_to_cart_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_add_to_cart_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_add_to_cart_count'"
