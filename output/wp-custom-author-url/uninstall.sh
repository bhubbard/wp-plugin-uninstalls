#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_custom_author_url_global_options'
wp option delete 'wp_custom_author_url_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'use_custom_author_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'use_custom_author_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'use_custom_author_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'use_custom_author_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_author_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_author_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_author_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_author_url'"
