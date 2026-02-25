#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcdrm_woocommerce_prompt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rider_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rider_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rider_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rider_id'"
