#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'yay-swatches-collection-customize-settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_review_count'"
