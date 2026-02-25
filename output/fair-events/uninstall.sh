#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fair_events_db_version'
wp option delete 'fair_events_slug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_all_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_all_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_all_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_all_day'"
