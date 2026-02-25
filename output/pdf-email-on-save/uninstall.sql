-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdf_email_address', 'pdf_email_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pdf_email_on_save_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pdf_email_on_save_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pdf_email_on_save_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pdf_email_on_save_status');

