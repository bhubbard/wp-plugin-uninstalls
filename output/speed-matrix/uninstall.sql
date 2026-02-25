-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('speed_matrix_settings', 'speed_matrix_last_cleanup', 'speed_matrix_activated', 'speed_matrix_version', 'speed_matrix_activation_notice', 'speed_matrix_cleanup_running', 'speed_matrix_cache_stats', 'speed_matrix_transients_count');

