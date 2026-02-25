-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_acceptblue-ach_settings', 'woocommerce_acceptblue-cc_settings', 'woocommerce_force_ssl_checkout', 'woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_acceptblue_xrefnum', '_acceptblue_transaction_charged', 'Accept.blue Payment ID', '_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_acceptblue_xrefnum', '_acceptblue_transaction_charged', 'Accept.blue Payment ID', '_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_acceptblue_xrefnum', '_acceptblue_transaction_charged', 'Accept.blue Payment ID', '_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_acceptblue_xrefnum', '_acceptblue_transaction_charged', 'Accept.blue Payment ID', '_transaction_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_card_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_card_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_card_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_card_id';

