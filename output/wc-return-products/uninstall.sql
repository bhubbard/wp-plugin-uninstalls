-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_retured_products', 'wc_retured_reson');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_retured_products', 'wc_retured_reson');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_retured_products', 'wc_retured_reson');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_retured_products', 'wc_retured_reson');

