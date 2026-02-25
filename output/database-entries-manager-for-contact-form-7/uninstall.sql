-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wicocf7db_dbversion_plugin', 'wicocf7db_dbversion_defaultstatuses');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_statusid');
DELETE FROM wp_usermeta WHERE meta_key IN ('_statusid');
DELETE FROM wp_termmeta WHERE meta_key IN ('_statusid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_statusid');

