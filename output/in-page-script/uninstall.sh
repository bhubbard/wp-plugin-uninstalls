#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ips_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_header_script'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_header_script'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_header_script'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_header_script'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_footer_script'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_footer_script'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_footer_script'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_footer_script'"
