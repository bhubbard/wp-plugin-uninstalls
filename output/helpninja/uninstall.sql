-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('helpninja_edd_api_key', 'helpninja_api_key', 'helpninja_lantern_enable', 'helpninja_lantern_id', 'helpninja_app_version', 'helpninja_db_version');

