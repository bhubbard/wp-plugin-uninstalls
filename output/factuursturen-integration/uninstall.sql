-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fsi_api_woocommerce');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fsi_pn_id', '_fsi_sent_date', '_fsi_clientnr');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fsi_pn_id', '_fsi_sent_date', '_fsi_clientnr');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fsi_pn_id', '_fsi_sent_date', '_fsi_clientnr');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fsi_pn_id', '_fsi_sent_date', '_fsi_clientnr');

