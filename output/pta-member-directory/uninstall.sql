-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pta_member_categories', 'pta_directory_options', 'pta_md_datatables_enabled', 'pta_md_last_submit', 'pta_md_last_ip');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pta_member_directory_email', '_pta_member_directory_phone', 'member_location', 'member_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pta_member_directory_email', '_pta_member_directory_phone', 'member_location', 'member_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pta_member_directory_email', '_pta_member_directory_phone', 'member_location', 'member_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pta_member_directory_email', '_pta_member_directory_phone', 'member_location', 'member_category');

