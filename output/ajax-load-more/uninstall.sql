-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alm_drop_pluginVersion', 'alm_version', 'alm_settings', '_alm_settings', 'woocommerce_default_catalog_orderby', 'active_sitewide_plugins', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

