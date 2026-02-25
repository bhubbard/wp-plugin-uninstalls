#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'single_post_meta_description_options_group'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'single_post_meta_custom_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'single_post_meta_custom_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'single_post_meta_custom_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'single_post_meta_custom_field'"
