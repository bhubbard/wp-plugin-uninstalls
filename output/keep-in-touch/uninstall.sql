-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('keep_in_touch_use_anti_robot_page', 'keep_in_touch_use_full_name', 'keep_in_touch_subscription_confirmation_text', 'keep_in_touch_send_empty_digest_message', 'keep_in_touch_empty_digest_message_text', 'keep_in_touch_delivery_weekday', 'keep_in_touch_delivery_time', 'keep_in_touch_header_image_option', 'keep_in_touch_header_image_custom_path');

