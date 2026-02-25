-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spe_pdfhandler', '_transient_timeout_simple_pdf_export_posts', 'simple_pdf_export_posts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pdf_export_page_no');
DELETE FROM wp_usermeta WHERE meta_key IN ('pdf_export_page_no');
DELETE FROM wp_termmeta WHERE meta_key IN ('pdf_export_page_no');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pdf_export_page_no');

