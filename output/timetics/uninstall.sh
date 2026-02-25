#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'timetics_onboard_settings'
wp option delete 'timetics_onboard_setup'
wp option delete 'timetics_settings'
wp option delete 'timetics_demo_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check'"

# Delete Transients
wp transient delete 'timetics_meeting_products_synced'

# Clear Cron Jobs
wp cron event delete 'timetics_booking_clear_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timetics_woocommerce_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timetics_woocommerce_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timetics_woocommerce_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timetics_woocommerce_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%calendar_event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%calendar_event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%calendar_event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%calendar_event'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tt_apointment_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tt_apointment_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tt_apointment_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tt_apointment_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tt_wc_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tt_wc_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tt_wc_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tt_wc_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tt_booking_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tt_booking_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tt_booking_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tt_booking_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timetics_google_auth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timetics_google_auth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timetics_google_auth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timetics_google_auth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timetics_zoom_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timetics_zoom_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timetics_zoom_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timetics_zoom_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timetics_outlook_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timetics_outlook_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timetics_outlook_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timetics_outlook_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timetics_staff_onboard_skip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timetics_staff_onboard_skip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timetics_staff_onboard_skip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timetics_staff_onboard_skip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timetics_meeting_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timetics_meeting_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timetics_meeting_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timetics_meeting_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timetics_google_refresh_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timetics_google_refresh_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timetics_google_refresh_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timetics_google_refresh_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timetics_google_auth_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timetics_google_auth_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timetics_google_auth_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timetics_google_auth_code'"
