-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('use_default_media_library');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cpt_pdf_attachment%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cpt_pdf_attachment%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cpt_pdf_attachment%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cpt_pdf_attachment%';

