#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_coupon_listing_show_on_product_page'
wp option delete 'wc_coupon_listing_mobile_screen_size'
wp option delete 'wc_coupon_listing_required_product'
wp option delete 'wc_coupon_listing_title'

