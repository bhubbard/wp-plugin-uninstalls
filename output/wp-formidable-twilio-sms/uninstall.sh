#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wfts_formidable_twilio_sms_sender_id'
wp option delete 'wfts_formidable_twilio_sms_password'
wp option delete 'wfts_formidable_twilio_sms_mobile'
wp option delete 'wfts_formidable_twilio_sms_mobile_cc'
wp option delete 'wfts_formidable_twilio_sms_field_id'
wp option delete 'wfts_formidable_twilio_sms_msg'
wp option delete 'wfts_formidable_twilio_sms_msg_owner'
wp option delete 'wfts_formidable_twilio_sms_debug'
wp option delete 'wfts_formidable_twilio_sms_error_log_path'
wp option delete 'wp_formidable_twilio_sms_debug'
wp option delete 'wp_formidable_twilio_sms_error_log_path'
wp option delete 'wp_formidable_twilio_sms_field_id'
wp option delete 'wp_formidable_twilio_sms_sender_id'
wp option delete 'wp_formidable_twilio_sms_password'
wp option delete 'wp_formidable_twilio_sms_mobile'
wp option delete 'wp_formidable_twilio_sms_mobile_cc'
wp option delete 'wp_formidable_twilio_sms_msg'
wp option delete 'wp_formidable_twilio_sms_msg_owner'

