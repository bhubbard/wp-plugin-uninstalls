-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dlucs_installed', 'dlucs_version', 'dlucs-opt');

