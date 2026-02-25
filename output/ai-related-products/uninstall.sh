#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'st_woo_ai_rel_products_replace_single_rel_products'
wp option delete 'st_woo_ai_rel_products_cart_page_rel_products'
wp option delete 'st_woo_ai_rel_products_cart_ref_single_rel_products'
wp option delete 'st_woo_ai_rel_products_number_single_rel_products'
wp option delete 'st_woo_ai_rel_products_column_single_rel_products'
wp option delete 'st_woo_ai_rel_products_label_single_rel_products'
wp option delete 'st_woo_ai_rel_products_ordered_ref_single_rel_products'
wp option delete 'st_woo_ai_rel_products_description_shortcode'

