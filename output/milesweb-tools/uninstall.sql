-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('milesweb_maintenance_mode_enabled', 'milesweb_force_https_redirect', 'milesweb_file_editing_disabled', 'milesweb_disable_xmlrpc', 'mw_force_footer_enabled', 'force_https_redirect', 'maintenance_mode_enabled', 'milesweb_logo_image_id', 'milesweb_coming_soon_image_id', 'file_editing_disabled', 'disable_xmlrpc', 'milesweb_plugin_installed', 'rest_api_init', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_login');

