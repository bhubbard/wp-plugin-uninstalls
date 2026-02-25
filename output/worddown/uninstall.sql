-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('modularity-options', 'worddown_last_export', 'worddown_settings', 'worddown_current_export_id', 'worddown_export_completed_flag');
DELETE FROM wp_options WHERE option_name LIKE 'worddown_export_status_%';

