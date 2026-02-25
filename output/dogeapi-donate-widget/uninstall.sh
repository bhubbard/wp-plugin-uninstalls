#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dogeAPI_on_page'
wp option delete 'dogeAPI_on_post'
wp option delete 'animation_type'
wp option delete 'dogeAPI_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_address'"
