#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mbfw_radio_switch_demo'
wp option delete 'bfwp_org_pro_license_valid'
wp option delete 'mwb_mbfw_is_plugin_enable'
wp option delete 'mwb_mbfw_is_booking_enable'
wp option delete 'mwb_mbfw_disable_book_now'
wp option delete 'mwb_mbfw_is_show_included_service'
wp option delete 'mwb_mbfw_is_show_totals'
wp option delete 'mwb_mbfw_select_language_for_calendar'
wp option delete 'mwb_mbfw_select_first_day_of_week'
wp option delete 'mwb_mbfw_enable_availibility_setting'
wp option delete 'mwb_mbfw_daily_start_time'
wp option delete 'mwb_mbfw_daily_end_time'
wp option delete 'mbfw_enable_tracking'
wp option delete 'wps_bfwp_google_cal_iframe'
wp option delete 'wps_bfwp_general_setting_categ_enable'
wp option delete 'mwb_mbfw_plugin_setting_migrated'
wp option delete 'wps_bfwp_enable_google_cal_booking'
wp option delete 'select_language_for_calendar'
wp option delete 'select_first_day_of_week'
wp option delete 'mwb_booking_settings_options'
wp option delete 'mbfw_radio_reset_license'
wp option delete 'mwb_mbfw_license_key'
wp option delete 'mwb_mbfw_license_check'
wp option delete 'mwb_mbfw_onboarding_data_skipped'
wp option delete 'mwb_mbfw_onboarding_data_sent'
wp option delete 'wps_wgm_notify_new_banner_id'
wp option delete 'wps_wgm_notify_new_banner_image'
wp option delete 'wps_wgm_notify_new_banner_url'
wp option delete 'wps_wgm_notify_hide_baneer_notification'
wp option delete 'active_sitewide_plugins'
wp option delete 'mwb_all_plugins_active'
wp option delete 'check_order_status_mwb'
wp option delete 'mwb_mbfw_enable_location_site'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mwb_mbfw_booking_max_limit_%'"

# Clear Cron Jobs
wp cron event delete 'wps_sync_airbnb_calendars'
wp cron event delete 'wps_wgm_check_for_notification_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_available_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_available_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_available_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_available_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_non_available_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_non_available_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_non_available_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_non_available_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_heading_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_heading_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_heading_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_heading_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_booking_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_booking_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_booking_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_booking_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_is_booking_cost_multiply_people'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_is_booking_cost_multiply_people'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_is_booking_cost_multiply_people'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_is_booking_cost_multiply_people'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_is_booking_cost_multiply_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_is_booking_cost_multiply_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_is_booking_cost_multiply_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_is_booking_cost_multiply_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_is_service_has_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_is_service_has_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_is_service_has_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_is_service_has_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_service_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_service_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_service_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_service_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_is_service_cost_multiply_people'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_is_service_cost_multiply_people'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_is_service_cost_multiply_people'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_is_service_cost_multiply_people'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_is_service_cost_multiply_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_is_service_cost_multiply_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_is_service_cost_multiply_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_is_service_cost_multiply_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_is_service_optional'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_is_service_optional'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_is_service_optional'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_is_service_optional'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_is_service_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_is_service_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_is_service_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_is_service_hidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_calendar_booking_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_calendar_booking_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_calendar_booking_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_calendar_booking_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_calendar_availbilty_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_calendar_availbilty_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_calendar_availbilty_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_calendar_availbilty_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_airbnb_ical_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_airbnb_ical_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_airbnb_ical_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_airbnb_ical_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_booking_default_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_booking_default_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_booking_default_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_booking_default_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wps_global_calendar_form_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wps_global_calendar_form_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wps_global_calendar_form_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wps_global_calendar_form_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wps_calendar_form_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wps_calendar_form_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wps_calendar_form_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wps_calendar_form_heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wps_booking_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wps_booking_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wps_booking_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wps_booking_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ical_data_available_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ical_data_available_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ical_data_available_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ical_data_available_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ical_data_unavailable_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ical_data_unavailable_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ical_data_unavailable_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ical_data_unavailable_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wps_booking_limit_per_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wps_booking_limit_per_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wps_booking_limit_per_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wps_booking_limit_per_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wps_booking_pricing_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wps_booking_pricing_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wps_booking_pricing_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wps_booking_pricing_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_show_additional_cost_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_show_additional_cost_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_show_additional_cost_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_show_additional_cost_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_booking_max_limit_for_hour'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_booking_max_limit_for_hour'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_booking_max_limit_for_hour'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_booking_max_limit_for_hour'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_service_minimum_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_service_minimum_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_service_minimum_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_service_minimum_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_service_maximum_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_service_maximum_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_service_maximum_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_service_maximum_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_short_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_short_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_short_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_short_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_cancellation_allowed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_cancellation_allowed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_cancellation_allowed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_cancellation_allowed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_booking_max_limit_person'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_booking_max_limit_person'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_booking_max_limit_person'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_booking_max_limit_person'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_booking_max_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_booking_max_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_booking_max_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_booking_max_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_booking_criteria'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_booking_criteria'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_booking_criteria'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_booking_criteria'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_mbfw_booking_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_mbfw_booking_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_mbfw_booking_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_mbfw_booking_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_bfwp_order_statuses_to_cancel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_bfwp_order_statuses_to_cancel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_bfwp_order_statuses_to_cancel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_bfwp_order_statuses_to_cancel'"
