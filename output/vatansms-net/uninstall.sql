-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vatansms_api_id', 'vatansms_api_key', 'vatansms_is_login', 'vatansms_sender', 'vatansms_fullname', 'vatansms_kredit', 'vatansms_wc_create_order_to_customer_status', 'vatansms_wc_create_order_to_customer_message', 'vatansms_wc_create_order_to_numbers_status', 'vatansms_wc_create_order_to_numbers', 'vatansms_wc_create_order_to_numbers_message', 'vatansms_wc_cancel_order_to_status', 'vatansms_wc_cancel_order_to_message', 'vatansms_wc_complete_order_to_status', 'vatansms_wc_complete_order_to_message', 'vatansms_wc_prepare_order_to_status', 'vatansms_wc_prepare_order_to_message', 'vatansms_wc_on_hold_order_to_status', 'vatansms_wc_on_hold_order_to_message', 'vatansms_contact_form_id', 'vatansms_auth_after_user_message_status', 'vatansms_auth_after_user_message', 'vatansms_auth_after_user_message_status_admin', 'vatansms_auth_after_user_message_phone_admin', 'vatansms_auth_after_user_message_admin', 'vatansms_contact_form_admin_to_status', 'vatansms_contact_form_admin_to_numbers', 'vatansms_contact_form_admin_to_message', 'vatansms_contact_form_user_to_status', 'vatansms_contact_form_user_to_message', 'vatansms_wpforms_form_id', 'vatansms_wpforms_telephone_field_id', 'vatansms_wpforms_admin_to_status', 'vatansms_wpforms_admin_to_numbers', 'vatansms_wpforms_admin_to_message', 'vatansms_wpforms_user_to_status', 'vatansms_wpforms_user_to_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_phone');

