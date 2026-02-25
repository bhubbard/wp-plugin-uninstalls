#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boxyfy_title_font_size'
wp option delete 'boxyfy_main_imageslider_dot_color'
wp option delete 'boxyfy_main_imageslider_dot_active_color'
wp option delete 'boxyfy_content_font_size'
wp option delete 'boxyfy_content_background_color'
wp option delete 'boxyfy_produktinfos_oben_font_size'
wp option delete 'boxyfy_produktinfos_oben_font_maincolor'
wp option delete 'boxyfy_produktinfos_head_fontweight'
wp option delete 'boxyfy_amazon_preis_zeile_background_color'
wp option delete 'boxyfy_weitere_preise_zeilen_background_color'
wp option delete 'boxyfy_all_buttons_icon_and_fontcolor'
wp option delete 'boxyfy_box_lowest_price_backgroundcolor'
wp option delete 'boxyfy_box_lowest_price_border_and_font'
wp option delete 'boxyfy_autorbox_expertise_tag'
wp option delete 'boxyfy_green_rating_min'
wp option delete 'boxyfy_green_rating_max'
wp option delete 'boxyfy_yellow_rating_min'
wp option delete 'boxyfy_yellow_rating_max'
wp option delete 'boxyfy_red_rating_min'
wp option delete 'boxyfy_red_rating_max'
wp option delete 'boxyfy_preise_buttons_background_color'
wp option delete 'boxyfy_preise_buttons_gradient'
wp option delete 'boxyfy_amazon_settings'
wp option delete 'boxyfy_content_labeltop_background_color'
wp option delete 'boxyfy_default_star_color'
wp option delete 'boxyfy_show_affiliate_disclaimer'
wp option delete 'boxyfy_affiliate_disclaimer_text'
wp option delete 'boxyfy_show_preiswecker'
wp option delete 'boxyfy_autoren_profiles'
wp option delete 'boxyfy_cache_enable'
wp option delete 'boxyfy_cache_ttl'
wp option delete 'boxyfy_autoupdate_interval'
wp option delete 'boxyfy_preiswecker_farben'
wp option delete 'boxyfy_content_labeltop_font_color'
wp option delete 'boxyfy_box_header_font_size'
wp option delete 'boxyfy_box_header_fontweights'
wp option delete 'boxyfy_box_info_font_size'
wp option delete 'boxyfy_box_farbe_title'
wp option delete 'boxyfy_box_tsproduktlabel_color'
wp option delete 'boxyfy_box_info_text_color'
wp option delete 'boxyfy_box_bewertung_text'
wp option delete 'boxyfy_box_tsproduktlabel'
wp option delete 'boxyfy_box_shop_button_background'
wp option delete 'boxyfy_box_shop_button_text'
wp option delete 'boxyfy_license_type'
wp option delete 'boxyfy_show_ki_chatbox_singleproductbox'
wp option delete 'boxyfy_ai_gradient_color1'
wp option delete 'boxyfy_ai_gradient_color2'
wp option delete 'boxyfy_amz_einzelbox_title_fontsize'
wp option delete 'boxyfy_amz_einzelbox_taglabel_fontsize'
wp option delete 'boxyfy_amz_einzelbox_liste_fontsize'
wp option delete 'boxyfy_amz_einzelbox_title_schriftcolor'
wp option delete 'boxyfy_amz_einzelbox_erster_button_schriftcolor'
wp option delete 'boxyfy_amz_einzelbox_erster_button_backgroundcolor'
wp option delete 'boxyfy_amz_einzelbox_zweiter_button_schriftcolor'
wp option delete 'boxyfy_amz_einzelbox_zweiter_button_backgroundcolor'
wp option delete 'boxyfy_amz_einzelbox_badge_backgroundcolor'
wp option delete 'boxyfy_amz_einzelbox_taglabel_fontcolor'
wp option delete 'boxyfy_amz_einzelbox_taglabel_backgroundcolor'
wp option delete 'boxyfy_amz_einzelbox_klein_title_fontsize'
wp option delete 'boxyfy_amz_einzelbox_title_klein_fontweight'
wp option delete 'boxyfy_amz_einzelbox_title_klein_schriftcolor'
wp option delete 'boxyfy_amz_einzelbox_title_klein_schriftcolor_hover'
wp option delete 'boxyfy_amz_einzelbox_klein_label_backcolor'
wp option delete 'boxyfy_amz_einzelbox_klein_button_backcolor'
wp option delete 'boxyfy_amz_einzelbox_klein_bordercolor'
wp option delete 'boxyfy_vergleich_boxen_listen_slider_kopf_fontsize'
wp option delete 'boxyfy_vergleich_boxen_listen_entries_fontsize'
wp option delete 'boxyfy_vergleich_boxen_filterhead_schriftcolor'
wp option delete 'boxyfy_vergleich_boxen_listen_slider_kopf_schriftcolor'
wp option delete 'boxyfy_vergleich_boxen_listen_entries_schriftcolor'
wp option delete 'boxyfy_vergleich_boxen_filterhead_background'
wp option delete 'boxyfy_vergleich_boxen_filter_background'
wp option delete 'boxyfy_vergleich_boxen_slider_background'
wp option delete 'boxyfy_vergleich_boxen_slider_kreis_background'
wp option delete 'boxyfy_vergleich_boxen_reset_hover_backgroundcolor'
wp option delete 'boxyfy_vergleich_boxen_labels_fontsize'
wp option delete 'boxyfy_vergleich_boxen_title_fontsize'
wp option delete 'boxyfy_vergleich_boxen_vornach_fontsize'
wp option delete 'boxyfy_vergleich_boxen_rankinglabel_fontcolor'
wp option delete 'boxyfy_vergleich_boxen_tsproduktlabel'
wp option delete 'boxyfy_vergleich_boxen_rankinglabel_background'
wp option delete 'boxyfy_show_pro_contra'
wp option delete 'boxyfy_vergleich_boxen_deal_ausgabe_schwelle'
wp option delete 'boxyfy_vergleich_boxes_seitenanzahl'
wp option delete 'boxyfy_amazon_slider_reduce_label_schwelle'
wp option delete 'boxyfy_amazon_slider_reduce_label_schwelle_stark'
wp option delete 'boxyfy_amazon_slider_reduce_label_fontcolor'
wp option delete 'boxyfy_amazon_slider_pricereduce_and_button_fontcolor'
wp option delete 'boxyfy_amazon_slider_reduce_label_color'
wp option delete 'boxyfy_amazon_slider_pricereduce_and_button_color'
wp option delete 'boxyfy_amazon_bestseller_boxes_titlecolor'
wp option delete 'boxyfy_amazon_bestseller_boxes_font_size_title'
wp option delete 'boxyfy_amazon_bestseller_boxes_font_size_listpoints'
wp option delete 'boxyfy_amazon_bestseller_boxes_background_first_button'
wp option delete 'boxyfy_amazon_bestseller_boxes_buttontextcolor_first_button'
wp option delete 'boxyfy_amazon_bestseller_boxes_background_second_button'
wp option delete 'boxyfy_amazon_bestseller_boxes_buttontextcolor_second_button'
wp option delete 'boxyfy_amazon_bestseller_boxes_colorofribbon'
wp option delete 'boxyfy_amz_besttable_main_fontsize'
wp option delete 'boxyfy_amz_besttable_headbackground_color'
wp option delete 'boxyfy_amz_besttable_headlink_color'
wp option delete 'boxyfy_amz_besttable_button_backcolor'
wp option delete 'boxyfy_amz_besttable_iconfont_color'
wp option delete 'boxyfy_heatmap_radius'
wp option delete 'boxyfy_heatmap_gradient'
wp option delete 'boxyfy_license_key'
wp option delete 'boxyfy_license_expiry_date'
wp option delete 'boxyfy_license_last_check'
wp option delete 'boxyfy_license_status'
wp option delete 'boxyfy_activation_date'
wp option delete 'boxyfy_box_info_background'
wp option delete 'boxyfy_vergleich_boxen_listen_entries_hovercolor'
wp option delete 'boxyfy_amazon_cache_enable'
wp option delete 'boxyfy_amazon_cache_ttl'
wp option delete 'boxyfy_amz_einzelbox_klein_schriftcolor_hover'

