#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sp_admin'
wp option delete 'sp_need_rewrite_rules'
wp option delete 'sp_announcement'
wp option delete 'shoppress_license'
wp option delete 'elementor_load_fa4_shim'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'shoppress_message'
wp option delete 'shoppress_message_pro'
wp option delete 'woocommerce_enable_reviews'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'sp_admin_options_version'
wp option delete 'sp_pro_admin_options_version'
wp option delete 'styler-pickr-swatches'
wp option delete 'elementor_experiment-additional_custom_breakpoints'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'styler_%'"
wp option delete 'styler-widget-object'
wp option delete 'styler-widget-style-object'
wp option delete 'styler-gradient-swatches'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'display_woocommerce_policy_desc_in_checkout_page'
wp option delete 'display_woocommerce_method_desc_in_checkout_page'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_builder_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_builder_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_builder_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_builder_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_backorder_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_backorder_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_backorder_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_backorder_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_backorder_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_backorder_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_backorder_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_backorder_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shoppress_woo_compare'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shoppress_woo_compare'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shoppress_woo_compare'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shoppress_woo_compare'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shopperss_notification_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shopperss_notification_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shopperss_notification_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shopperss_notification_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shopperss_notification_for'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shopperss_notification_for'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shopperss_notification_for'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shopperss_notification_for'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shoppress_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shoppress_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shoppress_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shoppress_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'product_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'product_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'product_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'th_custom_attribute_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'th_custom_attribute_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'th_custom_attribute_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'th_custom_attribute_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shoppress_wishlist_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shoppress_wishlist_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shoppress_wishlist_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shoppress_wishlist_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shoppress_wishlist_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shoppress_wishlist_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shoppress_wishlist_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shoppress_wishlist_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shoppress_wishlist_share_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shoppress_wishlist_share_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shoppress_wishlist_share_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shoppress_wishlist_share_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shoppress_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shoppress_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shoppress_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shoppress_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shoppress_wishlist_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shoppress_wishlist_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shoppress_wishlist_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shoppress_wishlist_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shoppress_author_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shoppress_author_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shoppress_author_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shoppress_author_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shoppress_author_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shoppress_author_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shoppress_author_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shoppress_author_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'single_product_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'single_product_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'single_product_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'single_product_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_woo_single_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_woo_single_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_woo_single_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_woo_single_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'styler_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'styler_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'styler_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'styler_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'styler_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'styler_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'styler_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'styler_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutenberg_styler_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutenberg_styler_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutenberg_styler_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutenberg_styler_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutenberg_styler_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutenberg_styler_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutenberg_styler_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutenberg_styler_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_styler'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_styler'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_styler'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_styler'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rwmb_styler_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rwmb_styler_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rwmb_styler_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rwmb_styler_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rwmb_styler_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rwmb_styler_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rwmb_styler_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rwmb_styler_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
