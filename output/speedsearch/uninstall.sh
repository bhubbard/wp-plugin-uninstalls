#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_permalinks'
wp option delete 'speedsearch-updating'
wp option delete 'speedsearch-activation-handled'
wp option delete 'speedsearch-user-data-that-activated-the-plugin'
wp option delete 'speedsearch-post-activation-handled'
wp option delete 'speedsearch-synced'
wp option delete 'speedsearch-store-was-authorised'
wp option delete 'speedsearch-setting-debug-mode-products'
wp option delete 'speedsearch-last-plugin-error'
wp option delete 'speedsearch__license_status'
wp option delete 'speedsearch__license_key'
wp option delete 'woocommerce_hide_out_of_stock_items'

# Delete Transients
wp transient delete 'speedsearch_store_authorized'
wp transient delete 'speedsearch-shop-pages-count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'speedsearch-swatch-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'speedsearch-swatch-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'speedsearch-swatch-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'speedsearch-swatch-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'speedsearch_product_last_modified_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'speedsearch_product_last_modified_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'speedsearch_product_last_modified_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'speedsearch_product_last_modified_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'speedsearch-add-to-feed-buffer-last-time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'speedsearch-add-to-feed-buffer-last-time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'speedsearch-add-to-feed-buffer-last-time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'speedsearch-add-to-feed-buffer-last-time'"
