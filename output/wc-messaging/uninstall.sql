-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woom_abandoned_cutoff_time', 'woom_abandoned_cart_webhook', 'woom_enable_report_error', 'woom_wa_templates', 'woom_triggers', 'woom_trigger_hooks', 'woom_abandoned_cart_triggers', 'woom_whatsapp_api', 'woom_sent_admin_numbers', 'woom_send_order_notification', 'woom_order_notification_permission', 'woom_whatsapp_number_id', 'woom_abandoned_enable', 'woom_abandoned_auto_delete_coupon', 'wa_system_user_deleted', 'wa-system-user', 'notiqoo_msg_sent_count', 'woom_branding_update', 'nq_business_whatsapp_number', 'woom_widget_link', 'woom_widget_shortcode', 'woom_wb_account_ID', 'woom_opt_in_checkbox_label', 'woom_enable_checkbox_priority', 'woom_validate_phone_number', 'notiqoo_free_updated');
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_coupon_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_coupon_code';
DELETE FROM wp_options WHERE option_name LIKE '%_coupon_discount_type';
DELETE FROM wp_options WHERE option_name LIKE '%_coupon_amount';
DELETE FROM wp_options WHERE option_name LIKE '%_coupon_expiry_duration';
DELETE FROM wp_options WHERE option_name LIKE '%_coupon_individual';
DELETE FROM wp_options WHERE option_name LIKE '%_coupon_auto_apply';
DELETE FROM wp_options WHERE option_name LIKE '%_coupon_expiry_duration_unit';
DELETE FROM wp_options WHERE option_name LIKE '%_template';
DELETE FROM wp_options WHERE option_name LIKE '%_body_params';
DELETE FROM wp_options WHERE option_name LIKE '%_button_params';
DELETE FROM wp_options WHERE option_name LIKE '%_label';
DELETE FROM wp_options WHERE option_name LIKE '%_params';
DELETE FROM wp_options WHERE option_name LIKE '%_header_params';
DELETE FROM wp_options WHERE option_name LIKE '%_attachment_url';

