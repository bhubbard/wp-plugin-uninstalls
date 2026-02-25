-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdesk_settings', 'pdesk_manual_cookies', 'pdesk_scanned_cookies', 'pdesk_consent_stats', 'pdesk_cookie_scan_results');

