-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icrmw_basic_enable_booking_tab', 'icrmw_basic_enable_request_tab', 'icrmw_booking_tab_main_label', 'icrmw_tab_adult_title', 'icrmw_tab_children_title', 'icrmw_tab_total_payment_title', 'icrmw_booking_tab_button_title', 'icrmw_request_tab_button_title', 'icrmw_request_tab_main_label', 'icrmw_request_tab_name_title', 'icrmw_request_tab_name_placeholder', 'icrmw_request_tab_email_title', 'icrmw_request_tab_email_placeholder', 'icrmw_request_tab_phone_title', 'icrmw_request_tab_phone_placeholder', 'icrmw_booking_tab_dates_label', 'icrmw_request_tab_dates_label', 'icrmw_request_form_email_body', 'icrmw_request_form_email_recipient', 'icrmw_request_form_email_subject', 'icrmw_plugin_activated', 'icrmw_basic_enable_deposit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_type', '_sold_individually', '_icrmw_price', '_price', '_regular_price', 'icrmw_rent_charge_type', 'icrmw_show_timepicker', 'icrmw_check_in_time', 'icrmw_check_out_type', 'icrmw_check_out_time', 'icrmw_max_adults', 'icrmw_max_childs');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_type', '_sold_individually', '_icrmw_price', '_price', '_regular_price', 'icrmw_rent_charge_type', 'icrmw_show_timepicker', 'icrmw_check_in_time', 'icrmw_check_out_type', 'icrmw_check_out_time', 'icrmw_max_adults', 'icrmw_max_childs');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_type', '_sold_individually', '_icrmw_price', '_price', '_regular_price', 'icrmw_rent_charge_type', 'icrmw_show_timepicker', 'icrmw_check_in_time', 'icrmw_check_out_type', 'icrmw_check_out_time', 'icrmw_max_adults', 'icrmw_max_childs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_type', '_sold_individually', '_icrmw_price', '_price', '_regular_price', 'icrmw_rent_charge_type', 'icrmw_show_timepicker', 'icrmw_check_in_time', 'icrmw_check_out_type', 'icrmw_check_out_time', 'icrmw_max_adults', 'icrmw_max_childs');

