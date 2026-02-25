-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nm-awl_version', 'nm-awl_options', 'vtlawl_options');

