-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inboxWebmail_version', 'inboxWebmail_dbVersion');

