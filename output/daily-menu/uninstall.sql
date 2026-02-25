-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dm_db_version', 'dm_type_list', 'dm_sstype_list', 'dm_shotcode_css');

