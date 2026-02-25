#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooctrl_thumb_size'
wp option delete 'wooctrl_include_thumbs'
wp option delete 'wooctrl_embed_images'
wp option delete 'woocommerce_email_header_image'
wp option delete 'wooctrl_image_wrapper'
wp option delete 'wooctrl_include_cats'
wp option delete 'wooctrl_include_all_cats'
wp option delete 'wooctrl_include_sku'
wp option delete 'wooctrl_custom_image_size'
wp option delete 'wooctrl_latest_test_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
