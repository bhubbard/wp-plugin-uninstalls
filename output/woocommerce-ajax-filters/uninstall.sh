#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'BeRocket_aapf_additional_tables_addon_position'
wp option delete 'BeRocket_aapf_additional_tables_addon_position_data'
wp option delete 'br_filters_options'
wp option delete 'widget_berocket_aapf_widget'
wp option delete 'berocket_aapf_custom_post_meta'
wp option delete 'berocket_cpm_update_required'
wp option delete 'berocket_key_activated_plugins'
wp option delete 'berocket_framework_option_global'
wp option delete 'BeRocket_Framework_plugins_version_check'
wp option delete 'berocket_admin_notices'
wp option delete 'berocket_email_subscribed'
wp option delete 'berocket_last_close_notices_time'
wp option delete 'berocket_current_displayed_notice'
wp option delete 'berocket_admin_notices_last_on_options'
wp option delete 'berocket_admin_notices_rate_stars'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'berocket_plugin_error_%'"
wp option delete 'berocket_information_notices'
wp option delete 'BeRocket_account_option'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_upgrade'"
wp option delete 'widget_berocket_aapf_single'
wp option delete 'sidebars_widgets'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'xts-woodmart-options'
wp option delete 'wcpt_shortcode_defaults'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_visibility_method'"
wp option delete 'berocket_aapf_filters_setup_wizard_list'
wp option delete 'BeRocket_AAPF_getall_Template_Styles'
wp option delete 'brapf_variation_attr_fix'
wp option delete 'brapf_variation_attr_fix_data'
wp option delete 'brapf_variation_attr_fix_count'
wp option delete 'berocket_wpml_attribute_slug_untranslate'
wp option delete 'braapf_sliders'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'berocket_filter_open_wizard_on_settings'
wp option delete 'br_load_more_products'
wp option delete 'widget_berocket_aapf_group'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'br_filters_version'
wp option delete 'rewrite_rules'
wp option delete 'braapf_new_filters_converted'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'berocket_permalink_option'
wp option delete 'berocket_nn_permalink_option'
wp option delete 'BeRocket_selector_wizard_status'
wp option delete 'berocket_multisite_import_ready'

# Delete Transients
wp transient delete 'braapf_product_lookup_tables_is_running'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_berocket_framework_plugin_is_active_%' OR option_name LIKE '_site_transient_berocket_framework_plugin_is_active_%'"
wp transient delete 'berocket_plugin_paid_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_paid_info' OR option_name LIKE '_site_transient_%_paid_info'"
wp transient delete 'update_plugins'
wp transient delete 'br_plugin_activation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_br_plugin_api_%' OR option_name LIKE '_site_transient_br_plugin_api_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_brplugin_info_%' OR option_name LIKE '_site_transient_brplugin_info_%'"
wp transient delete 'BeRocket_products_label_style_generate'
wp transient delete 'wc_products_notonsale'

# Clear Cron Jobs
wp cron event delete 'braapf_additional_table_cron'
wp cron event delete 'brapf_fix_varattr'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'berocket_post_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'berocket_post_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'berocket_post_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'berocket_post_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_visible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_invisible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_invisible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_invisible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_invisible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'child'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'child'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'child'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'child'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color_gradient'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color_gradient'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color_gradient'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color_gradient'"
