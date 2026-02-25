-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_version', 'glassboxx_wc_apibaseurl', 'glassboxx_wc_active', 'glassboxx_ty_msg', 'glassboxx_wc_id', 'glassboxx_wc_debug', 'woo_multi_currency_params');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gbx_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('gbx_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('gbx_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gbx_sent');

