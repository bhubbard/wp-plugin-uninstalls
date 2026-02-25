-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rokka_company_name', 'rokka_api_key', 'rokka_delete_previous', 'rokka_output_parsing', 'rokka_rokka_enabled', 'rokka_stack_prefix', 'rokka_notices');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rokka_hash', 'rokka_meta', 'rokka_subject_area');
DELETE FROM wp_usermeta WHERE meta_key IN ('rokka_hash', 'rokka_meta', 'rokka_subject_area');
DELETE FROM wp_termmeta WHERE meta_key IN ('rokka_hash', 'rokka_meta', 'rokka_subject_area');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rokka_hash', 'rokka_meta', 'rokka_subject_area');

