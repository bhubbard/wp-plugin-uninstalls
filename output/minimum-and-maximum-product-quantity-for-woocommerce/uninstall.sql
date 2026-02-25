-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_ajax_add_to_cart');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mmqwp_option_enable', '_mmqwp_min', '_mmqwp_max', '_mmqwp_multi_qty');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mmqwp_option_enable', '_mmqwp_min', '_mmqwp_max', '_mmqwp_multi_qty');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mmqwp_option_enable', '_mmqwp_min', '_mmqwp_max', '_mmqwp_multi_qty');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mmqwp_option_enable', '_mmqwp_min', '_mmqwp_max', '_mmqwp_multi_qty');

