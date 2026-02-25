-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdf_thumbnail_generator_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pdf_thumbnail');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pdf_thumbnail');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pdf_thumbnail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pdf_thumbnail');

