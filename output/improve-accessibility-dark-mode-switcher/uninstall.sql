-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iads_options', 'iads_db_version', 'iads_blacklisted_ips');

