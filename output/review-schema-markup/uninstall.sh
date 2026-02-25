#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'review-max-rating'
wp option delete 'review-interval-rating'
wp option delete 'review-show-rating'
wp option delete 'review-fill-style'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schema_item_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schema_item_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schema_item_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schema_item_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schema_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schema_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schema_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schema_item_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schema_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schema_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schema_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schema_rating'"
