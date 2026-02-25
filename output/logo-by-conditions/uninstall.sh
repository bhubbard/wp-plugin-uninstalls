#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_changer'
wp option delete 'logo_selector'
wp option delete 'default_logo'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_type'"
