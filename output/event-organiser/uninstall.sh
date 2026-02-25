#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eo_notice'
wp option delete 'eventorganiser_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plm_local_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'polylang'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eo-event-category_%'"
wp option delete 'eventorganiser_admin_notices'
wp option delete 'eventorganiser_version'
wp option delete 'widget_eo_calendar_widget'
wp option delete 'widget_eo_list_widget'

# Delete Transients
wp transient delete 'eo_widget_agenda'
wp transient delete 'eo_widget_calendar'
wp transient delete 'eventorganiser_add_ons'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_check' OR option_name LIKE '_site_transient_%_check'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_check_lock' OR option_name LIKE '_site_transient_%_check_lock'"
wp transient delete 'eo_full_calendar_public'
wp transient delete 'eo_full_calendar_admin'
wp transient delete 'eo_full_calendar_public_priv'
wp transient delete 'eo_is_multi_event_organiser'

# Clear Cron Jobs
wp cron event delete 'eventorganiser_delete_expired'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eofc_time_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eofc_time_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eofc_time_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eofc_time_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eventorganiser_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eventorganiser_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eventorganiser_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eventorganiser_uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eventorganiser_event_schedule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eventorganiser_event_schedule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eventorganiser_event_schedule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eventorganiser_event_schedule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eventorganiser_schedule_start_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eventorganiser_schedule_start_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eventorganiser_schedule_start_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eventorganiser_schedule_start_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eventorganiser_schedule_start_finish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eventorganiser_schedule_start_finish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eventorganiser_schedule_start_finish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eventorganiser_schedule_start_finish'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eventorganiser_schedule_last_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eventorganiser_schedule_last_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eventorganiser_schedule_last_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eventorganiser_schedule_last_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eventorganiser_schedule_last_finish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eventorganiser_schedule_last_finish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eventorganiser_schedule_last_finish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eventorganiser_schedule_last_finish'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eventorganiser_schedule_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eventorganiser_schedule_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eventorganiser_schedule_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eventorganiser_schedule_until'"
