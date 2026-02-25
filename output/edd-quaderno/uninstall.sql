-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quaderno_dismiss_review');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_quaderno_tax_code', '_ebook');
DELETE FROM wp_usermeta WHERE meta_key IN ('_quaderno_tax_code', '_ebook');
DELETE FROM wp_termmeta WHERE meta_key IN ('_quaderno_tax_code', '_ebook');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_quaderno_tax_code', '_ebook');

