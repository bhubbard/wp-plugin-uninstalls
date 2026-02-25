#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ns_product_brand_active'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brand-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brand-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brand-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brand-image-id'"
