#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'th_variation_swatches'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_attribute_image'"
