-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grsms_sms_provider', 'grsms_kb_user_endpoint', 'grsms_kb_user_id', 'grsms_kb_api_key', 'grsms_kb_api_secret_key', 'grsms_admin_phone_number', 'grsms_twilio_sid', 'grsms_twilio_token', 'grsms_twilio_from', 'grsms_enable_admin_notify', 'grsms_enable_woow_order', 'grsms_woow_order_message', 'grsms_enable_woow_complete', 'grsms_woow_complete_message', 'grsms_enable_woow_proccess', 'grsms_woow_process_message', 'grsms_enable_woow_cancel', 'grsms_woow_cancel_message', 'grsms_enable_woow_refund', 'grsms_woow_refund_message', 'grsms_enable_woow_hold', 'grsms_woow_hold_message');

