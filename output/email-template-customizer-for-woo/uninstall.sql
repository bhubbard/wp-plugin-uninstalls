-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('viwec_email_default_setting', 'viwec_email_update_button', 'viwec_admin_bar_stt', 'viwec_emails_status', 'woocommerce_tax_display_cart', 'villatheme_hide_admin_toolbar', 'woocommerce_email_from_address', 'woocommerce_tax_total_display', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('viwec_email_structure', 'viwec_settings_type', 'viwec_settings_direction', 'viwec_enable_img_for_default_template', 'viwec_img_size_for_default_template', 'viwec_custom_css', 'viwec_setting_rules', 'viwec_admin_note', 'viwec_settings_categories', 'viwec_settings_countries', 'admin_coupons_enabled_for_vendor', 'billing_phone', '_dokan_email_verification_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('viwec_email_structure', 'viwec_settings_type', 'viwec_settings_direction', 'viwec_enable_img_for_default_template', 'viwec_img_size_for_default_template', 'viwec_custom_css', 'viwec_setting_rules', 'viwec_admin_note', 'viwec_settings_categories', 'viwec_settings_countries', 'admin_coupons_enabled_for_vendor', 'billing_phone', '_dokan_email_verification_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('viwec_email_structure', 'viwec_settings_type', 'viwec_settings_direction', 'viwec_enable_img_for_default_template', 'viwec_img_size_for_default_template', 'viwec_custom_css', 'viwec_setting_rules', 'viwec_admin_note', 'viwec_settings_categories', 'viwec_settings_countries', 'admin_coupons_enabled_for_vendor', 'billing_phone', '_dokan_email_verification_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('viwec_email_structure', 'viwec_settings_type', 'viwec_settings_direction', 'viwec_enable_img_for_default_template', 'viwec_img_size_for_default_template', 'viwec_custom_css', 'viwec_setting_rules', 'viwec_admin_note', 'viwec_settings_categories', 'viwec_settings_countries', 'admin_coupons_enabled_for_vendor', 'billing_phone', '_dokan_email_verification_key');

