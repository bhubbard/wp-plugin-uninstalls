-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sshw_api_key', 'sshw_secret', 'sshw_cahche');

