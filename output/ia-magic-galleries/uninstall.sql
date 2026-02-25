-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_iamg_activating_plugin', '_iamg_activated_plugin', 'iamg_install_version', 'iamg_install_date', 'iamg_after_install', 'iamg_redirect_overview', 'iamg_admin_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_called_reg_client';
DELETE FROM wp_options WHERE option_name LIKE '%_registered';
DELETE FROM wp_options WHERE option_name LIKE '%_install_version';
DELETE FROM wp_options WHERE option_name LIKE '%_install_date';
DELETE FROM wp_options WHERE option_name LIKE '%categoryShow';
DELETE FROM wp_options WHERE option_name LIKE '%_gallery_count';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('id_local', 'presentation', 'presentation_parameters', 'presentation_dependence', 'pages', 'presentation_history', 'encrypted', '_iamg_custom_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('id_local', 'presentation', 'presentation_parameters', 'presentation_dependence', 'pages', 'presentation_history', 'encrypted', '_iamg_custom_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('id_local', 'presentation', 'presentation_parameters', 'presentation_dependence', 'pages', 'presentation_history', 'encrypted', '_iamg_custom_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('id_local', 'presentation', 'presentation_parameters', 'presentation_dependence', 'pages', 'presentation_history', 'encrypted', '_iamg_custom_css');

