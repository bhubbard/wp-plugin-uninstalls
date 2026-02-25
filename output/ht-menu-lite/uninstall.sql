-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('htmegamenu_do_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'ht_menu_options_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_wp_page_template', 'htmega_menu_settings', '_menu_item_menuwidth', '_menu_item_menuposition', '_menu_item_template', '_menu_item_ficon', '_menu_item_ficoncolor', '_menu_item_menutag', '_menu_item_menutagcolor', '_menu_item_menutagbgcolor', '_menu_item_megamenu', '_menu_item_disablet');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_wp_page_template', 'htmega_menu_settings', '_menu_item_menuwidth', '_menu_item_menuposition', '_menu_item_template', '_menu_item_ficon', '_menu_item_ficoncolor', '_menu_item_menutag', '_menu_item_menutagcolor', '_menu_item_menutagbgcolor', '_menu_item_megamenu', '_menu_item_disablet');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_wp_page_template', 'htmega_menu_settings', '_menu_item_menuwidth', '_menu_item_menuposition', '_menu_item_template', '_menu_item_ficon', '_menu_item_ficoncolor', '_menu_item_menutag', '_menu_item_menutagcolor', '_menu_item_menutagbgcolor', '_menu_item_megamenu', '_menu_item_disablet');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_wp_page_template', 'htmega_menu_settings', '_menu_item_menuwidth', '_menu_item_menuposition', '_menu_item_template', '_menu_item_ficon', '_menu_item_ficoncolor', '_menu_item_menutag', '_menu_item_menutagcolor', '_menu_item_menutagbgcolor', '_menu_item_megamenu', '_menu_item_disablet');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_menu_item_%';

