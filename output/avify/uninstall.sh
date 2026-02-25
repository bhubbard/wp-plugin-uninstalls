#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'avify-settings-options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avify_quote_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avify_quote_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avify_quote_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avify_quote_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avify_shop_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avify_shop_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avify_shop_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avify_shop_id'"
