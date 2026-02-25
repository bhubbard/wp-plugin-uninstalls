#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'element_ready_components'
wp option delete 'element_ready_modules'
wp option delete 'element_ready_api_data'
wp option delete 'element_ready_hf_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'element_ready_mega_menu_options_enable_menu%'"
wp option delete 'element_ready_wc_count_icon'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'yith_wcwl_wishlist_page_id'
wp option delete 'yith_wcwl_add_to_wishlist_text'
wp option delete 'yith_wcwl_browse_wishlist_text'
wp option delete 'yith_wcwl_product_added_text'
wp option delete 'QSBundle_lic_Key'
wp option delete 'ElementsReadyPro_lic_Key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'element_ready_dashboard_widgets_one'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_menu_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_menu_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_menu_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_menu_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_offcanvas_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_offcanvas_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_offcanvas_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_offcanvas_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_is_mobile_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_is_mobile_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_is_mobile_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_is_mobile_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_content_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_content_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_content_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_content_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'element_ready_mobile_submenu_content_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'element_ready_mobile_submenu_content_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'element_ready_mobile_submenu_content_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'element_ready_mobile_submenu_content_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'element_ready_megamenu_width_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'element_ready_megamenu_width_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'element_ready_megamenu_width_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'element_ready_megamenu_width_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'element_ready_vertical_megamenu_position_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'element_ready_vertical_megamenu_position_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'element_ready_vertical_megamenu_position_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'element_ready_vertical_megamenu_position_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_element_ready_menu_item_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_element_ready_menu_item_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_element_ready_menu_item_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_element_ready_menu_item_badge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_element_ready_menu_item_badge_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_element_ready_menu_item_badge_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_element_ready_menu_item_badge_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_element_ready_menu_item_badge_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_element_ready_menu_item_badge_bgcolor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_element_ready_menu_item_badge_bgcolor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_element_ready_menu_item_badge_bgcolor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_element_ready_menu_item_badge_bgcolor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'element_ready_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'element_ready_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'element_ready_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'element_ready_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'element_ready_builder_header_layout_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'element_ready_builder_header_layout_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'element_ready_builder_header_layout_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'element_ready_builder_header_layout_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'element_ready_builder_footer_layout_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'element_ready_builder_footer_layout_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'element_ready_builder_footer_layout_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'element_ready_builder_footer_layout_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_element_ready_menu_item_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_element_ready_menu_item_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_element_ready_menu_item_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_element_ready_menu_item_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_menu_classic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_menu_classic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_menu_classic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'element_ready_mega_menu_post_item_mega_menu_classic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saleflash_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saleflash_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saleflash_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saleflash_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
