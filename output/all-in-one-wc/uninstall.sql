-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiow_download_tcpdf_fonts_hook_timestamp', 'aiow_invoicing_fonts_version', 'aiow_invoicing_fonts_version_timestamp', 'aiow_call_for_price_make_all_empty', 'aiow_shipping_left_to_free_info_position_cart', 'aiow_shipping_left_to_free_info_priority_cart', 'aiow_shipping_left_to_free_info_position_mini_cart', 'aiow_shipping_left_to_free_info_priority_mini_cart', 'aiow_shipping_left_to_free_info_position_checkout', 'aiow_shipping_left_to_free_info_priority_checkout', 'aiow_order_minimum_amount_cart_notice_type', 'aiow_order_number_counter_previous_order_date', 'aiow_order_number_counter', 'aiow_order_bulk_regenerate_download_permissions_all_orders');
DELETE FROM wp_options WHERE option_name LIKE '%_time';
DELETE FROM wp_options WHERE option_name LIKE '%_general_font_family';
DELETE FROM wp_options WHERE option_name LIKE '%_general_font_family_fallback';
DELETE FROM wp_options WHERE option_name LIKE '%_create_on';
DELETE FROM wp_options WHERE option_name LIKE '%_numbering_counter';
DELETE FROM wp_options WHERE option_name LIKE '%_numbering_template';
DELETE FROM wp_options WHERE option_name LIKE '%_page_format_custom_width';
DELETE FROM wp_options WHERE option_name LIKE '%_page_format_custom_height';
DELETE FROM wp_options WHERE option_name LIKE '%_page_orientation';
DELETE FROM wp_options WHERE option_name LIKE '%_margin_left';
DELETE FROM wp_options WHERE option_name LIKE '%_margin_top';
DELETE FROM wp_options WHERE option_name LIKE '%_margin_right';
DELETE FROM wp_options WHERE option_name LIKE '%_thankyou_page_template';
DELETE FROM wp_options WHERE option_name LIKE 'aiow_shipping_by_order_amount_min_instance_%';
DELETE FROM wp_options WHERE option_name LIKE 'aiow_shipping_by_order_amount_max_instance_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shipping_country', 'shipping_state', '_customer_user', '_aiow_order_number', '_aiow_order_quantities_min', '_payment_method_title', 'is_customer_note');
DELETE FROM wp_usermeta WHERE meta_key IN ('shipping_country', 'shipping_state', '_customer_user', '_aiow_order_number', '_aiow_order_quantities_min', '_payment_method_title', 'is_customer_note');
DELETE FROM wp_termmeta WHERE meta_key IN ('shipping_country', 'shipping_state', '_customer_user', '_aiow_order_number', '_aiow_order_quantities_min', '_payment_method_title', 'is_customer_note');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shipping_country', 'shipping_state', '_customer_user', '_aiow_order_number', '_aiow_order_quantities_min', '_payment_method_title', 'is_customer_note');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_date';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_number_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_number_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_number_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_number_id';

