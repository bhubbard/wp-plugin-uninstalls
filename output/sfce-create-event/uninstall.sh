#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfc_options'
wp option delete 'sfce_event_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fbuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fbuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fbuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fbuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfce_event_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfce_event_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfce_event_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfce_event_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfce_fb_event_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfce_fb_event_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfce_fb_event_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfce_fb_event_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_event_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_event_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_event_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_event_id'"
