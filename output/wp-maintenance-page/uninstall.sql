-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmp_settings', 'wpmp_notice', 'wp-maintenance-page', 'wp-maintenance-page-msqld', 'wpmp_version');

