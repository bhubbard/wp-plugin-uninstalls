-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sl_trans_API_key', 'sl_trans_API_secret', 'sl_trans_ID', 'sl_trans_google_apikey', 'sl_trans_google_prid', 'sl_trans_timing_check', 'sl_trans_type_check', 'sl_trans_tax_check', 'sl_trans_engine');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sl_trans_newPost');
DELETE FROM wp_usermeta WHERE meta_key IN ('sl_trans_newPost');
DELETE FROM wp_termmeta WHERE meta_key IN ('sl_trans_newPost');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sl_trans_newPost');

