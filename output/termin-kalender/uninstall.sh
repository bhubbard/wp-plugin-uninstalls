#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'termin_kalender_kategorien'
wp option delete 'termin_kalender_events'
wp option delete 'termin_kalender_options'
wp option delete 'termin_kalender_todo_list_tasks'
wp option delete 'termin_kalender_list_templates'
wp option delete 'termin_kalender_dashicons'
wp option delete 'ter_kal_checkbox_values'
wp option delete 'ter_kal_timed_event_duration'
wp option delete 'ter_kal_termin_basisfelder'
wp option delete 'ter_kal_dashicon_list'
wp option delete 'ter_kal_dashicons'
wp option delete 'ter_kal_lang'
wp option delete 'ter_kal_selected_lable'
wp option delete 'termin_kalender_version'
wp option delete 'termin_kalender_first_run'
wp option delete 'ter_kal_formularfelder'
wp option delete 'ter_kal_kategorie'
wp option delete 'ter_kal_kalender_daten'
wp option delete 'ter_kal_termin_zusatzfelder'
wp option delete 'ter_kal_kategorien'
wp option delete 'ter_kal_kalender_daten_backup'

# Clear Cron Jobs
wp cron event delete 'ter_kal_cleanup_old_event_pages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ter_kal_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ter_kal_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ter_kal_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ter_kal_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ter_kal_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ter_kal_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ter_kal_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ter_kal_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ter_kal_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ter_kal_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ter_kal_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ter_kal_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ter_kal_all_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ter_kal_all_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ter_kal_all_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ter_kal_all_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ter_kal_freq'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ter_kal_freq'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ter_kal_freq'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ter_kal_freq'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ter_kal_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ter_kal_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ter_kal_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ter_kal_until'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ter_kal_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ter_kal_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ter_kal_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ter_kal_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ter_kal_text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ter_kal_text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ter_kal_text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ter_kal_text_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ter_kal_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ter_kal_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ter_kal_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ter_kal_icon'"
