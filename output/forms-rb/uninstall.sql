-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rbforms_sent', '_rbforms_userip', '_rbforms_read', '_rbforms_rows', 'rbforms_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rbforms_sent', '_rbforms_userip', '_rbforms_read', '_rbforms_rows', 'rbforms_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rbforms_sent', '_rbforms_userip', '_rbforms_read', '_rbforms_rows', 'rbforms_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rbforms_sent', '_rbforms_userip', '_rbforms_read', '_rbforms_rows', 'rbforms_options');

