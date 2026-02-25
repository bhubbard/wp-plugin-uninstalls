-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'mkl_pc__settings', 'woocommerce_cart_redirect_after_add', 'ywraq_hide_add_to_cart', 'ywraq_hide_price', 'mkl_pc_theme_viewer_bg', 'woocommerce_currency', 'mkl_pc_theme_use_viewer_bg', 'mkl_pc__wpml_registered_fields', 'mkl_pc__pll_registered_fields', 'mkl_pc_version', 'auto_update_plugins', 'udmanager_updater_sid', 'mkl_pc_themes_url', 'mkl_get_configurable_products');
DELETE FROM wp_options WHERE option_name LIKE 'external_updates-%';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_currency_switcher_price_formats_currency_position_%';
DELETE FROM wp_options WHERE option_name LIKE '%color_mode';
DELETE FROM wp_options WHERE option_name LIKE '%choice_width';
DELETE FROM wp_options WHERE option_name LIKE '%_no_form_modal';
DELETE FROM wp_options WHERE option_name LIKE '%_disable_sticky_footer';
DELETE FROM wp_options WHERE option_name LIKE '%_sid';
DELETE FROM wp_options WHERE option_name LIKE 'mkl_pc_data_init_version_%';
DELETE FROM wp_options WHERE option_name LIKE 'mkl_pc_data_init_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mkl_pc_hide_addon__stock_management_placeholder', 'mkl_pc_hide_addon__extra_price_placeholder', 'mkl_pc_hide_addon__form_field_placeholder', 'elementor_configuration_modal_id', 'elementor_configuration_modal_button_label', 'mkl_pc_hide_addon__conditional_placeholder', 'mkl_load_configurator_on_page', 'enable_default_add_to_cart', '_mkl_product_configurator_content__backup');
DELETE FROM wp_usermeta WHERE meta_key IN ('mkl_pc_hide_addon__stock_management_placeholder', 'mkl_pc_hide_addon__extra_price_placeholder', 'mkl_pc_hide_addon__form_field_placeholder', 'elementor_configuration_modal_id', 'elementor_configuration_modal_button_label', 'mkl_pc_hide_addon__conditional_placeholder', 'mkl_load_configurator_on_page', 'enable_default_add_to_cart', '_mkl_product_configurator_content__backup');
DELETE FROM wp_termmeta WHERE meta_key IN ('mkl_pc_hide_addon__stock_management_placeholder', 'mkl_pc_hide_addon__extra_price_placeholder', 'mkl_pc_hide_addon__form_field_placeholder', 'elementor_configuration_modal_id', 'elementor_configuration_modal_button_label', 'mkl_pc_hide_addon__conditional_placeholder', 'mkl_load_configurator_on_page', 'enable_default_add_to_cart', '_mkl_product_configurator_content__backup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mkl_pc_hide_addon__stock_management_placeholder', 'mkl_pc_hide_addon__extra_price_placeholder', 'mkl_pc_hide_addon__form_field_placeholder', 'elementor_configuration_modal_id', 'elementor_configuration_modal_button_label', 'mkl_pc_hide_addon__conditional_placeholder', 'mkl_load_configurator_on_page', 'enable_default_add_to_cart', '_mkl_product_configurator_content__backup');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_variable_configuration_mode';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_variable_configuration_mode';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_variable_configuration_mode';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_variable_configuration_mode';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_all_variations_are_configurable';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_all_variations_are_configurable';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_all_variations_are_configurable';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_all_variations_are_configurable';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_is_configurable';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_is_configurable';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_is_configurable';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_is_configurable';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%structure';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%structure';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%structure';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%structure';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mkl_pc_hide_addon__%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mkl_pc_hide_addon__%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mkl_pc_hide_addon__%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mkl_pc_hide_addon__%';

