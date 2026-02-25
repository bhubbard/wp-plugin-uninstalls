-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wctofb_api', 'wctofb_apikey_success', 'wctofb_runonce', 'wctofb_pg_version', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'wctofb_api_success');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price');

