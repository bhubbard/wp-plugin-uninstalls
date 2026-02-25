#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'global_wc_sms_gateway'
wp option delete 'global_wc_sms_country_code'
wp option delete 'global_wc_sms_enabled_statuses'
wp option delete 'global_wc_sms_on_hold_template'
wp option delete 'global_wc_sms_processing_template'
wp option delete 'global_wc_sms_completed_template'
wp option delete 'global_wc_sms_cancelled_template'
wp option delete 'global_wc_sms_logs'
wp option delete 'global_wc_sms_bulksmsbd_api_key'
wp option delete 'global_wc_sms_bulksmsbd_sender_id'
wp option delete 'global_wc_sms_twilio_account_sid'
wp option delete 'global_wc_sms_twilio_auth_token'
wp option delete 'global_wc_sms_twilio_phone_number'
wp option delete 'global_wc_sms_vonage_api_key'
wp option delete 'global_wc_sms_vonage_api_secret'
wp option delete 'global_wc_sms_vonage_from_number'
wp option delete 'global_wc_sms_msg91_auth_key'
wp option delete 'global_wc_sms_msg91_sender_id'

