#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'events_maker_general'
wp option delete 'events_maker_permalinks'
wp option delete 'events_maker_templates'
wp option delete 'events_maker_activated_blogs'
wp option delete 'events_maker_capabilities'
wp option delete 'events_maker_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'event_category_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'event_location_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'event_organizer_%'"
wp option delete 'icl_sitepress_settings'

# Delete Transients
wp transient delete 'em_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_em_calendar_query-%' OR option_name LIKE '_site_transient_em_calendar_query-%'"
wp transient delete 'em_calendar_query'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_recurrence'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_recurrence'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_recurrence'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_recurrence'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_event_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_event_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_event_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_event_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_tickets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_tickets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_tickets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_tickets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_display_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_display_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_display_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_display_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_all_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_all_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_all_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_all_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_occurrence_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_occurrence_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_occurrence_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_occurrence_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_free'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_free'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_free'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_free'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_tickets_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_tickets_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_tickets_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_tickets_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_occurrence_last_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_occurrence_last_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_occurrence_last_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_occurrence_last_date'"
