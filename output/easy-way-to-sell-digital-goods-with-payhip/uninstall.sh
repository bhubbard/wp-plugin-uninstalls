#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_payhip_sell_digital_slug'
wp option delete 'wp_payhip_sell_digital_review_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product'"
