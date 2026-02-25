#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_storebuild_currency_switcher'
wp option delete '_storebuild_invoice_settings'
wp option delete '_storebuild_quickview_settings'
wp option delete '_storebuild_backorder_settings'
wp option delete 'storebuild_shop_template'
wp option delete 'storebuild_single_template'
wp option delete 'storebuild_cart_template'
wp option delete 'storebuild_checkout_template'
wp option delete 'storebuild_thankyou_template'
wp option delete 'storebuild_myaccount_template'
wp option delete 'storebuild_myaccountlogin_template'
wp option delete 'storebuild_invoice_template'
wp option delete 'storebuild_quickview_template'
wp option delete 'storebuild_popup_template'
wp option delete 'storebuild_homepage_template'
wp option delete '_storebuild_elements'
wp option delete '_strb_envato_purchase_code'
wp option delete 'storebuild_do_activation_redirect'
wp option delete 'storebuild_wishlist_page_id'
wp option delete 'elementor_cpt_support'
wp option delete '_storebuild_modules'
wp option delete '__validate_author_dtaddons__'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'storebuild_product_limit'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'woocommerce_review_rating_verification_label'
wp option delete 'woocommerce_review_rating_verification_required'

# Delete Transients
wp transient delete 'storebuild_settings'
wp transient delete 'storebuild_templates'
wp transient delete 'storebuild_homepages'
wp transient delete 'storebuild_elements'
wp transient delete 'storebuild_pro_active_status'
wp transient delete 'storebuild_checkout_order_style'
wp transient delete 'storebuild_current_archive_products_limit'
wp transient delete 'storebuild_current_archive_products_order'
wp transient delete 'storebuild_current_archive_products_order_by'
wp transient delete 'storebuild_current_archive_products_cat'
wp transient delete 'storebuild_product_feature_options_2'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pure_wc_shopbuild_tmpl_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pure_wc_shopbuild_tmpl_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pure_wc_shopbuild_tmpl_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pure_wc_shopbuild_tmpl_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pure_wc_shopbuild_tmpl_set_as'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pure_wc_shopbuild_tmpl_set_as'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pure_wc_shopbuild_tmpl_set_as'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pure_wc_shopbuild_tmpl_set_as'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storebuild_cagetory_svg_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storebuild_cagetory_svg_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storebuild_cagetory_svg_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storebuild_cagetory_svg_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storebuild_cagetory_icon_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storebuild_cagetory_icon_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storebuild_cagetory_icon_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storebuild_cagetory_icon_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storebuild_cagetory_count_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storebuild_cagetory_count_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storebuild_cagetory_count_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storebuild_cagetory_count_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopbuild_hf_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopbuild_hf_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopbuild_hf_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopbuild_hf_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopbuild_hf_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopbuild_hf_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopbuild_hf_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopbuild_hf_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopbuild_hf_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopbuild_hf_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopbuild_hf_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopbuild_hf_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storebuild_sticky'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storebuild_sticky'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storebuild_sticky'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storebuild_sticky'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storebuild_animation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storebuild_animation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storebuild_animation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storebuild_animation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storebuild_scrolling_effects'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storebuild_scrolling_effects'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storebuild_scrolling_effects'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storebuild_scrolling_effects'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shopbuild_mega_menu_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shopbuild_mega_menu_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shopbuild_mega_menu_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shopbuild_mega_menu_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopbuild_hf_sticky'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopbuild_hf_sticky'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopbuild_hf_sticky'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopbuild_hf_sticky'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopbuild_hf_scrolling_effect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopbuild_hf_scrolling_effect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopbuild_hf_scrolling_effect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopbuild_hf_scrolling_effect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopbuild_hf_animation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopbuild_hf_animation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopbuild_hf_animation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopbuild_hf_animation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storebuild_compared_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storebuild_compared_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storebuild_compared_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storebuild_compared_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storebuild_wishlist_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storebuild_wishlist_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storebuild_wishlist_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storebuild_wishlist_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_strb_single_elementor_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_strb_single_elementor_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_strb_single_elementor_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_strb_single_elementor_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tpwvs_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tpwvs_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tpwvs_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tpwvs_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tpwvs_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tpwvs_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tpwvs_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tpwvs_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tpwvs_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tpwvs_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tpwvs_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tpwvs_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
