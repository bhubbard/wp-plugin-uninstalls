-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_netbilling_is_active', 'wc_netbilling_for_wc_legacy_upgrade', 'wc_netbilling_version', 'wc_netbilling_for_wc_upgraded_to_v2_0_0', '_transient_timeout_foo', 'active_sitewide_plugins', 'woocommerce_tax_based_on', 'woocommerce_default_country', 'sv_wc_apple_pay_cert_path', 'sv_wc_apple_pay_merchant_id', 'woocommerce_calc_shipping', 'foo', 'sv_wc_plugin_wc_versions');
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

