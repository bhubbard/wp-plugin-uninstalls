#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weblounge_woocommerce_prompt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deliveryman_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deliveryman_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deliveryman_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deliveryman_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delivery_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delivery_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delivery_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delivery_status'"
