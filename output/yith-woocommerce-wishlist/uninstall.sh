#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yith_wcwl_disable_wishlist_for_unauthenticated_users'
wp option delete 'yith-wcwl-welcome-modal'
wp option delete 'yith_wcwl_wishlist_page_id'
wp option delete 'yith_wcwl_product_added_text'
wp option delete 'yith_wcwl_remove_after_add_to_cart'
wp option delete 'yith_wcwl_button_position'
wp option delete 'yith_wcwl_show_on_loop'
wp option delete 'yith_wcwl_loop_position'
wp option delete 'yith_wcwl_redirect_cart'
wp option delete 'yith_wcwl_ajax_enable'
wp option delete 'yith_wcwl_add_to_cart_style'
wp option delete 'yith_wcwl_add_to_cart_icon'
wp option delete 'yith_wcwl_add_to_cart_custom_icon'
wp option delete 'yith_wcwl_add_to_cart_text'
wp option delete 'yith_wcwl_quantity_show'
wp option delete 'yith_wfbt_enable_integration'
wp option delete 'yith_wcwl_custom_css'
wp option delete 'yith_wcwl_version'
wp option delete 'yith_wcwl_wishlist_title'
wp option delete 'yith_wcwl_price_show'
wp option delete 'yith_wcwl_stock_show'
wp option delete 'yith_wcwl_show_dateadded'
wp option delete 'yith_wcwl_add_to_cart_show'
wp option delete 'yith_wcwl_show_remove'
wp option delete 'yith_wcwl_variation_show'
wp option delete 'yith_wcwl_repeat_remove_button'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'yith_wcwl_add_to_wishlist_icon'
wp option delete 'yith_wcwl_add_to_wishlist_custom_icon'
wp option delete 'yith_wcwl_enable_share'
wp option delete 'yith_wcwl_share_fb'
wp option delete 'yith_wcwl_share_twitter'
wp option delete 'yith_wcwl_share_pinterest'
wp option delete 'yith_wcwl_share_email'
wp option delete 'yith_wcwl_share_whatsapp'
wp option delete 'yith_wcwl_share_url'
wp option delete 'yith_wcwl_socials_title'
wp option delete 'yith_wcwl_socials_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_button_icon'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_button_custom_icon'"
wp option delete 'yith_wcwl_socials_image_url'
wp option delete 'yith_wcwl_already_in_wishlist_text'
wp option delete 'rewrite_rules'
wp option delete 'yith_wcwl_use_button'
wp option delete 'yith_wcwl_frontend_css'
wp option delete 'yith_wcwl_add_to_wishlist_style'
wp option delete 'yith_wcwl_ask_an_estimate_style'
wp option delete 'yith_wcwl_rounded_corners'
wp option delete 'yith_wcwl_rounded_corners_radius'
wp option delete 'yith_wcwl_add_to_cart_rounded_corners_radius'
wp option delete 'yith_wcwl_ask_an_estimate_rounded_corners_radius'
wp option delete 'yith_wcwl_rendering_method'
wp option delete 'yith_wcwl_add_to_wishlist_icon_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_type'"
wp option delete 'yit_font_awesome_list'
wp option delete 'yit_dashicons_list'
wp option delete 'yit_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'yit_recently_activated'
wp option delete 'yith_system_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id'"
wp option delete 'yith_wcwl_db_version'
wp option delete 'yith-wcwl-pageid'

# Delete Transients
wp transient delete 'yith_wcwl_hidden_products'
wp transient delete 'yith-plugin-fw-latest-hc-articles'
wp transient delete 'yith-plugin-fw-system-status-tls-version'
wp transient delete 'yith-plugin-fw-system-status-output-ip'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
