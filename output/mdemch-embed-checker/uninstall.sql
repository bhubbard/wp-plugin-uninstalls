-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mdemch_pro_settings', 'mdemch_scan_progress', 'mdemch_scan_in_progress');

