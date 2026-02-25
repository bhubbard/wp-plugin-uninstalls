-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_more_sorting_enabled', 'woocommerce_version', 'alg_wc_more_sorting_custom_meta_sorting_enabled', 'alg_wc_more_sorting_restore_wc_default_theme', 'alg_wc_more_sorting_restore_wc_default_enabled', 'alg_wc_more_sorting_custom_sorting_enabled', 'alg_wc_more_sorting_rearrange_enabled', 'woocommerce_default_catalog_orderby', 'alg_wc_more_sorting_rearrange_sorting', 'active_sitewide_plugins', 'alg_wc_more_sorting_version', 'alg_wc_more_sorting_rearrange');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_more_sorting_custom_meta_sorting_enabled_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_more_sorting_custom_meta_sorting_meta_key_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_more_sorting_custom_meta_sorting_param_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_more_sorting_custom_meta_sorting_order_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_more_sorting_custom_meta_sorting_title_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_more_sorting_custom_meta_sorting_type_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_more_sorting_custom_meta_sorting_secondary_%';

