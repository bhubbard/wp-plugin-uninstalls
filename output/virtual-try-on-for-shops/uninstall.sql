-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vtofs_settings', 'vtofs_plugin_version', 'vtofs_onboarding', 'vtofs_free_usage', 'vtofs_do_activation_redirect', 'vtofs_license_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vtofs_tryon_enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vtofs_tryon_enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vtofs_tryon_enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vtofs_tryon_enabled');

