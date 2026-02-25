-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_barclay_epdq_settings', 'woocommerce_myaccount_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_barclay_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_barclay_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_barclay_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_barclay_%';

