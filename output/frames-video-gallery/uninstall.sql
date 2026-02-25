-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('frames_options', 'frames_vg_version', 'frames_db_changes', 'frames_ew_logs', 'frames_vg_pro');

