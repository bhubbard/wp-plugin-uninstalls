#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sahra_user'
wp option delete 'sahra_pass'
wp option delete 'sahra_domain'
wp option delete 'sahra_input_smstitle'
wp option delete 'sahra_newuser_to_admin_control'
wp option delete 'sahra_newuser_to_admin_no'
wp option delete 'sahra_newuser_to_admin_text'
wp option delete 'sahra_newuser_to_customer_control'
wp option delete 'sahra_newuser_to_customer_text'
wp option delete 'sahra_neworder_to_admin_control'
wp option delete 'sahra_neworder_to_admin_no'
wp option delete 'sahra_neworder_to_admin_text'
wp option delete 'sahra_neworder_to_customer_control'
wp option delete 'sahra_neworder_to_customer_text'
wp option delete 'sahra_newnote1_to_customer_control'
wp option delete 'sahra_newnote1_to_customer_text'
wp option delete 'sahra_newnote2_to_customer_control'
wp option delete 'sahra_newnote2_to_customer_text'
wp option delete 'sahra_order_refund_to_admin_control'
wp option delete 'sahra_order_refund_to_admin_no'
wp option delete 'sahra_order_refund_to_admin_text'
wp option delete 'sahra_product_waitlist1_control'
wp option delete 'sahra_product_waitlist1_text'
wp option delete 'sahra_rehber_control'
wp option delete 'sahra_rehber_groupname'
wp option delete 'sahra_orderstatus_change_customer_control'
wp option delete 'sahra_status'
wp option delete 'sahra_trChar'
wp option delete 'sahra_order_status_query_control'
wp option delete 'sahra_order_status_query_prefix'
wp option delete 'sahra_order_status_query_text'
wp option delete 'sahra_order_status_query_error_text'
wp option delete 'sahra_order_status_query_token'
wp option delete 'sahra_order_status_query_link'
wp option delete 'sahra_newuser_to_admin_json'
wp option delete 'sahra_newuser_to_customer_json'
wp option delete 'sahra_newnote1_to_customer_json'
wp option delete 'sahra_newnote2_to_customer_json'
wp option delete 'sahra_neworder_to_admin_json'
wp option delete 'sahra_neworder_to_customer_json'
wp option delete 'sahra_order_refund_to_admin_json'
wp option delete 'sahra_product_waitlist1_json'
wp option delete 'sahra_tf2_auth_register_control'
wp option delete 'sahra_tf2_auth_register_text'
wp option delete 'sahra_tf2_auth_register_diff'
wp option delete 'sahra_tf2_auth_register_phone_control'
wp option delete 'sahra_tf2_auth_register_phone_warning_text'
wp option delete 'sahra_contact_meta_key'
wp option delete 'sahra_auth_roles'
wp option delete 'sahra_auth_users'
wp option delete 'sahra_auth_roles_control'
wp option delete 'sahra_auth_users_control'
wp option delete 'sahra_phonenumber_zero1'
wp option delete 'sahra_licence_key_to_meta'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sahra_order_status_text_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_json'"
wp option delete 'sahra_cf7_success_customer_control'
wp option delete 'sahra_cf7_success_admin_control'
wp option delete 'sahra_cf7_contact_control'
wp option delete 'sahra_cf7_to_admin_no'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sahra_cf7_list_text_success_customer_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sahra_cf7_list_text_success_admin_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sahra_cf7_list_contact_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sahra_cf7_list_contact_firstname_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sahra_cf7_list_contact_lastname_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sahra_cf7_list_contact_other_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sahra_cf7_list_text_error_%'"
wp option delete 'sahra_time_zone'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_2fa'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_2fa'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_2fa'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_2fa'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_2fa_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_2fa_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_2fa_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_2fa_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_2fa_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_2fa_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_2fa_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_2fa_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_licence_keys'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_licence_keys'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_licence_keys'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_licence_keys'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_order_sahra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_order_sahra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_order_sahra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_order_sahra'"
