-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('little_message_lite_emails', 'little_message_lite_sender_email', 'little_message_lite_horizontal_position', 'little_message_lite_vertical_position', 'little_message_lite_horizontal_distance', 'little_message_lite_vertical_distance', 'little_message_lite_tab_text', 'little_message_lite_logo_id', 'little_message_lite_welcome_message', 'little_message_lite_recaptcha_active', 'little_message_lite_recaptcha_version', 'little_message_lite_recaptcha_site_key', 'little_message_lite_recaptcha_secret_key', 'little_message_lite_include_credit', 'little_message_lite_whatsapp', 'little_message_lite_phone', 'little_message_pro_version_notice_status');

