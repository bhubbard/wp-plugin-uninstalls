-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppdfi_settings', 'wppdfi_version', 'wppdfi_db_version', 'wppdfi_network_settings', 'wppdfi_activated', 'wppdfi_metadata', 'wppdfi_api_cache', 'wppdfi_health_cache', 'wppdfi_rating_cache', 'wppdfi_activation_notice', 'wppdfi_deactivated', 'wppdfi_uninstall_backup');

