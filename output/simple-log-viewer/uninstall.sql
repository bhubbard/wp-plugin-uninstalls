-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slvpl_log_viewer_clear_logs', 'slvpl_enable_debug');

