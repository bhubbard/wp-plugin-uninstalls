#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bookify_notification_settings'
wp option delete 'bookify_company_details'
wp option delete 'bookify_general_settings'
wp option delete 'bookify_onboarding_completed'
wp option delete 'bookify_integration_settings'
wp option delete 'bookify_payment_settings'
wp option delete 'bookify_prev_multi_booking'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_staff_slot_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_staff_slot_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_staff_slot_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_staff_slot_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_customer_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_customer_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_customer_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_customer_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_customer_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_staff_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_staff_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_staff_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_staff_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_staff_profession'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_staff_profession'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_staff_profession'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_staff_profession'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_staff_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_staff_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_staff_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_staff_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_staff_mutiple_booking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_staff_mutiple_booking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_staff_mutiple_booking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_staff_mutiple_booking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_staff_services'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_staff_services'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_staff_services'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_staff_services'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_staff_timeslots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_staff_timeslots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_staff_timeslots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_staff_timeslots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_staff_special_days_timeslots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_staff_special_days_timeslots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_staff_special_days_timeslots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_staff_special_days_timeslots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_staff_holidays'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_staff_holidays'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_staff_holidays'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_staff_holidays'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_staff_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_staff_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_staff_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_staff_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_customer_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_customer_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_customer_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_customer_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_staff_slot_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_staff_slot_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_staff_slot_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_staff_slot_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_staff_schedule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_staff_schedule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_staff_schedule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_staff_schedule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_staff_special_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_staff_special_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_staff_special_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_staff_special_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookify_staff_zoom_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookify_staff_zoom_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookify_staff_zoom_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookify_staff_zoom_uid'"
