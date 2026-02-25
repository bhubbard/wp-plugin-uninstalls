-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('youseeme_cryptocurrencies', 'youseeme_ibans');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('youseeme_rate', 'youseeme_crypto', 'youseeme_total', 'youseeme_iban_bank', 'youseeme_iban_total');
DELETE FROM wp_usermeta WHERE meta_key IN ('youseeme_rate', 'youseeme_crypto', 'youseeme_total', 'youseeme_iban_bank', 'youseeme_iban_total');
DELETE FROM wp_termmeta WHERE meta_key IN ('youseeme_rate', 'youseeme_crypto', 'youseeme_total', 'youseeme_iban_bank', 'youseeme_iban_total');
DELETE FROM wp_commentmeta WHERE meta_key IN ('youseeme_rate', 'youseeme_crypto', 'youseeme_total', 'youseeme_iban_bank', 'youseeme_iban_total');

