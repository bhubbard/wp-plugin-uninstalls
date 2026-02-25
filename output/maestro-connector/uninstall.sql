-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bh_maestro_activation_redirect', 'auto_update_plugins', 'allow_major_auto_core_updates', 'allow_minor_auto_core_updates', 'auto_update_themes', 'auto_update_plugin', 'auto_update_theme', 'bh_maestro_sso_log', 'update_plugins', 'update_core', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bh_maestro_location', 'bh_maestro_added_by', 'bh_maestro_added_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('bh_maestro_location', 'bh_maestro_added_by', 'bh_maestro_added_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('bh_maestro_location', 'bh_maestro_added_by', 'bh_maestro_added_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bh_maestro_location', 'bh_maestro_added_by', 'bh_maestro_added_time');

