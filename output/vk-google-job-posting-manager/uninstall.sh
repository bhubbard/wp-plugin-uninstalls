#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vgjpm_create_jobpost_posttype'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vgjpm_post_type_display_customfields%'"
wp option delete 'vkjpm_common_fields'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vkjp_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vkjp_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vkjp_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vkjp_title'"
