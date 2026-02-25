#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'show_gallery'
wp option delete 'single_view_image_width'
wp option delete 'wpsc_gallery_image_height'
wp option delete 'wpsc_gallery_image_width'
wp option delete 'product_view'
wp option delete 'grid_number_per_row'
wp option delete 'product_image_width'
wp option delete 'product_image_height'

