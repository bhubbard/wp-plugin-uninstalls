-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('BeRocket_aapf_additional_tables_addon_position', 'BeRocket_aapf_additional_tables_addon_position_data', 'br_filters_options', 'widget_berocket_aapf_widget', 'berocket_aapf_custom_post_meta', 'berocket_cpm_update_required', 'berocket_key_activated_plugins', 'berocket_framework_option_global', 'BeRocket_Framework_plugins_version_check', 'berocket_admin_notices', 'berocket_email_subscribed', 'berocket_last_close_notices_time', 'berocket_current_displayed_notice', 'berocket_admin_notices_last_on_options', 'berocket_admin_notices_rate_stars', 'berocket_information_notices', 'BeRocket_account_option', 'widget_berocket_aapf_single', 'sidebars_widgets', 'woocommerce_tax_display_shop', 'xts-woodmart-options', 'wcpt_shortcode_defaults', 'berocket_aapf_filters_setup_wizard_list', 'BeRocket_AAPF_getall_Template_Styles', 'brapf_variation_attr_fix', 'brapf_variation_attr_fix_data', 'brapf_variation_attr_fix_count', 'berocket_wpml_attribute_slug_untranslate', 'braapf_sliders', 'woocommerce_hide_out_of_stock_items', 'berocket_filter_open_wizard_on_settings', 'br_load_more_products', 'widget_berocket_aapf_group', 'br_filters_version', 'rewrite_rules', 'braapf_new_filters_converted', 'woocommerce_default_catalog_orderby', 'berocket_permalink_option', 'berocket_nn_permalink_option', 'BeRocket_selector_wizard_status', 'berocket_multisite_import_ready', 'braapf_product_lookup_tables_is_running', 'berocket_plugin_paid_info', 'update_plugins', 'br_plugin_activation', 'BeRocket_products_label_style_generate', 'wc_products_notonsale');
DELETE FROM wp_options WHERE option_name LIKE 'berocket_plugin_error_%';
DELETE FROM wp_options WHERE option_name LIKE '%_upgrade';
DELETE FROM wp_options WHERE option_name LIKE '%_visibility_method';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE 'berocket_framework_plugin_is_active_%';
DELETE FROM wp_options WHERE option_name LIKE '%_paid_info';
DELETE FROM wp_options WHERE option_name LIKE 'br_plugin_api_%';
DELETE FROM wp_options WHERE option_name LIKE 'brplugin_info_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_attributes', 'total_sales', 'berocket_post_order', 'child', 'order', 'color_gradient');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_attributes', 'total_sales', 'berocket_post_order', 'child', 'order', 'color_gradient');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_attributes', 'total_sales', 'berocket_post_order', 'child', 'order', 'color_gradient');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_attributes', 'total_sales', 'berocket_post_order', 'child', 'order', 'color_gradient');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_visible';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_visible';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_visible';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_visible';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_invisible';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_invisible';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_invisible';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_invisible';

