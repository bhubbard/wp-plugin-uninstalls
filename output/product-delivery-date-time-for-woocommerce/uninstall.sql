-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('byconsolewooptt_delivery_holiday_sunday_check', 'byconsolewooptt_delivery_holiday_saturday_check', 'byconsolewooptt_delivery_end_time', 'bycproductavailabilit_no_of_days_open_in_calender', 'byconsolewooptt_delivery_start_time', 'byconsolewooptt_delivery_time_duration', 'byconsolewooptt_product_button_text', 'byconsolewooptt_no_of_days_open_in_calender', 'byconsolewooptt_product_sameday_cutoff_lable');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('byc_enable_for_functions_working');
DELETE FROM wp_usermeta WHERE meta_key IN ('byc_enable_for_functions_working');
DELETE FROM wp_termmeta WHERE meta_key IN ('byc_enable_for_functions_working');
DELETE FROM wp_commentmeta WHERE meta_key IN ('byc_enable_for_functions_working');

