#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zazzle_gallery_name'
wp option delete 'zazzle_theme'
wp option delete 'zazzle_background_color'
wp option delete 'zazzle_product_image_size'
wp option delete 'zazzle_product_line'

