#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbem_locations_enabled'
wp option delete 'dbem_rsvp_enabled'
wp option delete 'dbem_bookings_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_all_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_all_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_all_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_all_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_location_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_location_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_location_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_location_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_rsvp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_rsvp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_rsvp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_rsvp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_id'"
