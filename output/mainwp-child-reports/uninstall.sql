-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_mainwp_stream_network', 'wp_mainwp_stream', 'mainwp_child_reports_db', 'mainwp_child_branding_settings', 'wp_mainwp_stream_plugins_to_delete', 'sidebars_widgets', 'settings_errors');
DELETE FROM wp_options WHERE option_name LIKE '%_connectors';
DELETE FROM wp_options WHERE option_name LIKE '%_registered_connectors';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rule');
DELETE FROM wp_usermeta WHERE meta_key IN ('rule');
DELETE FROM wp_termmeta WHERE meta_key IN ('rule');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rule');

