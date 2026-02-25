-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('avelon_account_id', 'avelon_api_token', 'woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_avln_cid');
DELETE FROM wp_usermeta WHERE meta_key IN ('_avln_cid');
DELETE FROM wp_termmeta WHERE meta_key IN ('_avln_cid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_avln_cid');

