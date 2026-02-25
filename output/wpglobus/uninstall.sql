-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpglobus_customize_language_selector_mode', 'wpglobus_customize_language_selector_menu', 'wpglobus_customize_selector_wp_list_pages', 'wpglobus_customize_css_editor', 'wpglobus_customize_redirect_by_language', 'wpglobus_customize_js_editor', 'elementor_cpt_support', 'elementor_css_print_method', 'classic-editor-replace', 'wpseo_titles', 'wpseo_taxonomy_meta', 'theme_switched', 'wpglobus_activated', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpglobus_customize_post_type_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('locale', '_wpglobus_elementor_support', '_elementor_edit_mode', 'classic-editor-remember', '_menu_item_type', '_menu_item_object', '_menu_item_object_id', '_edit_last');
DELETE FROM wp_usermeta WHERE meta_key IN ('locale', '_wpglobus_elementor_support', '_elementor_edit_mode', 'classic-editor-remember', '_menu_item_type', '_menu_item_object', '_menu_item_object_id', '_edit_last');
DELETE FROM wp_termmeta WHERE meta_key IN ('locale', '_wpglobus_elementor_support', '_elementor_edit_mode', 'classic-editor-remember', '_menu_item_type', '_menu_item_object', '_menu_item_object_id', '_edit_last');
DELETE FROM wp_commentmeta WHERE meta_key IN ('locale', '_wpglobus_elementor_support', '_elementor_edit_mode', 'classic-editor-remember', '_menu_item_type', '_menu_item_object', '_menu_item_object_id', '_edit_last');

