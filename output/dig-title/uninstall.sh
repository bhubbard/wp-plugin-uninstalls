#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dig_title_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dig_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dig_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dig_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dig_title'"
