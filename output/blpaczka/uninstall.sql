-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blpaczka_sandbox_mode', 'blpaczka_auth_login', 'blpaczka_auth_key', 'blpaczka_auto_prepaid_insurance', 'blpaczka_fixed_prepaid_insurance', 'blpaczka_auto_cod_insurance', 'blpaczka_fixed_cod_insurance', 'blpaczka_templates', 'blpaczka_package_courier', 'blpaczka_package_weight', 'blpaczka_package_length', 'blpaczka_package_width', 'blpaczka_package_height', 'blpaczka_package_content', 'blpaczka_package_sortable', 'blpaczka_package_no_pickup', 'blpaczka_package_pickup_ready_time', 'blpaczka_package_pickup_close_time', 'blpaczka_sender_name', 'blpaczka_sender_company', 'blpaczka_sender_email', 'blpaczka_sender_street', 'blpaczka_sender_house_no', 'blpaczka_sender_locum_no', 'blpaczka_sender_postal', 'blpaczka_sender_city', 'blpaczka_sender_phone', 'blpaczka_sender_account', 'blpaczka_package_payment');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blpaczka_selected_point', 'BLPACZKA_blpaczka_order_id', 'BLPACZKA_blpaczka_waybill_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('blpaczka_selected_point', 'BLPACZKA_blpaczka_order_id', 'BLPACZKA_blpaczka_waybill_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('blpaczka_selected_point', 'BLPACZKA_blpaczka_order_id', 'BLPACZKA_blpaczka_waybill_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blpaczka_selected_point', 'BLPACZKA_blpaczka_order_id', 'BLPACZKA_blpaczka_waybill_link');

