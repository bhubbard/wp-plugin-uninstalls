-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('timetics_onboard_settings', 'timetics_onboard_setup', 'timetics_settings', 'timetics_demo_data', 'timetics_meeting_products_synced');
DELETE FROM wp_options WHERE option_name LIKE '%__banner_data';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('timetics_woocommerce_notice_dismissed', 'first_name', 'last_name', '_tt_apointment_visibility', '_regular_price', '_price', '_tt_wc_order_id', '_tt_booking_id', 'timetics_google_auth', 'timetics_zoom_token', 'timetics_outlook_token', 'timetics_staff_onboard_skip', 'timetics_meeting_ids', 'timetics_google_refresh_token', 'timetics_google_auth_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('timetics_woocommerce_notice_dismissed', 'first_name', 'last_name', '_tt_apointment_visibility', '_regular_price', '_price', '_tt_wc_order_id', '_tt_booking_id', 'timetics_google_auth', 'timetics_zoom_token', 'timetics_outlook_token', 'timetics_staff_onboard_skip', 'timetics_meeting_ids', 'timetics_google_refresh_token', 'timetics_google_auth_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('timetics_woocommerce_notice_dismissed', 'first_name', 'last_name', '_tt_apointment_visibility', '_regular_price', '_price', '_tt_wc_order_id', '_tt_booking_id', 'timetics_google_auth', 'timetics_zoom_token', 'timetics_outlook_token', 'timetics_staff_onboard_skip', 'timetics_meeting_ids', 'timetics_google_refresh_token', 'timetics_google_auth_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('timetics_woocommerce_notice_dismissed', 'first_name', 'last_name', '_tt_apointment_visibility', '_regular_price', '_price', '_tt_wc_order_id', '_tt_booking_id', 'timetics_google_auth', 'timetics_zoom_token', 'timetics_outlook_token', 'timetics_staff_onboard_skip', 'timetics_meeting_ids', 'timetics_google_refresh_token', 'timetics_google_auth_code');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%calendar_event';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%calendar_event';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%calendar_event';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%calendar_event';

