-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trustedsite_active', 'trustedsite_robots_enable', 'trustedsite_site_id', 'trustedsite_id', 'mcafeesecure_active', 'trustedsite_install_ping_done', 'trustedsite_data', 'trustedsite_plugin_error');

