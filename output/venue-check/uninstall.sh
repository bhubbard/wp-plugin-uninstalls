#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_venuecheck_event_offset_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_venuecheck_event_offset_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_venuecheck_event_offset_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_venuecheck_event_offset_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_venuecheck_event_offset_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_venuecheck_event_offset_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_venuecheck_event_offset_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_venuecheck_event_offset_end'"
