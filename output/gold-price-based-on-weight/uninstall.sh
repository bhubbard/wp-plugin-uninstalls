#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_default_country'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jewellery_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jewellery_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jewellery_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jewellery_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jewellery_field_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jewellery_field_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jewellery_field_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jewellery_field_variation'"
