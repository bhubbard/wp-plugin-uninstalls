-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loginsecurity_version', 'loginsecurity_options', 'loginsecurity_last_reset', 'loginsecurity_whitelist', 'loginsecurity_blacklist', 'lz_version', 'loginsecurity_ins_time', 'site_name', 'loginsecurity_license', 'rwl_page', 'rwl_redirect', 'rwl_admin');

