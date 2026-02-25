#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tern_wp_event_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tern_wp_event_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tern_wp_event_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tern_wp_event_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tern_wp_event_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tern_wp_event_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tern_wp_event_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tern_wp_event_end_date'"
