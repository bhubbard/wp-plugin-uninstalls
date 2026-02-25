#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vatansms_api_id'
wp option delete 'vatansms_api_key'
wp option delete 'vatansms_is_login'
wp option delete 'vatansms_sender'
wp option delete 'vatansms_fullname'
wp option delete 'vatansms_kredit'
wp option delete 'vatansms_wc_create_order_to_customer_status'
wp option delete 'vatansms_wc_create_order_to_customer_message'
wp option delete 'vatansms_wc_create_order_to_numbers_status'
wp option delete 'vatansms_wc_create_order_to_numbers'
wp option delete 'vatansms_wc_create_order_to_numbers_message'
wp option delete 'vatansms_wc_cancel_order_to_status'
wp option delete 'vatansms_wc_cancel_order_to_message'
wp option delete 'vatansms_wc_complete_order_to_status'
wp option delete 'vatansms_wc_complete_order_to_message'
wp option delete 'vatansms_wc_prepare_order_to_status'
wp option delete 'vatansms_wc_prepare_order_to_message'
wp option delete 'vatansms_wc_on_hold_order_to_status'
wp option delete 'vatansms_wc_on_hold_order_to_message'
wp option delete 'vatansms_contact_form_id'
wp option delete 'vatansms_auth_after_user_message_status'
wp option delete 'vatansms_auth_after_user_message'
wp option delete 'vatansms_auth_after_user_message_status_admin'
wp option delete 'vatansms_auth_after_user_message_phone_admin'
wp option delete 'vatansms_auth_after_user_message_admin'
wp option delete 'vatansms_contact_form_admin_to_status'
wp option delete 'vatansms_contact_form_admin_to_numbers'
wp option delete 'vatansms_contact_form_admin_to_message'
wp option delete 'vatansms_contact_form_user_to_status'
wp option delete 'vatansms_contact_form_user_to_message'
wp option delete 'vatansms_wpforms_form_id'
wp option delete 'vatansms_wpforms_telephone_field_id'
wp option delete 'vatansms_wpforms_admin_to_status'
wp option delete 'vatansms_wpforms_admin_to_numbers'
wp option delete 'vatansms_wpforms_admin_to_message'
wp option delete 'vatansms_wpforms_user_to_status'
wp option delete 'vatansms_wpforms_user_to_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_phone'"
