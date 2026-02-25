-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bwf_is_opted', 'active_sitewide_plugins', 'sv_wc_apple_pay_cert_path', 'sv_wc_apple_pay_display_locations', 'woocommerce_default_country', 'sv_wc_apple_pay_enabled', 'sv_wc_apple_pay_test_mode', 'sv_wc_apple_pay_merchant_id', 'sv_wc_apple_pay_payment_gateway', 'sv_wc_apple_pay_button_style', 'woocommerce_calc_shipping', 'bwf_heartbeat_run', 'woocommerce_currency', 'disable_rest_api_options', 'woocs', 'woocommerce_tax_display_cart', 'woofunnels_plugins_info', '_bwf_last_offsets', '_bwf_offset', '_bwf_contacts_last_offsets', '_bwf_contacts_offset', '_bwf_db_table_list', '_bwf_db_upgrade', '_bwf_order_threshold', '_bwf_db_version', '_bwf_contacts_threshold', '_bwf_migrate_contacts_indexing', '_bwf_created_tables', 'bwf_needs_rewrite', 'bwf_gen_config', 'woofunnels_admin_notices', '_bwf_fb_templates', 'woofunnels_optin_ref', 'woocommerce_calc_taxes', 'woocommerce_enable_guest_checkout', 'woofunnels_track_day', 'woofunnel_hide_update_notice', '_bwf_upgrade_1_9_13', 'woofunnels_get_modules', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_upsell_displayed';
DELETE FROM wp_options WHERE option_name LIKE '_xl_transient_%';
DELETE FROM wp_options WHERE option_name LIKE '%_is_active';
DELETE FROM wp_options WHERE option_name LIKE '%_milestone_messages';
DELETE FROM wp_options WHERE option_name LIKE '%_milestone_version';
DELETE FROM wp_options WHERE option_name LIKE 'wf_notification_list_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_xl_nmi_retries', '_cart_hash', '_transaction_id', 'billing_email', '_bwf_in_funnel');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_xl_nmi_retries', '_cart_hash', '_transaction_id', 'billing_email', '_bwf_in_funnel');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_xl_nmi_retries', '_cart_hash', '_transaction_id', 'billing_email', '_bwf_in_funnel');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_xl_nmi_retries', '_cart_hash', '_transaction_id', 'billing_email', '_bwf_in_funnel');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%payment_token';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%payment_token';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%payment_token';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%payment_token';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%customer_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%customer_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%customer_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%customer_id';

