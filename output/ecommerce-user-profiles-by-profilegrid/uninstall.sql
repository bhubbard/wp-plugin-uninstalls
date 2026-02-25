-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pg_woo_activation_redirect', 'pg_redirect_to_group_page', 'active_sitewide_plugins', 'pm_show_woocommerce_plugin_popup', 'pm_show_woocommerce_check_core_plugin_popup');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('total_sales', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('total_sales', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('total_sales', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('total_sales', 'rating');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_country';

