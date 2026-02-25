#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ingenidev_gift_hide_out_of_stock'
wp option delete 'ingenidev_gift_hide_non_gift_items'
wp option delete 'ingenidev_gift_products'

