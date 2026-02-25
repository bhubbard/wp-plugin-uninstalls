-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mbsync_host', 'mbsync_db', 'mbsync_db_username', 'mbsync_db_password', 'mbsync_tableprefix', 'mbsync_mybbroot');

