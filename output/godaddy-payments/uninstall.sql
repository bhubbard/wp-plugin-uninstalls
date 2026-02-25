-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_poynt_webhookSecret', 'godaddy_payments_has_invalid_country_code', 'wc_poynt_appId', 'wc_poynt_serviceId', 'wc_poynt_businessId', 'wc_poynt_storeId', 'wc_poynt_payinperson_terminal_activated', 'woocommerce_poynt-collect_settings', 'woocommerce_poynt_credit_card_settings', 'wc_poynt_webhooksRegistered', 'woocommerce_email_footer_text', 'active_sitewide_plugins', 'woocommerce_tax_based_on', 'woocommerce_default_country', 'sv_wc_apple_pay_cert_path', 'sv_wc_apple_pay_merchant_id', 'woocommerce_calc_shipping', 'sv_wc_plugin_wc_versions');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_is_active';
DELETE FROM wp_options WHERE option_name LIKE '%_milestone_messages';
DELETE FROM wp_options WHERE option_name LIKE '%_milestone_version';

-- Delete Metadata
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
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_migrated';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_migrated';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_migrated';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_migrated';

