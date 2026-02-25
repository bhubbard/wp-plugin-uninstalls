#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'customer_who_viewed_title'
wp option delete 'total_items_display'
wp option delete 'category_filter'
wp option delete 'show_image_filter'
wp option delete 'show_price_filter'
wp option delete 'show_addtocart_filter'
wp option delete 'product_order'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'customer_also_viewed_%'"

