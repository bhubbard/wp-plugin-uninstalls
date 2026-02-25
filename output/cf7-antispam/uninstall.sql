-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7a_options', 'cf7a_geodb_update', 'cf7a_db_version', 'cf7a_notice', 'cf7a_activation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_from', 'cf7a_hide_welcome_panel_on', '_cf7a_b8_classification', '_additional_settings', '_meta', '_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('_from', 'cf7a_hide_welcome_panel_on', '_cf7a_b8_classification', '_additional_settings', '_meta', '_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('_from', 'cf7a_hide_welcome_panel_on', '_cf7a_b8_classification', '_additional_settings', '_meta', '_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_from', 'cf7a_hide_welcome_panel_on', '_cf7a_b8_classification', '_additional_settings', '_meta', '_fields');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_field_%';

