#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ebz_tracker_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ebz_%'"
wp option delete 'ebz_user_token'
wp option delete 'etKey'
wp option delete 'euKey'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hook'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shortcode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_name'"
wp option delete 'ebz_use_square_img'
wp option delete 'ebz_store_name'
wp option delete 'ebz_is_disabled'
wp option delete 'ebz_is_debug'
wp option delete 'ebz_img_size'
wp option delete 'ebz_prod_rec_position'
wp option delete 'ebz_cat_rec_position'
wp option delete 'ebz_start_rec_position'
wp option delete 'ebz_checkout_rec_position'
wp option delete 'ebz_search_rec_position'
wp option delete 'ebz_cart_rec_position'
wp option delete 'ebz_minicart_rec_position'
wp option delete 'ebz_css_prod_rec_display'
wp option delete 'ebz_css_cat_rec_display'
wp option delete 'ebz_css_start_rec_display'
wp option delete 'ebz_css_checkout_rec_display'
wp option delete 'ebz_css_search_rec_display'
wp option delete 'ebz_css_cart_rec_display'
wp option delete 'ebz_css_minicart_rec_display'
wp option delete 'woocommerce_currency'
wp option delete 'ebz_woocommerce_before_single_product'
wp option delete 'ebz_woocommerce_before_single_product_summary'
wp option delete 'ebz_woocommerce_product_thumbnails'
wp option delete 'ebz_woocommerce_single_product_summary'
wp option delete 'ebz_woocommerce_before_add_to_cart_form'
wp option delete 'ebz_woocommerce_before_variations_form'
wp option delete 'ebz_woocommerce_before_add_to_cart_button'
wp option delete 'ebz_woocommerce_single_variation'
wp option delete 'ebz_woocommerce_after_single_variation'
wp option delete 'ebz_woocommerce_after_add_to_cart_button'
wp option delete 'ebz_woocommerce_after_variations_form'
wp option delete 'ebz_woocommerce_after_add_to_cart_form'
wp option delete 'ebz_woocommerce_product_meta_start'
wp option delete 'ebz_woocommerce_product_meta_end'
wp option delete 'ebz_woocommerce_share'
wp option delete 'ebz_woocommerce_after_single_product_summary'
wp option delete 'ebz_woocommerce_after_single_product'

