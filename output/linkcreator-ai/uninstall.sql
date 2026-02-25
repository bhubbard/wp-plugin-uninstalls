-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linkcreator_plugin_activated', 'linkcreator_api_token', 'meta_keywords', 'linkcreator_api_key', 'linkcreator_api_status', 'linkcreator_first_activation', 'linkcreator_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('linkcreator_app_password_slug', 'linkcreator_app_password');
DELETE FROM wp_usermeta WHERE meta_key IN ('linkcreator_app_password_slug', 'linkcreator_app_password');
DELETE FROM wp_termmeta WHERE meta_key IN ('linkcreator_app_password_slug', 'linkcreator_app_password');
DELETE FROM wp_commentmeta WHERE meta_key IN ('linkcreator_app_password_slug', 'linkcreator_app_password');

