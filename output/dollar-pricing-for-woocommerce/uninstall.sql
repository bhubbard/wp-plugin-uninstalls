-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dollprfo_dolar_kuru', 'dollprfo_kar_yuzdesi', 'dollprfo_batch_total', 'dollprfo_batch_offset');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dolar_alis_fiyati');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dolar_alis_fiyati');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dolar_alis_fiyati');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dolar_alis_fiyati');

