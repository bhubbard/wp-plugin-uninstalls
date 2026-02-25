#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qvt_title_font_size'
wp option delete 'qvt_price_font_size'
wp option delete 'qvt_descr_font_size'
wp option delete 'qvt_btn_font_size'
wp option delete 'qvt_meta_font_size'
wp option delete 'qvt_tag_font_size'
wp option delete 'xgpw_title'
wp option delete 'xgpw_wishlist_page'
wp option delete 'xgpw_browse_wishlist_text'
wp option delete 'xgpw_already_in_wishlist_text'
wp option delete 'xgpw_added_in_wishlist_text'
wp option delete 'xgp_upsells_shortcode'
wp option delete 'qvt_title_color'
wp option delete 'qvt_price_color'
wp option delete 'qvt_discount_price_color'
wp option delete 'qvt_description_color'
wp option delete 'qvt_btn_color'
wp option delete 'qvt_btn_background_color'
wp option delete 'qvt_btn_hover_color'
wp option delete 'qvt_btn_hover_background_color'
wp option delete 'qvt_meta_color'
wp option delete 'qvt_meta_hover_color'
wp option delete 'qvt_close_btn_bg_color'
wp option delete 'qvt_close_btn_color'
wp option delete 'qvt_close_btn_hover_bg_color'
wp option delete 'qvt_close_btn_hover_color'
wp option delete 'qvt_tag_color'
wp option delete 'qvt_tag_bg_color'
wp option delete 'qvt_tag_border_color'
wp option delete 'xgpw_page_title_font_size'
wp option delete 'xgpw_page_table_header_font_size'
wp option delete 'xgpw_page_product_title_font_size'
wp option delete 'xgpw_page_product_img_width'
wp option delete 'xgpw_page_product_price_font_size'
wp option delete 'xgpw_page_product_stock_font_size'
wp option delete 'xgpw_page_addedate_font_size'
wp option delete 'xgpw_page_button_font_size'
wp option delete 'xgpw_nofication_font_size'
wp option delete 'xgpw_page_title_color'
wp option delete 'xgpw_page_table_header_color'
wp option delete 'xgpw_page_product_title_color'
wp option delete 'xgpw_page_product_price_color'
wp option delete 'xgpw_page_product_discount_price_color'
wp option delete 'xgpw_page_product_in_stock_color'
wp option delete 'xgpw_page_product_out_stock_color'
wp option delete 'xgpw_page_addedate_color'
wp option delete 'xgpw_page_button_color'
wp option delete 'xgpw_page_button_bg_color'
wp option delete 'xgpw_page_button_hover_bg_color'
wp option delete 'xgpw_page_button_hover_text_color'
wp option delete 'xgpw_nofication_success_color'
wp option delete 'xgpw_nofication_success_bg_color'
wp option delete 'xgpw_nofication_removed_bg_color'
wp option delete 'xgpw_nofication_removed_text_color'
wp option delete 'disable_default_upsells'
wp option delete 'xgp_wishlist_redirect_cart'
wp option delete 'xgp_multi_wishlist_enable'
wp option delete 'xgp_remove_from_wishlist_after_add_to_cart'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xgp_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xgp_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xgp_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xgp_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slider_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slider_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slider_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slider_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slider_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slider_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slider_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slider_theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'column_in_desktop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'column_in_desktop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'column_in_desktop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'column_in_desktop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'column_in_tablet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'column_in_tablet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'column_in_tablet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'column_in_tablet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'column_in_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'column_in_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'column_in_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'column_in_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xgp_badge_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xgp_badge_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xgp_badge_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xgp_badge_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xgp_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xgp_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xgp_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xgp_badge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autoplay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autoplay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autoplay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autoplay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autoplay_speed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autoplay_speed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autoplay_speed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autoplay_speed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'margin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'margin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'margin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'margin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pause_on_hover'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pause_on_hover'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pause_on_hover'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pause_on_hover'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'navigation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'navigation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'navigation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'navigation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'center_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'center_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'center_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'center_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'animate_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'animate_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'animate_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'animate_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'animate_out'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'animate_out'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'animate_out'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'animate_out'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagination'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagination'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagination'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagination'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nav_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nav_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nav_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nav_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nav_bg_hover_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nav_bg_hover_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nav_bg_hover_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nav_bg_hover_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nav_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nav_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nav_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nav_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nav_hover_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nav_hover_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nav_hover_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nav_hover_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagi_dot_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagi_dot_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagi_dot_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagi_dot_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagi_dot_active_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagi_dot_active_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagi_dot_active_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagi_dot_active_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'badge_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'badge_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'badge_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'badge_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'title_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'title_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'title_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'title_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icon_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icon_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icon_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icon_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'btn_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'btn_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'btn_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'btn_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating_color'"
