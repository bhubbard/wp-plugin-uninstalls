-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linkguard_scan_interval', 'linkguard_email_notify', 'linkguard_scan_progress', 'linkguard_nt_version');

