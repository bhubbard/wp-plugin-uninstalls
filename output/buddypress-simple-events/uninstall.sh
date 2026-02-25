#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pp_gapikey'
wp option delete 'pp_skip_google'
wp option delete 'pp_events_display_image'
wp option delete 'pp_events_tab_position'
wp option delete 'pp_events_required'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-latlng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-latlng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-latlng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-latlng'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event-unix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event-unix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event-unix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event-unix'"
