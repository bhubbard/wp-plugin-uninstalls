#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emv_default_country_select'
wp option delete 'EMV_admin_phone_number'
wp option delete 'emv_enable_automatic_sms'
wp option delete 'emv_enable_vendor_automatic_sms'
wp option delete 'emv_disable_vendor_chat'
wp option delete 'emv_enable_edit_mode'
wp option delete 'EMV_version'
wp option delete 'EMV_install_time'
wp option delete 'emv_run_first_time'
wp option delete 'emv_message_subject'
wp option delete 'emv_message_desc'
wp option delete 'emv_enable_api_edit_mode'
wp option delete 'EMV_active'
wp option delete 'emv_per_page'
wp option delete 'emv_custom_css'
wp option delete 'emv_select_api'
wp option delete 'emv_twilio_account_sid'
wp option delete 'emv_twilio_auth_token'
wp option delete 'emv_twilio_sender_number'
wp option delete 'emv_ultramsg_instance_id'
wp option delete 'emv_ultramsg_auth_token'
wp option delete 'wcfm_endpoints'
wp option delete 'emv_hide_phone_number'
wp option delete 'emv_disable_vendor_number_Forcibly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EMV_phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EMV_phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EMV_phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EMV_phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emv_user_sms_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emv_user_sms_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emv_user_sms_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emv_user_sms_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EMV_current_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EMV_current_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EMV_current_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EMV_current_message'"
