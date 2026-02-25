-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('assistant_cache_settings', 'wpa_options');
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%install';
DELETE FROM wp_options WHERE option_name LIKE '%options';
DELETE FROM wp_options WHERE option_name LIKE '%install_wp_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('show_welcome_panel', 'template_editor_mce_hide');
DELETE FROM wp_usermeta WHERE meta_key IN ('show_welcome_panel', 'template_editor_mce_hide');
DELETE FROM wp_termmeta WHERE meta_key IN ('show_welcome_panel', 'template_editor_mce_hide');
DELETE FROM wp_commentmeta WHERE meta_key IN ('show_welcome_panel', 'template_editor_mce_hide');

