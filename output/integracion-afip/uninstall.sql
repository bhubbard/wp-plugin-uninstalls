-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc-afip_options');
DELETE FROM wp_options WHERE option_name LIKE 'wc-afip-%';
DELETE FROM wp_options WHERE option_name LIKE '%-notices';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_afip_document_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_afip_document_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_afip_document_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_afip_document_number');

