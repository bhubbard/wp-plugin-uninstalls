#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grid_background_color'
wp option delete 'variation_prices_enabled'
wp option delete 'variations_display_mode'
wp option delete 'variation_prices_appearance'
wp option delete 'variation_prices_show_on'
wp option delete 'label_swatch_shape'
wp option delete 'color_swatch_shape'
wp option delete 'image_swatch_shape'
wp option delete 'label_swatch_shape_size'
wp option delete 'color_swatch_shape_size'
wp option delete 'image_swatch_shape_size'
wp option delete 'vsw-table_columns'
wp option delete 'table_location'
wp option delete 'table_header_color'
wp option delete 'table_out_of_stock_row_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vsw-swatch-term-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vsw-swatch-term-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vsw-swatch-term-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vsw-swatch-term-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vsw-swatch-term-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vsw-swatch-term-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vsw-swatch-term-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vsw-swatch-term-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
