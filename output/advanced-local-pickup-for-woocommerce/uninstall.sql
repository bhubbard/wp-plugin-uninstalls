-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pickup_instruction_customize_settings', 'orderStatus', 'woocommerce_email_from_name', 'woocommerce_email_from_address', 'woocommerce_default_country', 'wclp_store_days', 'location_defualt', 'wclp_status_ready_pickup', 'wclp_ready_pickup_status_label_color', 'wclp_ready_pickup_status_label_font_color', 'woocommerce_customer_ready_pickup_order_settings', 'wclp_status_picked_up', 'wclp_pickup_status_label_color', 'wclp_pickup_status_label_font_color', 'woocommerce_customer_pickup_order_settings', 'wclp_processing_additional_content', 'wclp_show_pickup_instruction', 'customizer_pickup_order_settings_enabled', 'customizer_ready_pickup_order_settings_enabled', 'wclp_local_pickup', 'wclp_show_address_email', 'wclp_show_address_order_received', 'wclp_show_address_order_my_account', 'wclp_default_country', 'wclp_default_single_country', 'wclp_default_single_state', 'wclp_default_time_format', 'wclp_store_name', 'wclp_store_address', 'woocommerce_store_address', 'wclp_store_address_2', 'woocommerce_store_address_2', 'wclp_store_city', 'woocommerce_store_city', 'wclp_store_postcode', 'woocommerce_store_postcode', 'wclp_store_instruction', 'wclp_pickup_locations', 'alp_notice_dismiss179', 'woocommerce_email_footer_text', 'alp_notice_ignore');
DELETE FROM wp_options WHERE option_name LIKE '%_order_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_usage_data_selector';
DELETE FROM wp_options WHERE option_name LIKE '%_optin_email_notification';
DELETE FROM wp_options WHERE option_name LIKE '%_enable_usage_data';
DELETE FROM wp_options WHERE option_name LIKE '%_usage_tracker_last_send';

