#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_working_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cart_working_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_disable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_disable_custom'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crp_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crp_related_by'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crp_exclude_widget_category'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crp_exclude_widget_product'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crp_order_by'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crp_order'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crp_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crp_banner_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crp_custom_slider_arrow'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crp_banner_product_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_exclude_os'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rp_exclude_backorder'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_slider'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_use_primary_id_wpml'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_overide_theme_rp'"
wp option delete 'custom_related_products_crp_exclude_widget_category'
wp option delete 'custom_related_products_crp_exclude_widget_product'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_slider_type'"
wp option delete 'custom_related_products_crp_banner_width'
wp option delete 'custom_related_products_cart_working_mode'
wp option delete 'wbfte_promotion_banner_version'
wp option delete 'wt_hide_invoice_cta_banner'
wp option delete 'wt_hide_smart_coupon_cta_banner'
wp option delete 'wt_hide_product_ie_cta_banner'
wp option delete 'active_sitewide_plugins'
wp option delete 'crp_version'
wp option delete 'woocommerce_version'
wp option delete 'custom_related_products_working_mode'
wp option delete 'custom_related_products_disable'
wp option delete 'custom_related_products_disable_custom'
wp option delete 'custom_related_products_crp_banner_product_width'
wp option delete 'custom_related_products_slider'
wp option delete 'custom_related_products_overide_theme_rp'
wp option delete 'custom_related_products_slider_temp'
wp option delete 'custom_related_products_crp_custom_slider_arrow'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'custom_related_products_crp_related_by'
wp option delete 'custom_related_products_crp_number'
wp option delete 'custom_related_products_use_primary_id_wpml'
wp option delete 'custom_related_products_exclude_os'
wp option delete 'custom_related_products_rp_exclude_backorder'
wp option delete 'custom_related_products_crp_order_by'
wp option delete 'custom_related_products_crp_order'
wp option delete 'custom_related_products_crp_title'
wp option delete 'custom_related_products_slider_type'

# Delete Transients
wp transient delete '_crp_screen_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crp_related_product_cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crp_related_product_cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crp_related_product_cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crp_related_product_cats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crp_related_product_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crp_related_product_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crp_related_product_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crp_related_product_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crp_related_product_attr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crp_related_product_attr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crp_related_product_attr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crp_related_product_attr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crp_related_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crp_related_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crp_related_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crp_related_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crp_excluded_cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crp_excluded_cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crp_excluded_cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crp_excluded_cats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selected_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selected_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selected_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selected_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
