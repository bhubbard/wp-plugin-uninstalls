-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('infumar_settings', 'infumar_last_sync', 'infumar_stats');

