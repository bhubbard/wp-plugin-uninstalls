-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ommo_menu_id', 'ommo_menu_type', 'ommo_menu_layout', 'ommo_css_source', 'ommo_generated_menus', 'ommo_cache_version', 'ommo_custom_css', 'ommo_submenu_filename', 'ommo_top_menu_filename');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_megamenu');
DELETE FROM wp_usermeta WHERE meta_key IN ('_megamenu');
DELETE FROM wp_termmeta WHERE meta_key IN ('_megamenu');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_megamenu');

