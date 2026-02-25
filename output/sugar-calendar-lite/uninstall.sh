#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sc_version'
wp option delete 'sc_completed_upgrades'
wp option delete 'sc_et_settings'
wp option delete 'sc_stripe_test_secret'
wp option delete 'sc_stripe_test_publishable'
wp option delete 'sc_stripe_live_secret'
wp option delete 'sc_stripe_live_publishable'
wp option delete 'sc_stripe_connect_account_id'
wp option delete 'sc_ticket_limit_capacity_migrated'
wp option delete 'sc_number_of_events'
wp option delete 'sc_start_of_week'
wp option delete 'sc_date_format'
wp option delete 'sc_time_format'
wp option delete 'sc_day_color_style'
wp option delete 'sc_timezone_convert'
wp option delete 'sc_timezone_type'
wp option delete 'sc_timezone'
wp option delete 'sc_editor_type'
wp option delete 'sc_custom_fields'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sc_%'"
wp option delete 'sc_hide_announcements'
wp option delete 'sugar_calendar_activated_time'
wp option delete 'sugar_calendar_activated'
wp option delete 'sugar_calendar_is_first_activation'
wp option delete 'sc_hand_holding_status'
wp option delete 'active_sitewide_plugins'
wp option delete 'tribe_events_calendar_options'
wp option delete 'sugar_calendar_connect_token'
wp option delete 'sugar_calendar_connect'
wp option delete 'sugar_calendar_source'
wp option delete 'sugar_calendar_version'

# Delete Transients
wp transient delete 'sugar_calendar_just_activated'
wp transient delete 'sugar_calendar_activation_redirect'
wp transient delete 'sugar_calendar_setup_wizard_first_run'
wp transient delete 'sc_migration_tec_custom_fields'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'sugar_calendar_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_date_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_date_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_date_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_date_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_end_date_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_end_date_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_end_date_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_end_date_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_recurring'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_recurring'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_recurring'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_recurring'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_recur_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_recur_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_recur_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_recur_until'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_map_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_map_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_map_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_map_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sugar_calendar_table_orders_active_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sugar_calendar_table_orders_active_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sugar_calendar_table_orders_active_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sugar_calendar_table_orders_active_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sugar_calendar_table_tickets_active_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sugar_calendar_table_tickets_active_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sugar_calendar_table_tickets_active_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sugar_calendar_table_tickets_active_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_day_of_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_day_of_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_day_of_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_day_of_month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_year'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_year'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_year'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_year'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_end_day_of_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_end_day_of_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_end_day_of_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_end_day_of_month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_end_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_end_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_end_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_end_month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_end_year'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_end_year'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_end_year'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_end_year'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_timezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_time_hour'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_time_hour'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_time_hour'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_time_hour'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_time_minute'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_time_minute'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_time_minute'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_time_minute'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_time_am_pm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_time_am_pm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_time_am_pm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_time_am_pm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_end_time_hour'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_end_time_hour'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_end_time_hour'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_end_time_hour'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_end_time_minute'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_end_time_minute'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_end_time_minute'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_end_time_minute'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_end_time_am_pm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_end_time_am_pm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_end_time_am_pm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_end_time_am_pm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_event_end_timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_event_end_timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_event_end_timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_event_end_timezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_all_recurring'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_all_recurring'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_all_recurring'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_all_recurring'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tec_tickets_commerce_event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tec_tickets_commerce_event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tec_tickets_commerce_event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tec_tickets_commerce_event'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tribe_ticket_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tribe_ticket_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tribe_ticket_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tribe_ticket_capacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tec_tickets_commerce_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tec_tickets_commerce_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tec_tickets_commerce_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tec_tickets_commerce_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tec_tickets_commerce_full_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tec_tickets_commerce_full_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tec_tickets_commerce_full_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tec_tickets_commerce_full_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_active_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_active_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_active_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_active_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
