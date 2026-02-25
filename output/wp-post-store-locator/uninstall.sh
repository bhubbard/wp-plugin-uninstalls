#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slwp_store_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aka_saved_locators'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aka_saved_locators'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aka_saved_locators'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aka_saved_locators'"
