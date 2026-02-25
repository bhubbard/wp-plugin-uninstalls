#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'
wp option delete 'elementor_page_title_selector'
wp option delete 'elementor_active_kit'
wp option delete 'yith_woocompare_fields_attrs'
wp option delete 'yith_woocompare_is_button'
wp option delete 'yith_woocompare_button_text'
wp option delete 'yith_woocompare_compare_button_in_product_page'
wp option delete 'yith_woocompare_compare_button_in_products_list'
wp option delete 'yith_woocompare_auto_open'
wp option delete 'yith_woocompare_table_text'
wp option delete 'yith_woocompare_price_end'
wp option delete 'yith_woocompare_add_to_cart_end'
wp option delete 'yith_woocompare_image_size'
wp option delete 'cyclone_plugin_activate_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
