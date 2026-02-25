#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dtarot_dev_mode_v1'
wp option delete 'dtarot_review_install_ts_v1'
wp option delete 'dtarot_review_next_ts_v1'
wp option delete 'dtarot_uninstall_feedback_v1'
wp option delete 'dtarot_automation_last_run_at'
wp option delete 'dtarot_automation_last_run'
wp option delete 'rewrite_rules'
wp option delete 'dtarot_calendar_entries'
wp option delete 'dtarot_day_entry_schema'
wp option delete 'dtarot_card_meta_lenormand'
wp option delete 'dtarot_default_meaning_packs_v1'
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_back'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_back'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_back'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_back'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_cards'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_cards'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_cards'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_cards'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dtarot_onboard_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dtarot_onboard_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dtarot_onboard_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dtarot_onboard_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dtarot_onboard_tour_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dtarot_onboard_tour_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dtarot_onboard_tour_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dtarot_onboard_tour_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_system'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_system'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_system'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_system'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_meanings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_meanings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_meanings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_meanings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_pack_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_pack_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_pack_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_pack_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_booking_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_booking_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_booking_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_booking_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_booking_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_booking_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_booking_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_booking_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_booking_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_booking_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_booking_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_booking_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_booking_question'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_booking_question'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_booking_question'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_booking_question'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_booking_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_booking_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_booking_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_booking_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_booking_timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_booking_timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_booking_timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_booking_timezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_booking_reading_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_booking_reading_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_booking_reading_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_booking_reading_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_booking_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_booking_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_booking_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_booking_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_booking_start_utc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_booking_start_utc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_booking_start_utc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_booking_start_utc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_booking_payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_booking_payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_booking_payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_booking_payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_booking_payment_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_booking_payment_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_booking_payment_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_booking_payment_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_booking_payment_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_booking_payment_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_booking_payment_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_booking_payment_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_booking_end_utc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_booking_end_utc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_booking_end_utc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_booking_end_utc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_reading_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_reading_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_reading_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_reading_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_reading_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_reading_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_reading_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_reading_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtarot_reading_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtarot_reading_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtarot_reading_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtarot_reading_icon'"
