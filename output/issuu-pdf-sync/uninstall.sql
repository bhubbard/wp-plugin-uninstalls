-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ips_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('issuu_pdf_id', 'issuu_pdf_username', 'issuu_pdf_name', 'disable_auto_upload');
DELETE FROM wp_usermeta WHERE meta_key IN ('issuu_pdf_id', 'issuu_pdf_username', 'issuu_pdf_name', 'disable_auto_upload');
DELETE FROM wp_termmeta WHERE meta_key IN ('issuu_pdf_id', 'issuu_pdf_username', 'issuu_pdf_name', 'disable_auto_upload');
DELETE FROM wp_commentmeta WHERE meta_key IN ('issuu_pdf_id', 'issuu_pdf_username', 'issuu_pdf_name', 'disable_auto_upload');

