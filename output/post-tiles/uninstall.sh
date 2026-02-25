#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'posttile-transparency'
wp option delete 'category-key'
wp option delete 'category-key-jquery'
wp option delete 'featured-images'
wp option delete 'responsive-key'
wp option delete 'animation-style'
wp option delete 'posttiles-width'
wp option delete 'posttiles-height'
wp option delete 'featured-image-width'
wp option delete 'featured-image-height'
wp option delete 'excerpt-length'
wp option delete 'pagination-key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cat_bg_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cat_tx_%'"

