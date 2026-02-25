#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_avertere_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-avertere-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-avertere-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-avertere-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-avertere-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-avertere-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-avertere-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-avertere-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-avertere-type'"
