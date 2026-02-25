#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yay-swatches-sold-out-customize-settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'yay-swatches-attribute-style-%'"
wp option delete 'yay-swatches-swatch-customize-settings'
wp option delete 'yay-swatches-button-customize-settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'yay-swatches-swatch-color-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'yay-swatches-show-hide-color-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'yay-swatches-swatch-dual-color-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'yay-swatches-swatch-image-%'"
wp option delete 'yayswatches_reviewed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'yay-swatches-attribute-show-archive-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yay_swatches_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yay_swatches_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yay_swatches_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yay_swatches_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
