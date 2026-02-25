#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'address-bar-colorizer-default-color'
wp option delete 'address-bar-colorizer-sitewide-enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address-bar-colorizer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address-bar-colorizer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address-bar-colorizer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address-bar-colorizer'"
