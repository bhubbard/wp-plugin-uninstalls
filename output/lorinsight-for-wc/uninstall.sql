-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lorinsight_sync_settings', 'shopapper_dashboard_token');

