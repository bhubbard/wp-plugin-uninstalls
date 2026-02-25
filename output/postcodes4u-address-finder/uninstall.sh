#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pc4u_settings'
wp option delete 'postcodes4u_page_title'
wp option delete 'postcodes4u_page_name'
wp option delete 'postcodes4u_page_id'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_enable_order_comments'

