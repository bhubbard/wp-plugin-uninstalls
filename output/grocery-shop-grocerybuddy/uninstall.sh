#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wgby_plugin_is_activated'
wp option delete 'grocerybuddy_version'
wp option delete 'wgby_main_menu_name_wg'
wp option delete 'wgby_main_categories_list_name'
wp option delete 'wgby_exclude_categories'
wp option delete 'wgby_exclude_products'
wp option delete 'wgby_fees_order_less_than'
wp option delete 'wgby_flat_shipping_rate'
wp option delete 'wgby_color_primer'
wp option delete 'wgby_color_secondary'
wp option delete 'wgby_color_headings'
wp option delete 'wgby_color_text'
wp option delete 'wgby_color_transparent_text'
wp option delete 'wgby_sort_categories'
wp option delete 'wgby_minimum_order'
wp option delete 'wgby_bag_empty_headings'
wp option delete 'wgby_bag_empty_description'

