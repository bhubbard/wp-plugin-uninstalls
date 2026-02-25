#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_meta_box_event_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_meta_box_event_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_meta_box_event_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_meta_box_event_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_meta_box_event_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_meta_box_event_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_meta_box_event_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_meta_box_event_end'"
