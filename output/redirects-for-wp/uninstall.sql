-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_301_redirects', 'wp_301_redirects_wildcard', 'wp301redirects_hide_btl_notice', 'wp301redirects_version', 'wp_301_redirects_import_info');

