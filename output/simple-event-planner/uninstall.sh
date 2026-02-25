#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sep_event_options'
wp option delete 'sep_visual_layout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'add_segment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'add_segment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'add_segment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'add_segment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_start_date_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_start_date_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_start_date_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_start_date_time'"
