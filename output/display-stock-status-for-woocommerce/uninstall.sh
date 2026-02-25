#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'show_stocks'
wp option delete 'stock_position'
wp option delete 'display_icon'
wp option delete 'in_stock_color'
wp option delete 'out_stock_color'
wp option delete 'dssfw_backorder_stock'
wp option delete 'out_stock_bg_color'
wp option delete 'dssfw_out_of_stock'
wp option delete 'dssfw_can_be_backorder_stock'
wp option delete 'in_stock_bg_color'
wp option delete 'dssfw_in_stock'
wp option delete 'dssfw_product_backorder_stock'
wp option delete 'dssfw_product_out_of_stock'
wp option delete 'dssfw_product_in_stock'
wp option delete 'dssfw_product_can_be_backorder_stock'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%sslpfwerror' OR option_name LIKE '_site_transient_%sslpfwerror'"

