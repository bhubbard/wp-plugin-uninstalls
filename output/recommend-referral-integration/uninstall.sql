-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rcmnd_gso', 'rcmnd_aso');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rcmnd_product_sync', '_rcmnd_product_sync_category', 'rcmnd_conversion_code', 'rcmnd_conversion_ssnid', 'rcmnd_conversion_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rcmnd_product_sync', '_rcmnd_product_sync_category', 'rcmnd_conversion_code', 'rcmnd_conversion_ssnid', 'rcmnd_conversion_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rcmnd_product_sync', '_rcmnd_product_sync_category', 'rcmnd_conversion_code', 'rcmnd_conversion_ssnid', 'rcmnd_conversion_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rcmnd_product_sync', '_rcmnd_product_sync_category', 'rcmnd_conversion_code', 'rcmnd_conversion_ssnid', 'rcmnd_conversion_id');

