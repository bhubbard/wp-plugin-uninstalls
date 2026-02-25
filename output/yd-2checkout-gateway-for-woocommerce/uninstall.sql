-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_yd_wc_2co_settings', 'wc_2co-version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yd2co_tnx_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('yd2co_tnx_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('yd2co_tnx_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yd2co_tnx_id');

