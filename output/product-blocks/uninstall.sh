#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edd_wopb_license_key'
wp option delete 'wopb_builder_conditions'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_ship_to_destination'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'widget_block'
wp option delete 'edd_wopb_license_status'
wp option delete 'wopb_premade_wishlist'
wp option delete 'edd_wopb_license_limit'
wp option delete 'edd_wopb_license_activations_left'
wp option delete 'edd_wopb_license_price_id'
wp option delete 'edd_wopb_license_data'
wp option delete 'wopb_options'
wp option delete 'wopb_generated_css'
wp option delete 'wopb_setup_wizard_data'
wp option delete 'wopb_activation'
wp option delete 'dismiss_notice'
wp option delete 'productx_global'
wp option delete '__wopb_site_type'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'wopb_helloBar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__wopb_preview_%' OR option_name LIKE '_site_transient__wopb_preview_%'"
wp transient delete 'durbin_country_code'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wopb_container_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wopb_container_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wopb_container_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wopb_container_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wopb-builder-sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wopb-builder-sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wopb-builder-sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wopb-builder-sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wopb-builder-widget-area'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wopb-builder-widget-area'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wopb-builder-widget-area'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wopb-builder-widget-area'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wopb_builder_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wopb_builder_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wopb_builder_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wopb_builder_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wopb_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wopb_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wopb_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wopb_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__container_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__container_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__container_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__container_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__builder_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__builder_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__builder_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__builder_sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__builder_widget_area'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__builder_widget_area'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__builder_widget_area'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__builder_widget_area'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wopb_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wopb_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wopb_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wopb_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wopb_compare_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wopb_compare_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wopb_compare_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wopb_compare_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__font_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__font_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__font_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__font_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flip_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flip_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flip_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flip_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wopb_name_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wopb_name_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wopb_name_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wopb_name_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wopb_product_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wopb_product_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wopb_product_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wopb_product_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wopb_sc_column'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wopb_sc_column'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wopb_sc_column'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wopb_sc_column'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wopb_sc_heading_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wopb_sc_heading_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wopb_sc_heading_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wopb_sc_heading_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wopb_sc_hide_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wopb_sc_hide_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wopb_sc_hide_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wopb_sc_hide_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wopb_sc_all_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wopb_sc_all_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wopb_sc_all_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wopb_sc_all_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wopb_sc_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wopb_sc_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wopb_sc_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wopb_sc_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wopb_sc_include_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wopb_sc_include_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wopb_sc_include_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wopb_sc_include_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wopb_sc_exclude_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wopb_sc_exclude_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wopb_sc_exclude_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wopb_sc_exclude_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wopb_size_chart_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wopb_size_chart_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wopb_size_chart_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wopb_size_chart_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wopb_share_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wopb_share_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wopb_share_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wopb_share_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wopb_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wopb_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wopb_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wopb_wishlist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-box-order_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-box-order_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-box-order_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-box-order_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__product_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__product_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__product_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__product_views_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
