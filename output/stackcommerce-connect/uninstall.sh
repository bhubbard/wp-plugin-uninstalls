#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stackcommerce_wp_author'
wp option delete 'stackcommerce_wp_post_status'
wp option delete 'stackcommerce_wp_categories'
wp option delete 'stackcommerce_wp_tags'
wp option delete 'stackcommerce_wp_featured_image'
wp option delete 'stackcommerce_wp_secret'
wp option delete 'stackcommerce_wp_connection_status'
wp option delete 'stackcommerce_wp_account_id'
wp option delete 'stackcommerce_wp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
