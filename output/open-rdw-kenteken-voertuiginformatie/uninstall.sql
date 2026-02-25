-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('puc_license_rdw', 'open-rdw-notice-dismissed', 'tsd_rdw_license_status', 'open_rdw_formatters', 'status_puc_license_rdw', 'puc_date_rdw', 'tussendoor_token', 'rdw_tsd_license', 'tsd_rdw_tsd_rdw_license_status');
DELETE FROM wp_options WHERE option_name LIKE '%_license_info';

