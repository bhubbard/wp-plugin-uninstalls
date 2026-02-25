#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grsms_sms_provider'
wp option delete 'grsms_kb_user_endpoint'
wp option delete 'grsms_kb_user_id'
wp option delete 'grsms_kb_api_key'
wp option delete 'grsms_kb_api_secret_key'
wp option delete 'grsms_admin_phone_number'
wp option delete 'grsms_twilio_sid'
wp option delete 'grsms_twilio_token'
wp option delete 'grsms_twilio_from'
wp option delete 'grsms_enable_admin_notify'
wp option delete 'grsms_enable_woow_order'
wp option delete 'grsms_woow_order_message'
wp option delete 'grsms_enable_woow_complete'
wp option delete 'grsms_woow_complete_message'
wp option delete 'grsms_enable_woow_proccess'
wp option delete 'grsms_woow_process_message'
wp option delete 'grsms_enable_woow_cancel'
wp option delete 'grsms_woow_cancel_message'
wp option delete 'grsms_enable_woow_refund'
wp option delete 'grsms_woow_refund_message'
wp option delete 'grsms_enable_woow_hold'
wp option delete 'grsms_woow_hold_message'

