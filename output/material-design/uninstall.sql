-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('material_plugin_activated', 'material_design_recaptcha_site_key', 'material_design_recaptcha_client_secret', 'material_onboarding', 'auto_update_plugins', 'auto_update_themes', 'material_design_theme_activated', 'sidebars_widgets', '_material_activation_redirect', 'update_plugins', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('original_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('original_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('original_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('original_link');

