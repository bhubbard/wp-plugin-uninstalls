#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_view_order_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'wooready_products_archive_shop_grid_style'
wp option delete 'woo_ready_product_attributes'
wp option delete 'ShopReady_lic_Key'
wp option delete 'QSBundle_lic_Key'
wp option delete 'shop_ready_pro_cart_page_layout'
wp option delete 'wr_login_redirect_enable'
wp option delete 'shop_ready_components'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_permalinks'
wp option delete 'wready_product_tab_data_keys'
wp option delete 'elementor_cpt_support'
wp option delete 'shop_ready_theme_template_override_enable'
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'shop_ready_qs_version'
wp option delete 'shop_ready_demo_attachment_ids'
wp option delete 'shop_ready_templates'
wp option delete 'shop_ready_simple_product_id'
wp option delete 'shop_ready_modules'
wp option delete 'shop_ready_data_api'

# Delete Transients
wp transient delete 'shop_ready_remote_notice_time_elaps'

# Clear Cron Jobs
wp cron event delete 'qs_partial_payment_woocommerce_send_email_digest'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_ready_menu_item_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_ready_menu_item_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_ready_menu_item_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_ready_menu_item_badge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_ready_menu_item_badge_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_ready_menu_item_badge_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_ready_menu_item_badge_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_ready_menu_item_badge_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_ready_menu_item_badge_bgcolor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_ready_menu_item_badge_bgcolor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_ready_menu_item_badge_bgcolor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_ready_menu_item_badge_bgcolor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saleflash_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saleflash_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saleflash_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saleflash_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shop_ready_videos_gal_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shop_ready_videos_gal_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shop_ready_videos_gal_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shop_ready_videos_gal_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ready_elementor_tpl_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ready_elementor_tpl_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ready_elementor_tpl_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ready_elementor_tpl_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ready_elementor_menu_bedge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ready_elementor_menu_bedge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ready_elementor_menu_bedge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ready_elementor_menu_bedge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ready_elementor_menu_bedge_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ready_elementor_menu_bedge_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ready_elementor_menu_bedge_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ready_elementor_menu_bedge_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ready_elementor_menu_bedge_bgcolor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ready_elementor_menu_bedge_bgcolor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ready_elementor_menu_bedge_bgcolor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ready_elementor_menu_bedge_bgcolor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shop_ready_demo_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shop_ready_demo_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shop_ready_demo_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shop_ready_demo_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_page_tpl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_page_tpl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_page_tpl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_page_tpl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shop_ready_page_tpl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shop_ready_page_tpl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shop_ready_page_tpl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shop_ready_page_tpl'"
