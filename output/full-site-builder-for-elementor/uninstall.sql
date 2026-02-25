-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('google_maps_api_key', 'tt_font_theme_options', 'stylepress_purchases', 'dtbaker-elementor', 'stylepressimportpostids', 'stylepresspostorphans', 'stylepress_downloadable');
DELETE FROM wp_options WHERE option_name LIKE 'import_style_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dtbaker_is_component', '_elementor_data', 'icon', '_elementor_template_type', '_menu_item_displaytype', '_menu_item_slideout', '_thumbnail_id', 'dtbaker_style', 'stylepress_advanced');
DELETE FROM wp_usermeta WHERE meta_key IN ('dtbaker_is_component', '_elementor_data', 'icon', '_elementor_template_type', '_menu_item_displaytype', '_menu_item_slideout', '_thumbnail_id', 'dtbaker_style', 'stylepress_advanced');
DELETE FROM wp_termmeta WHERE meta_key IN ('dtbaker_is_component', '_elementor_data', 'icon', '_elementor_template_type', '_menu_item_displaytype', '_menu_item_slideout', '_thumbnail_id', 'dtbaker_style', 'stylepress_advanced');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dtbaker_is_component', '_elementor_data', 'icon', '_elementor_template_type', '_menu_item_displaytype', '_menu_item_slideout', '_thumbnail_id', 'dtbaker_style', 'stylepress_advanced');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_menu_item_%';

