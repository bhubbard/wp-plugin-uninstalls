-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WPXW_Cookie-Time', 'WPXW_only_admin', 'WPXW_excluded_ip', 'WPXW_file');

