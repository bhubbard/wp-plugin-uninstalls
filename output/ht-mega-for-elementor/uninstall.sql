-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('htmega_delete_data_fetch_cache', 'htmega_diagnostic_data_notice', 'htmega_diagnostic_data_agreed', 'htmega_api_last_req', 'htmega_newsletter_subscribed', 'htmega_themebuilder_module_settings', 'htmega_onboarding_completed', 'htmega_element_tabs', 'htmega_advance_element_tabs ', 'htmega_megamenu_module_settings', 'htmegamenu_setting_tabs', 'htmegabuilder_templatebuilder_tabs', 'htmega_advance_element_tabs', 'woocommerce_enable_ajax_add_to_cart', 'htmega_elementor_regenerate_file', 'htmega_elementor_addons_previous_version', 'htmega_rating_already_rated', 'htmega_elementor_addons_activation_time', 'htmega_elementor_addons_version', 'htmega_do_activation_redirect', 'woocommerce_cart_redirect_after_add', 'sbi_statuses', 'elementor_maintenance_mode_mode', 'htmega_api_backoff', 'htmega_template_request_pending', 'htmega_severdown_request_pending', 'htmega_api_failure_count', 'weather-unit', 'gio-location');
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer';
DELETE FROM wp_options WHERE option_name LIKE 'ht_menu_options_%';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_preodic_reset_data';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';
DELETE FROM wp_options WHERE option_name LIKE 'htmega_user_refresh_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_htmega_template_type', '_wp_page_template', '_elementor_edit_mode', '_elementor_template_type', '_elementor_data', '_elementor_page_settings', 'htmegabuilder_selectterm_layout', 'htmega_menu_settings', '_menu_item_menuwidth', '_menu_item_menuposition', '_menu_item_template', '_menu_item_ficon', '_menu_item_ficoncolor', '_menu_item_menutag', '_menu_item_menutagcolor', '_menu_item_menutagbgcolor', '_menu_item_megamenu', '_menu_item_disablet', '_htmega_active', '_htmega_css', 'thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_htmega_template_type', '_wp_page_template', '_elementor_edit_mode', '_elementor_template_type', '_elementor_data', '_elementor_page_settings', 'htmegabuilder_selectterm_layout', 'htmega_menu_settings', '_menu_item_menuwidth', '_menu_item_menuposition', '_menu_item_template', '_menu_item_ficon', '_menu_item_ficoncolor', '_menu_item_menutag', '_menu_item_menutagcolor', '_menu_item_menutagbgcolor', '_menu_item_megamenu', '_menu_item_disablet', '_htmega_active', '_htmega_css', 'thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_htmega_template_type', '_wp_page_template', '_elementor_edit_mode', '_elementor_template_type', '_elementor_data', '_elementor_page_settings', 'htmegabuilder_selectterm_layout', 'htmega_menu_settings', '_menu_item_menuwidth', '_menu_item_menuposition', '_menu_item_template', '_menu_item_ficon', '_menu_item_ficoncolor', '_menu_item_menutag', '_menu_item_menutagcolor', '_menu_item_menutagbgcolor', '_menu_item_megamenu', '_menu_item_disablet', '_htmega_active', '_htmega_css', 'thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_htmega_template_type', '_wp_page_template', '_elementor_edit_mode', '_elementor_template_type', '_elementor_data', '_elementor_page_settings', 'htmegabuilder_selectterm_layout', 'htmega_menu_settings', '_menu_item_menuwidth', '_menu_item_menuposition', '_menu_item_template', '_menu_item_ficon', '_menu_item_ficoncolor', '_menu_item_menutag', '_menu_item_menutagcolor', '_menu_item_menutagbgcolor', '_menu_item_megamenu', '_menu_item_disablet', '_htmega_active', '_htmega_css', 'thumbnail_id', '_wp_attachment_image_alt');

