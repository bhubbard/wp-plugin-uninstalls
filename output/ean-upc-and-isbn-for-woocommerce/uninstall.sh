#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'euaifw_show_cart_page'
wp option delete 'ean_frontend_barcode_color'
wp option delete 'ean_frontend_barcode_bg_color'
wp option delete 'ean_frontend_barcode_width'
wp option delete 'ean_frontend_barcode_height'
wp option delete 'ean_frontend_barcode_display_label'
wp option delete 'ean_front_barcode_label_font_size'
wp option delete 'ean_front_barcode_label_margin'
wp option delete 'ean_front_barcode_label_font_style'
wp option delete 'ean_front_barcode_label_text_align'
wp option delete 'ean_front_barcode_label_text_position'
wp option delete 'ean_front_barcode_label_font_family'
wp option delete 'euaifw_enable_ean'
wp option delete 'euaifw_show_single_prod_page'
wp option delete 'ean_text_position_sinpro'
wp option delete 'ean_singlepro_label'
wp option delete 'euaifw_show_shop_page'
wp option delete 'ean_text_position_shop'
wp option delete 'ean_shop_label'
wp option delete 'show_ean_order_items_table_thankyou_page'
wp option delete 'maincolor'
wp option delete 'mainbackcolor'
wp option delete 'euaifw_font_size'
wp option delete 'euaifw_enable_barcode'
wp option delete 'euaifw_show_barcode_single_pro'
wp option delete 'ean_barcode_position_sinpro'
wp option delete 'euaifw_show_barcode_shop_page'
wp option delete 'ean_barcode_position_shop'
wp option delete 'euaifw_show_barcode_cart_page'
wp option delete 'show_ean_barcode_imag_thankyou_page'
wp option delete 'euaifw_search_product'
wp option delete 'show_ean_admin_order_item'
wp option delete 'ean_admin_edit_position'
wp option delete 'ean_variation_admin_edit_position'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%euaifwerror' OR option_name LIKE '_site_transient_%euaifwerror'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
