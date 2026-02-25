#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eazly_placeholder_image_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eazly_dummy_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eazly_dummy_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eazly_dummy_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eazly_dummy_content'"
