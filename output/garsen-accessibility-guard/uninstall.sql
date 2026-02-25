-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('garsen_accessibility_guard_account_info', 'garsen_accessibility_guard_scan_status_cache');
DELETE FROM wp_options WHERE option_name LIKE 'garsen_accessibility_guard_connect_state_%';

