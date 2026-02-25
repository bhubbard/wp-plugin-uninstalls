-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sahra_user', 'sahra_pass', 'sahra_domain', 'sahra_input_smstitle', 'sahra_newuser_to_admin_control', 'sahra_newuser_to_admin_no', 'sahra_newuser_to_admin_text', 'sahra_newuser_to_customer_control', 'sahra_newuser_to_customer_text', 'sahra_neworder_to_admin_control', 'sahra_neworder_to_admin_no', 'sahra_neworder_to_admin_text', 'sahra_neworder_to_customer_control', 'sahra_neworder_to_customer_text', 'sahra_newnote1_to_customer_control', 'sahra_newnote1_to_customer_text', 'sahra_newnote2_to_customer_control', 'sahra_newnote2_to_customer_text', 'sahra_order_refund_to_admin_control', 'sahra_order_refund_to_admin_no', 'sahra_order_refund_to_admin_text', 'sahra_product_waitlist1_control', 'sahra_product_waitlist1_text', 'sahra_rehber_control', 'sahra_rehber_groupname', 'sahra_orderstatus_change_customer_control', 'sahra_status', 'sahra_trChar', 'sahra_order_status_query_control', 'sahra_order_status_query_prefix', 'sahra_order_status_query_text', 'sahra_order_status_query_error_text', 'sahra_order_status_query_token', 'sahra_order_status_query_link', 'sahra_newuser_to_admin_json', 'sahra_newuser_to_customer_json', 'sahra_newnote1_to_customer_json', 'sahra_newnote2_to_customer_json', 'sahra_neworder_to_admin_json', 'sahra_neworder_to_customer_json', 'sahra_order_refund_to_admin_json', 'sahra_product_waitlist1_json', 'sahra_tf2_auth_register_control', 'sahra_tf2_auth_register_text', 'sahra_tf2_auth_register_diff', 'sahra_tf2_auth_register_phone_control', 'sahra_tf2_auth_register_phone_warning_text', 'sahra_contact_meta_key', 'sahra_auth_roles', 'sahra_auth_users');
DELETE FROM wp_options WHERE option_name IN ('sahra_auth_roles_control', 'sahra_auth_users_control', 'sahra_phonenumber_zero1', 'sahra_licence_key_to_meta', 'sahra_cf7_success_customer_control', 'sahra_cf7_success_admin_control', 'sahra_cf7_contact_control', 'sahra_cf7_to_admin_no', 'sahra_time_zone');
DELETE FROM wp_options WHERE option_name LIKE 'sahra_order_status_text_%';
DELETE FROM wp_options WHERE option_name LIKE '%_json';
DELETE FROM wp_options WHERE option_name LIKE 'sahra_cf7_list_text_success_customer_%';
DELETE FROM wp_options WHERE option_name LIKE 'sahra_cf7_list_text_success_admin_%';
DELETE FROM wp_options WHERE option_name LIKE 'sahra_cf7_list_contact_%';
DELETE FROM wp_options WHERE option_name LIKE 'sahra_cf7_list_contact_firstname_%';
DELETE FROM wp_options WHERE option_name LIKE 'sahra_cf7_list_contact_lastname_%';
DELETE FROM wp_options WHERE option_name LIKE 'sahra_cf7_list_contact_other_%';
DELETE FROM wp_options WHERE option_name LIKE 'sahra_cf7_list_text_error_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'first_name', 'last_name', '_licence_keys', '_new_order_sahra');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'first_name', 'last_name', '_licence_keys', '_new_order_sahra');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'first_name', 'last_name', '_licence_keys', '_new_order_sahra');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'first_name', 'last_name', '_licence_keys', '_new_order_sahra');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_2fa';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_2fa';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_2fa';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_2fa';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_2fa_time';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_2fa_time';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_2fa_time';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_2fa_time';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_2fa_ref';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_2fa_ref';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_2fa_ref';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_2fa_ref';

