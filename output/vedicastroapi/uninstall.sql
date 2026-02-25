-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vedicastro_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_free_product', '_is_pdf_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_free_product', '_is_pdf_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_free_product', '_is_pdf_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_free_product', '_is_pdf_product');

