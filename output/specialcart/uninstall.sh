#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sc_cart_theme'
wp option delete 'sc_cart_primary'
wp option delete 'sc_cart_icon'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
