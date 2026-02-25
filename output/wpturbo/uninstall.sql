-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpturbo_database', 'wpturbo_cdn', 'wpturbo_reduce', 'wpturbo_storage', 'wb_wpturbo_promote', 'wb_wpturbo_ver', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%ver';
DELETE FROM wp_options WHERE option_name LIKE 'wb_wpturbo_cnf_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wb-oss', '_wp_attached_file', '_wp_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('wb-oss', '_wp_attached_file', '_wp_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('wb-oss', '_wp_attached_file', '_wp_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wb-oss', '_wp_attached_file', '_wp_attachment_metadata');

