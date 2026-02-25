-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_awp_services', 'wp_awp_options', 'wp_awp_lock', 'wp_awp_failed_ip', 'wp_awp_locked_ip');

