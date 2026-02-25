-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kbif_last_scan_results', 'kbif_last_scan_stats', 'kbif_scan_queue', 'kbif_scan_progress');

