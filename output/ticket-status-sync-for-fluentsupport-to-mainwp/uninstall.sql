-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mainwp_fluentsupport_site_url', 'mainwp_fluentsupport_api_username', 'mainwp_fluentsupport_api_password', 'mainwp_fluentsupport_sync_log', 'mainwp_fluentsupport_last_sync', 'mainwp_fluentsupport_version');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

