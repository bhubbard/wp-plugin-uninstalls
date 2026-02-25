-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cssmenu_css', 'cssmenu_settings', 'cssmenu_structure', 'cssmenu_location', 'cssmenu_js', 'cssmenu_theme_id', 'cssmenu_step', 'cssmenu_custom_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('cssmenu_css', 'cssmenu_settings', 'cssmenu_structure', 'cssmenu_location', 'cssmenu_js', 'cssmenu_theme_id', 'cssmenu_step', 'cssmenu_custom_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('cssmenu_css', 'cssmenu_settings', 'cssmenu_structure', 'cssmenu_location', 'cssmenu_js', 'cssmenu_theme_id', 'cssmenu_step', 'cssmenu_custom_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cssmenu_css', 'cssmenu_settings', 'cssmenu_structure', 'cssmenu_location', 'cssmenu_js', 'cssmenu_theme_id', 'cssmenu_step', 'cssmenu_custom_css');

