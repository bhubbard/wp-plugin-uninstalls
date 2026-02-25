#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'external_updates-%'"
wp option delete 'woocommerce_weight_unit'
wp option delete 'mkl_pc__settings'
wp option delete 'woocommerce_cart_redirect_after_add'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'ywraq_hide_add_to_cart'
wp option delete 'ywraq_hide_price'
wp option delete 'mkl_pc_theme_viewer_bg'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_currency_switcher_price_formats_currency_position_%'"
wp option delete 'woocommerce_currency'
wp option delete 'mkl_pc_theme_use_viewer_bg'
wp option delete 'mkl_pc__wpml_registered_fields'
wp option delete 'mkl_pc__pll_registered_fields'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%color_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%choice_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_no_form_modal'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_disable_sticky_footer'"
wp option delete 'mkl_pc_version'
wp option delete 'auto_update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sid'"
wp option delete 'udmanager_updater_sid'

# Delete Transients
wp transient delete 'mkl_pc_themes_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mkl_pc_data_init_version_%' OR option_name LIKE '_site_transient_mkl_pc_data_init_version_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mkl_pc_data_init_%' OR option_name LIKE '_site_transient_mkl_pc_data_init_%'"
wp transient delete 'mkl_get_configurable_products'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_variable_configuration_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_variable_configuration_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_variable_configuration_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_variable_configuration_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_all_variations_are_configurable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_all_variations_are_configurable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_all_variations_are_configurable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_all_variations_are_configurable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_is_configurable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_is_configurable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_is_configurable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_is_configurable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%structure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%structure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%structure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%structure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mkl_pc_hide_addon__%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mkl_pc_hide_addon__%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mkl_pc_hide_addon__%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mkl_pc_hide_addon__%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mkl_pc_hide_addon__stock_management_placeholder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mkl_pc_hide_addon__stock_management_placeholder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mkl_pc_hide_addon__stock_management_placeholder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mkl_pc_hide_addon__stock_management_placeholder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mkl_pc_hide_addon__extra_price_placeholder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mkl_pc_hide_addon__extra_price_placeholder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mkl_pc_hide_addon__extra_price_placeholder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mkl_pc_hide_addon__extra_price_placeholder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mkl_pc_hide_addon__form_field_placeholder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mkl_pc_hide_addon__form_field_placeholder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mkl_pc_hide_addon__form_field_placeholder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mkl_pc_hide_addon__form_field_placeholder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementor_configuration_modal_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementor_configuration_modal_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementor_configuration_modal_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementor_configuration_modal_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementor_configuration_modal_button_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementor_configuration_modal_button_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementor_configuration_modal_button_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementor_configuration_modal_button_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mkl_pc_hide_addon__conditional_placeholder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mkl_pc_hide_addon__conditional_placeholder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mkl_pc_hide_addon__conditional_placeholder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mkl_pc_hide_addon__conditional_placeholder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mkl_load_configurator_on_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mkl_load_configurator_on_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mkl_load_configurator_on_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mkl_load_configurator_on_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_default_add_to_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_default_add_to_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_default_add_to_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_default_add_to_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mkl_product_configurator_content__backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mkl_product_configurator_content__backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mkl_product_configurator_content__backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mkl_product_configurator_content__backup'"
