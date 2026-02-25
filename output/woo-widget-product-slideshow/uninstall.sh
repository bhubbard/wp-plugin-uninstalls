#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_style_version'"
wp option delete 'woo_gallery_widget_lite_version'
wp option delete 'a3_wc_widget_product_slider_just_installed'
wp option delete 'wc_widget_product_slider_lite_style_version'
wp option delete 'wc_product_slider_a3_card_skin_card_layout_settings'
wp option delete 'woocommerce_db_version'
wp option delete 'wc_product_slider_widget_skin_settings'
wp option delete 'woocommerce_version'
wp option delete 'wc_product_slider_a3_widget_skin_global_settings'
wp option delete 'wc_product_slider_a3_widget_skin_dimensions_settings'
wp option delete 'wc_product_slider_a3_widget_skin_control_settings'
wp option delete 'wc_product_slider_a3_widget_skin_pager_settings'
wp option delete 'wc_product_slider_a3_widget_skin_title_settings'
wp option delete 'wc_product_slider_a3_widget_skin_price_settings'
wp option delete 'wc_product_slider_a3_widget_skin_product_link_settings'
wp option delete 'wc_product_slider_a3_widget_skin_category_tag_link_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_toggle_box_open'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-custom-boxes'"
wp option delete 'wc_product_slider_global_settings'
wp option delete 'wc_product_slider_a3_card_skin_global_settings'
wp option delete 'wc_product_slider_a3_card_skin_card_style_settings'
wp option delete 'wc_product_slider_a3_card_skin_control_settings'
wp option delete 'wc_product_slider_a3_card_skin_description_settings'
wp option delete 'wc_product_slider_a3_card_skin_footer_cell_settings'
wp option delete 'wc_product_slider_a3_card_skin_pager_settings'
wp option delete 'wc_product_slider_a3_card_skin_price_settings'
wp option delete 'wc_product_slider_a3_card_skin_title_settings'
wp option delete 'wc_product_slider_a3_mobile_skin_card_container_settings'
wp option delete 'wc_product_slider_a3_mobile_skin_category_tag_link_settings'
wp option delete 'wc_product_slider_a3_mobile_skin_pager_settings'
wp option delete 'wc_product_slider_a3_mobile_skin_price_settings'
wp option delete 'wc_product_slider_a3_mobile_skin_title_settings'
wp option delete 'wc_product_slider_a3_carousel_global_settings'
wp option delete 'wc_product_slider_a3_carousel_container_settings'
wp option delete 'wc_product_slider_a3_carousel_control_settings'
wp option delete 'wc_product_slider_a3_carousel_pager_settings'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_status' OR option_name LIKE '_site_transient_%_status'"
wp transient delete 'wc_featured_products'
wp transient delete 'wc_products_onsale'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
