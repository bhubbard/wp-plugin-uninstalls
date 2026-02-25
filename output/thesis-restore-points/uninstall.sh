#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thesis_options'
wp option delete 'thesis_design_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'path'"
