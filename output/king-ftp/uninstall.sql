-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('KVfFTP_ftplist', 'KVfFTP_numserver', 'KVfFTP_server', 'KVfFTP_user', 'KVfFTP_pass', 'KVfFTP_url');

