#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_expiry_date'"
