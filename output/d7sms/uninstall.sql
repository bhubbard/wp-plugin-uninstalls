-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('d7sms_enable_plugin', 'd7sms_sms_gateway', 'd7sms_customer_notification', 'd7sms_active_charsets', 'd7sms_enable_sms_length', 'd7sms_sms_length', 'd7sms_sms_active_send', 'd7sms_checkout_checkbox_value', 'd7sms_checkout_checkbox_text', 'woocommerce_default_country', 'd7sms_message_admin', 'd7sms_admin_phone', 'd7sms_message_generic', 'd7_wpv_vendors_enable_sms', 'd7sms_from_asid', 'd7sms_from_number', 'd7sms_debug_log', 'd7sms_default_sms_user', 'd7sms_default_sms_pwd', 'd7_recently_activated', 'd7_font_awesome_list', 'd7_dashicons_list', 'd7_plugin_fw_panel_wc_default_options_set');
DELETE FROM wp_options WHERE option_name LIKE 'd7sms_message_%';
DELETE FROM wp_options WHERE option_name LIKE 'd7sms_sms_active_send_vendor_%';
DELETE FROM wp_options WHERE option_name LIKE 'd7sms_admin_phone_vendor_%';
DELETE FROM wp_options WHERE option_name LIKE '%_width';
DELETE FROM wp_options WHERE option_name LIKE '%_height';
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blog-cats', '_rewrite', '_label_singular', '_label_plural', '_taxonomy', '_taxonomy_rewrite', '_post_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('blog-cats', '_rewrite', '_label_singular', '_label_plural', '_taxonomy', '_taxonomy_rewrite', '_post_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('blog-cats', '_rewrite', '_label_singular', '_label_plural', '_taxonomy', '_taxonomy_rewrite', '_post_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blog-cats', '_rewrite', '_label_singular', '_label_plural', '_taxonomy', '_taxonomy_rewrite', '_post_type');