# Delete Transients
wp transient delete '_boxyfy_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'boxyfy_daily_license_check'
wp cron event delete 'boxyfy_productpage_preiswecker_update'
wp cron event delete 'boxyfy_amazon_smallproductbox_preiswecker_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tsprodukt_bewertung'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tsprodukt_bewertung'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tsprodukt_bewertung'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tsprodukt_bewertung'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tsprodukt_price1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tsprodukt_price1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tsprodukt_price1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tsprodukt_price1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tsprodukt_saving_basis'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tsprodukt_saving_basis'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tsprodukt_saving_basis'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tsprodukt_saving_basis'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tsprodukt_prime_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tsprodukt_prime_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tsprodukt_prime_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tsprodukt_prime_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tsprodukt_sales_rank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tsprodukt_sales_rank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tsprodukt_sales_rank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tsprodukt_sales_rank'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tsprodukt_asin_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tsprodukt_asin_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tsprodukt_asin_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tsprodukt_asin_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tsprodukt_amazon_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tsprodukt_amazon_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tsprodukt_amazon_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tsprodukt_amazon_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_boxyfy_produktlabels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_boxyfy_produktlabels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_boxyfy_produktlabels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_boxyfy_produktlabels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_boxyfy_custom_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_boxyfy_custom_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_boxyfy_custom_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_boxyfy_custom_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tsprodukt_image_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tsprodukt_image_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tsprodukt_image_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tsprodukt_image_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tsprodukt_ranking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tsprodukt_ranking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tsprodukt_ranking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tsprodukt_ranking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tsprodukte_hide_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tsprodukte_hide_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tsprodukte_hide_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tsprodukte_hide_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tsprodukte_star_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tsprodukte_star_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tsprodukte_star_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tsprodukte_star_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tsprodukte_star_rating_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tsprodukte_star_rating_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tsprodukte_star_rating_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tsprodukte_star_rating_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tsprodukte_rating_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tsprodukte_rating_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tsprodukte_rating_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tsprodukte_rating_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tsprodukt_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tsprodukt_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tsprodukt_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tsprodukt_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'boxyfy_weitere_preise'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'boxyfy_weitere_preise'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'boxyfy_weitere_preise'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'boxyfy_weitere_preise'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'boxyfy_produkt_vorteile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'boxyfy_produkt_vorteile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'boxyfy_produkt_vorteile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'boxyfy_produkt_vorteile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'boxyfy_produkt_nachteile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'boxyfy_produkt_nachteile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'boxyfy_produkt_nachteile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'boxyfy_produkt_nachteile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_boxyfy_selected_authors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_boxyfy_selected_authors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_boxyfy_selected_authors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_boxyfy_selected_authors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_boxyfy_heatmap_clicks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_boxyfy_heatmap_clicks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_boxyfy_heatmap_clicks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_boxyfy_heatmap_clicks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tsprodukt_asin2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tsprodukt_asin2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tsprodukt_asin2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tsprodukt_asin2'"
