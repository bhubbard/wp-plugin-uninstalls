-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('effcf_fields_root');
DELETE FROM wp_options WHERE option_name LIKE '%_format';
DELETE FROM wp_options WHERE option_name LIKE '%_fieldtype';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_format';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_format';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_format';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_format';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fieldtype';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fieldtype';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fieldtype';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fieldtype';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_binding';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_binding';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_binding';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_binding';

