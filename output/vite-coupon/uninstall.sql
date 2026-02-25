-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'health-check-allowed-plugins', 'woocommerce_prices_include_tax', '_vt_ac', 'apps_bd_ups', 'vc_addons', 'wc_admin_show_legacy_coupon_menu', 'woocommerce_enable_coupons');
DELETE FROM wp_options WHERE option_name LIKE 'apbd_prov_%';
DELETE FROM wp_options WHERE option_name LIKE '%_addons';
DELETE FROM wp_options WHERE option_name LIKE '%_installed';
DELETE FROM wp_options WHERE option_name LIKE 'dismissed_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cogs_total_value');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cogs_total_value');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cogs_total_value');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cogs_total_value');

