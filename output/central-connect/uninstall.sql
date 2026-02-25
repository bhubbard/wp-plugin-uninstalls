-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boldgrid_api_key', 'bg_connect_configs', 'bglib_configs', 'boldgrid_connect_provider', 'boldgrid_connect_hide_menu', 'boldgrid_connect_analytics');

