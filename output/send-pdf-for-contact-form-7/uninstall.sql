-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcf7pdf_path_temp', 'wpcf7pdf_version', 'wpcf7pdf_admin_notices', 'pdf_password', 'pdf_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_cf7pdf', '_wp_cf7pdf_fields', '_wp_cf7pdf_customtagsname', '_wp_cf7pdf_fields_scan', '_wp_cf7pdf_limit', '_form');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_cf7pdf', '_wp_cf7pdf_fields', '_wp_cf7pdf_customtagsname', '_wp_cf7pdf_fields_scan', '_wp_cf7pdf_limit', '_form');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_cf7pdf', '_wp_cf7pdf_fields', '_wp_cf7pdf_customtagsname', '_wp_cf7pdf_fields_scan', '_wp_cf7pdf_limit', '_form');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_cf7pdf', '_wp_cf7pdf_fields', '_wp_cf7pdf_customtagsname', '_wp_cf7pdf_fields_scan', '_wp_cf7pdf_limit', '_form');

