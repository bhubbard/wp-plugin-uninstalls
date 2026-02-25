-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wally_monitor_settings', 'wally_monitor_history', 'wally_monitor_full_report', 'wally_monitor_scan_lock');
DELETE FROM wp_options WHERE option_name LIKE 'wally_monitor_last_scan_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wally_needs_reanalysis');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wally_needs_reanalysis');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wally_needs_reanalysis');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wally_needs_reanalysis');

