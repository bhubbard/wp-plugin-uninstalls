-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_display_cart', 'wacv_last_export_customer_emails', 'wacv_params', 'wacv_hide_notice', 'wacv_dismiss_notice', 'wacv_private_key', 'test_log_1', 'test_log_2', 'wacv_time_range', 'wacv_cron_key', 'wacv_check_balance', 'wacv_unsubscribe_endpoint', 'woocommerce_shop_page_id', 'villatheme_hide_admin_toolbar', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wacv_email_settings_new', 'wacv_email_html_edit', 'wacv_background_color', 'wacv_template_used', 'wacv_email_settings', 'billing_country', 'last_name', 'wacv_user_ref', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('wacv_email_settings_new', 'wacv_email_html_edit', 'wacv_background_color', 'wacv_template_used', 'wacv_email_settings', 'billing_country', 'last_name', 'wacv_user_ref', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('wacv_email_settings_new', 'wacv_email_html_edit', 'wacv_background_color', 'wacv_template_used', 'wacv_email_settings', 'billing_country', 'last_name', 'wacv_user_ref', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wacv_email_settings_new', 'wacv_email_html_edit', 'wacv_background_color', 'wacv_template_used', 'wacv_email_settings', 'billing_country', 'last_name', 'wacv_user_ref', 'billing_phone');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';

