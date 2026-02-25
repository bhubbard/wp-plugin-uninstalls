-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mmfwc_options_option_name', 'woocommerce_enable_ajax_add_to_cart', 'mmfwc_installed', 'mmfwc_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mmfwc_max', '_mmfwc_min', '_mmfwc_prd_opt_enable');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mmfwc_max', '_mmfwc_min', '_mmfwc_prd_opt_enable');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mmfwc_max', '_mmfwc_min', '_mmfwc_prd_opt_enable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mmfwc_max', '_mmfwc_min', '_mmfwc_prd_opt_enable');

