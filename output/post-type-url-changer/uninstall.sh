#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'um_post_type_url_changer_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'um_custom_post_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'um_custom_post_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'um_custom_post_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'um_custom_post_url'"
