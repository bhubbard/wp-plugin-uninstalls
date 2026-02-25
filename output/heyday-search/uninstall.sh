#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'heyday_set_meta_data'
wp option delete 'heyday_last_product_hash'
wp option delete 'heyday_merchant_feed_affid'
wp option delete 'heyday_merchant_feed_pass'
wp option delete 'heyday_merchant_feed_err'
wp option delete 'heyday_merchant_feed_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
