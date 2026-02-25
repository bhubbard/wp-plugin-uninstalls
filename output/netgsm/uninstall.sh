#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'netgsm_iys_control'
wp option delete 'netgsm_brandcode_control'
wp option delete 'netgsm_recipient_type'
wp option delete 'netgsm_brandcode_text'
wp option delete 'netgsm_user'
wp option delete 'netgsm_pass'
wp option delete 'netgsm_input_smstitle'
wp option delete 'netgsm_newuser_to_admin_control'
wp option delete 'netgsm_newuser_to_admin_no'
wp option delete 'netgsm_newuser_to_admin_text'
wp option delete 'netgsm_newuser_to_customer_control'
wp option delete 'netgsm_newuser_to_customer_text'
wp option delete 'netgsm_neworder_to_admin_control'
wp option delete 'netgsm_neworder_to_admin_no'
wp option delete 'netgsm_neworder_to_admin_text'
wp option delete 'netgsm_neworder_to_customer_control'
wp option delete 'netgsm_neworder_to_customer_text'
wp option delete 'netgsm_newnote1_to_customer_control'
wp option delete 'netgsm_newnote1_to_customer_text'
wp option delete 'netgsm_newnote2_to_customer_control'
wp option delete 'netgsm_newnote2_to_customer_text'
wp option delete 'netgsm_order_refund_to_admin_control'
wp option delete 'netgsm_order_refund_to_admin_no'
wp option delete 'netgsm_order_refund_to_admin_text'
wp option delete 'netgsm_abandoned_card_sms_admin_control'
wp option delete 'netgsm_abandoned_cart_periyod'
wp option delete 'netgsm_abandoned_cart_smslimit'
wp option delete 'netgsm_abandoned_cart_to_admin_text'
wp option delete 'netgsm_abandoned_cart_to_admin_json'
wp option delete 'netgsm_product_waitlist1_control'
wp option delete 'netgsm_product_waitlist1_text'
wp option delete 'netgsm_orderstatus_change_customer_control'
wp option delete 'netgsm_status'
wp option delete 'netgsm_trChar'
wp option delete 'netgsm_order_status_query_control'
wp option delete 'netgsm_order_status_query_prefix'
wp option delete 'netgsm_order_status_query_text'
wp option delete 'netgsm_order_status_query_error_text'
wp option delete 'netgsm_order_status_query_token'
wp option delete 'netgsm_order_status_query_link'
wp option delete 'netgsm_newuser_to_admin_json'
wp option delete 'netgsm_newuser_to_customer_json'
wp option delete 'netgsm_newnote1_to_customer_json'
wp option delete 'netgsm_newnote2_to_customer_json'
wp option delete 'netgsm_neworder_to_admin_json'
wp option delete 'netgsm_neworder_to_customer_json'
wp option delete 'netgsm_order_refund_to_admin_json'
wp option delete 'netgsm_product_waitlist1_json'
wp option delete 'netgsm_tf2_auth_register_control'
wp option delete 'netgsm_tf2_auth_register_text'
wp option delete 'netgsm_tf2_auth_register_diff'
wp option delete 'netgsm_tf2_cash_on_delivery_control'
wp option delete 'netgsm_tf2_cash_on_delivery_text'
wp option delete 'netgsm_tf2_cash_on_delivery_diff'
wp option delete 'netgsm_tf2_auth_register_phone_control'
wp option delete 'netgsm_tf2_auth_register_phone_warning_text'
wp option delete 'netgsm_contact_meta_key'
wp option delete 'netgsm_auth_roles'
wp option delete 'netgsm_auth_users'
wp option delete 'netgsm_auth_roles_control'
wp option delete 'netgsm_auth_users_control'
wp option delete 'netgsm_phonenumber_zero1'
wp option delete 'netgsm_licence_key_to_meta'
wp option delete 'netgsm_iys_check_text'
wp option delete 'netgsm_iys_check_control'
wp option delete 'netgsm_message'
wp option delete 'netgsm_call'
wp option delete 'netgsm_email'
wp option delete 'netgsm_iys_meta_key'
wp option delete 'netgsm_asistan'
wp option delete 'netgsm_asistan_message'
wp option delete 'netgsm_asistan_messagenumber'
wp option delete 'netgsm_asistan_call'
wp option delete 'netgsm_asistan_callnumber'
wp option delete 'netgsm_asistan_email'
wp option delete 'netgsm_asistan_emailaddress'
wp option delete 'netgsm_asistan_whatsapp'
wp option delete 'netgsm_asistan_whatsappnumber'
wp option delete 'netgsm_asistan_netasistan'
wp option delete 'netgsm_netasistan_appkey'
wp option delete 'netgsm_netasistan_userkey'
wp option delete 'netgsm_netasistan_etiket'
wp option delete 'netgsm_netasistan_token'
wp option delete 'netgsm_netasistan_tokendate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'netgsm_order_status_text_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_json'"
wp option delete 'netgsm_cf7_success_customer_control'
wp option delete 'netgsm_cf7_success_admin_control'
wp option delete 'netgsm_cf7_contact_control'
wp option delete 'netgsm_cf7_to_admin_no'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'netgsm_cf7_list_text_success_customer_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'netgsm_cf7_list_text_success_admin_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'netgsm_cf7_list_contact_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'netgsm_cf7_list_contact_firstname_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'netgsm_cf7_list_contact_lastname_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'netgsm_cf7_list_contact_other_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'netgsm_cf7_list_text_error_%'"
wp option delete 'netgsm_rehber_control'

# Clear Cron Jobs
wp cron event delete 'send_abandoned_cart_sms'

# Direct DB Queries (Fallback)
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'netgsm_kvkk_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'netgsm_kvkk_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'netgsm_kvkk_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'netgsm_kvkk_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_licence_keys'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_licence_keys'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_licence_keys'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_licence_keys'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_order_netgsm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_order_netgsm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_order_netgsm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_order_netgsm'"
