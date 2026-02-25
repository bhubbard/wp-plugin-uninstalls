-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpclone_backups', 'wpclone_directory_scan', 'wpa_wpc_plugin_do_activation_redirect', 'wpa_activation_redirect_required');

