-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcf_ca_show_weekly_report_email_notice', 'cartflows_ca_use_new_ui', 'wcf_ca_global_param', 'wcf_ca_excludes_orders', 'cartflows_ca_partner_url_param', 'wcf_ca_all_db_tables_created', 'wcf_ca_version', 'wcar_do_redirect', 'wcar_onboarding_completed', 'wcf_ca_status', 'wcf_ca_cron_run_time', 'wcf_ca_ignore_users', 'wcar_email_admin_on_recovery', 'wcf_ca_auto_delete_coupons', 'wcf_ca_delete_coupons', 'wcf_ca_from_name', 'wcf_ca_from_email', 'wcf_ca_reply_email', 'wcf_ca_send_recovery_report_emails_to_admin', 'wcf_ca_admin_email', 'wcf_ca_zapier_tracking_status', 'wcf_ca_zapier_cart_abandoned_webhook', 'wcf_ca_coupon_expiry', 'wcf_ca_coupon_expiry_unit', 'wcf_ca_coupon_code_status', 'wcf_ca_discount_type', 'wcf_ca_coupon_amount', 'wcf_ca_gdpr_status', 'wcf_ca_gdpr_message', 'wcf_ca_delete_plugin_data', 'wcar_usage_optin', 'cf_analytics_optin', 'allowed_astra_notices', 'bsf_usage_last_displayed_time', 'bsf_usage_migrated', 'bsf_analytics_last_displayed_time', 'nps-survey-cartflows-ca', 'bsf_product_referers', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'wcf_email_body', 'wcf_ca_free_shipping_coupon', 'wcf_ca_individual_use_only', 'wcar_redirect_to_onboarding', 'update_plugins', 'wcf_ca_show_message', 'bsf_analytics_track');
DELETE FROM wp_options WHERE option_name IN ('bsf_usage_track', 'woocommerce_ca_delete_garbage_coupons');
DELETE FROM wp_options WHERE option_name LIKE '%_usage_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time';
DELETE FROM wp_options WHERE option_name LIKE '%_usage_installed_time';
DELETE FROM wp_options WHERE option_name LIKE 'wcar_rollback_versions_%';
DELETE FROM wp_options WHERE option_name LIKE 'wcar_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_state', 'billing_postcode', 'shipping_company', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_state', 'billing_postcode', 'shipping_company', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_state', 'billing_postcode', 'shipping_company', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_state', 'billing_postcode', 'shipping_company', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode');

