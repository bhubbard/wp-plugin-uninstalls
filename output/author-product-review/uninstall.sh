#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'review-max-rating'
wp option delete 'review-interval-rating'
wp option delete 'review-show-rating'
wp option delete 'review-fill-style'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schema_product_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schema_product_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schema_product_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schema_product_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schema_product_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schema_product_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schema_product_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schema_product_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schema_price_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schema_price_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schema_price_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schema_price_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schema_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schema_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schema_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schema_rating'"
