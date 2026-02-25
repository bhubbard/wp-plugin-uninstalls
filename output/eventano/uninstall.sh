#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_total_seats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_total_seats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_total_seats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_total_seats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seat_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seat_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seat_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seat_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
