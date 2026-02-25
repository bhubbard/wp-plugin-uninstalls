-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boxnow_button_color', 'boxnow_button_text', 'boxnow_partner_id', 'embedded_iframe', 'box_now_display_mode', 'boxnow_locker_not_selected_message', 'boxnow_gps_tracking', 'boxnow_api_url', 'boxnow_client_id', 'boxnow_client_secret', 'boxnow_warehouse_id', 'boxnow_voucher_option', 'boxnow_voucher_email', 'boxnow_allow_returns', 'boxnow_mobile_number', 'boxnow-save-data-addressline1', 'boxnow-save-data-postalcode', 'boxnow-save-data-addressline2', 'boxnow_thankyou_page', '_manual_status_change');
DELETE FROM wp_options WHERE option_name LIKE '_boxnow_parcel_order_id_%';

