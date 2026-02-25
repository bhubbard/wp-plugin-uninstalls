#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maid_title'
wp option delete 'maid_subtitle'
wp option delete 'maid_button_text'
wp option delete 'max_bedrooms'
wp option delete 'max_bathrooms'
wp option delete 'base_price'
wp option delete 'price_per_bathroom'
wp option delete 'price_per_bedroom'
wp option delete 'supervisor_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_b'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_b'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_b'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_b'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_c'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_c'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_c'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_c'"
