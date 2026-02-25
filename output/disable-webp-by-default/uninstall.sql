-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disable_webp_transforms', 'disable_webp_by_default_plugin_version', 'disable_webp_by_default_database_version');

