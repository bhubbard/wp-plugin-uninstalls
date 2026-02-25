-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aisprtsw_api_settings', 'aisprtsw_post_settings', 'aisprtsw_db_version');

