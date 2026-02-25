#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ngo_show_events'
wp option delete 'ngo_show_productions'
wp option delete 'ngo_show_concerts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_portal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_portal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_portal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_portal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_feed'"
