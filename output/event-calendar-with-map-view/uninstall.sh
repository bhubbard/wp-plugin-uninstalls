#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecwmv_default_settings'
wp option delete 'ecwmv_theme_style'
wp option delete 'ecwmv_curr_symbol'
wp option delete 'ecwmv_view_display'
wp option delete 'ecwmv_map_zoom'
wp option delete 'ecwmv_map_center_lat'
wp option delete 'ecwmv_map_center_lng'
wp option delete 'ecwmv_meta_fields'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwmv_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwmv_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwmv_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwmv_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwmv_lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwmv_lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwmv_lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwmv_lng'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwmv_event_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwmv_event_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwmv_event_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwmv_event_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwmv_event_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwmv_event_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwmv_event_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwmv_event_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwmv_event_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwmv_event_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwmv_event_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwmv_event_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwmv_event_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwmv_event_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwmv_event_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwmv_event_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwmv_event_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwmv_event_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwmv_event_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwmv_event_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwmv_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwmv_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwmv_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwmv_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwmv_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwmv_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwmv_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwmv_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwmv_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwmv_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwmv_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwmv_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwmv_organizer_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwmv_organizer_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwmv_organizer_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwmv_organizer_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwmv_organizer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwmv_organizer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwmv_organizer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwmv_organizer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwmv_event_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwmv_event_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwmv_event_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwmv_event_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwmv_organizer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwmv_organizer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwmv_organizer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwmv_organizer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwmv_organizer_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwmv_organizer_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwmv_organizer_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwmv_organizer_website'"
