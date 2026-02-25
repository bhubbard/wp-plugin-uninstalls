-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency_pos', 'sublium_wcs_wizard_progress', 'sublium_wcs_setup_notice_dismissed', 'woocommerce_currency', 'woocs', 'wcs_paypal_rt_enabled_accounts', 'woocommerce_email_from_name', 'woocommerce_email_from_address', 'woocommerce_email_reply_to_address', 'sublium_wcs_email_template_updated', 'woocommerce_myaccount_sublium_subscriptions_endpoint', 'woocommerce_fkwcppcp_paypal_settings', 'woocommerce_queue_flush_rewrite_rules', 'woocommerce_custom_orders_table_enabled', 'sublium_wcs_subscriptions_without_tokens', 'sublium_wcs_recent_gateway_api_errors', 'sublium_wcs_disabled_gateways', 'fkwcppcp_paypal_live_client_id', 'fkwcppcp_paypal_live_secret_key', 'fkwcppcp_paypal_sandbox_client_id', 'fkwcppcp_paypal_sandbox_secret_key', 'woocommerce_tax_round_at_subtotal', 'sublium_wcs_activation_date', 'sublium_wcs_global_block_editor_setting', 'sublium_wcs_menu_status', 'trp_settings', 'sublium_wcs_is_opted_data', 'woocommerce_tax_display_cart', 'sublium_learndash_remove_access_after_failed', 'sublium_learndash_disable_access_removal_on_expiration', 'sublium_memberpress_remove_access_after_failed', 'sublium_tutorlms_remove_access_after_failed', 'sublium_wcm_remove_access_after_failed', 'woocommerce_myaccount_page_id', 'sublium_wcs_normalize', 'sublium_wcs_cron_batch_size', 'sublium_sandbox_admin_notices', 'sublium_gateway_connect_link_fkwcs_stripe');
DELETE FROM wp_options WHERE option_name LIKE '%_expires';
DELETE FROM wp_options WHERE option_name LIKE 'sublium_gateway_connect_link_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sublium_wcs_header_notification', '_sublium_wcs_table_data', 'sublium_wcs_disable_one_time', 'sublium_wcs_excluded_plans', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', 'sublium_churn_date', 'sublium_price_strings', '_wfacp_checkout_fields', '_related_course', '_related_group', '_sublium_wcs_learndash_enrolled_courses_access_counter', '_mepr_membership_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sublium_wcs_header_notification', '_sublium_wcs_table_data', 'sublium_wcs_disable_one_time', 'sublium_wcs_excluded_plans', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', 'sublium_churn_date', 'sublium_price_strings', '_wfacp_checkout_fields', '_related_course', '_related_group', '_sublium_wcs_learndash_enrolled_courses_access_counter', '_mepr_membership_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sublium_wcs_header_notification', '_sublium_wcs_table_data', 'sublium_wcs_disable_one_time', 'sublium_wcs_excluded_plans', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', 'sublium_churn_date', 'sublium_price_strings', '_wfacp_checkout_fields', '_related_course', '_related_group', '_sublium_wcs_learndash_enrolled_courses_access_counter', '_mepr_membership_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sublium_wcs_header_notification', '_sublium_wcs_table_data', 'sublium_wcs_disable_one_time', 'sublium_wcs_excluded_plans', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', 'sublium_churn_date', 'sublium_price_strings', '_wfacp_checkout_fields', '_related_course', '_related_group', '_sublium_wcs_learndash_enrolled_courses_access_counter', '_mepr_membership_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_referrals_disabled';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_referrals_disabled';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_referrals_disabled';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_referrals_disabled';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_access_from';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_access_from';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_access_from';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_access_from';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'learndash_group_enrolled_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'learndash_group_enrolled_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'learndash_group_enrolled_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'learndash_group_enrolled_%';

