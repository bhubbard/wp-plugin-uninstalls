-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('psr_plugin_version', 'psr_setting_main_color', 'psr_setting_main_color_hover');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_psr_projetc_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_psr_projetc_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_psr_projetc_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_psr_projetc_url');

