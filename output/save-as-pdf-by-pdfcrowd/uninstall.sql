-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('save_as_pdf_pdfcrowd_error_code', 'save-as-pdf-pdfcrowd', 'save-as-pdf-pdfcrowd_encryption_secret', 'save_as_pdf_pdfcrowd_show_wizard');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('save_as_pdf_pdfcrowd_dismissed_upgrade');
DELETE FROM wp_usermeta WHERE meta_key IN ('save_as_pdf_pdfcrowd_dismissed_upgrade');
DELETE FROM wp_termmeta WHERE meta_key IN ('save_as_pdf_pdfcrowd_dismissed_upgrade');
DELETE FROM wp_commentmeta WHERE meta_key IN ('save_as_pdf_pdfcrowd_dismissed_upgrade');

