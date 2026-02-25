#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_from_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_from_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_from_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_from_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_to_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_to_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_to_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_to_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_address'"
