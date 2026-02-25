#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsc_also_bought'
wp option delete 'wpsc_also_bought_limit'
wp option delete 'wpsc_crosssale_image_width'
wp option delete 'wpsc_crosssale_image_height'
wp option delete 'wpsc_crosssales_db_version'
wp option delete 'product_image_width'
wp option delete 'product_image_height'
wp option delete 'show_thumbnails'

