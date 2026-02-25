#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_event_time_error_%' OR option_name LIKE '_site_transient_event_time_error_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sinqwell_event_door_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sinqwell_event_door_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sinqwell_event_door_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sinqwell_event_door_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sinqwell_event_date_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sinqwell_event_date_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sinqwell_event_date_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sinqwell_event_date_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sinqwell_event_time_tbd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sinqwell_event_time_tbd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sinqwell_event_time_tbd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sinqwell_event_time_tbd'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sinqwell_event_venue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sinqwell_event_venue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sinqwell_event_venue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sinqwell_event_venue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sinqwell_event_ticket_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sinqwell_event_ticket_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sinqwell_event_ticket_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sinqwell_event_ticket_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sinqwell_event_date_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sinqwell_event_date_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sinqwell_event_date_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sinqwell_event_date_end'"
