#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_custom_post_template'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_template'"
