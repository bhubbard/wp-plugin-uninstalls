-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ftsn_token', 'ftsn_id', 'ftsn_email', 'ftsn_connected');

