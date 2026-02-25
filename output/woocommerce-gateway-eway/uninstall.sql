-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_db_version', 'woocommerce_eway_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eway_token_cards');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eway_token_cards');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eway_token_cards');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eway_token_cards');

