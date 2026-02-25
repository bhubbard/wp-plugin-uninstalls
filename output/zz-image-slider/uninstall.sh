#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zzis_items_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zzis_items_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zzis_items_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zzis_items_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zzis_items_total_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zzis_items_total_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zzis_items_total_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zzis_items_total_count'"
