-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_enable_ajax_add_to_cart', 'woocommerce_cart_redirect_after_add');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lc_lpr_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lc_lpr_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lc_lpr_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lc_lpr_data');

