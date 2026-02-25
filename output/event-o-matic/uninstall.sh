#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eom_event_slug'
wp option delete 'eom'
wp option delete 'eom_events_per_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eom-address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eom-address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eom-address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eom-address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eom-date-start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eom-date-start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eom-date-start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eom-date-start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eom-place'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eom-place'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eom-place'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eom-place'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eom-date-end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eom-date-end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eom-date-end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eom-date-end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eom-lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eom-lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eom-lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eom-lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eom-lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eom-lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eom-lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eom-lng'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eom-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eom-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eom-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eom-url'"
