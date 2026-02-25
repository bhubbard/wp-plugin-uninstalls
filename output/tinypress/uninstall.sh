#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tinypress_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tiny_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tiny_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tiny_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tiny_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'target_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'target_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'target_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'target_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'source_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'source_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'source_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'source_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'source_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'source_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'source_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'source_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'redirection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'redirection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'redirection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'redirection'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_pb_settings_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_pb_settings_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_pb_settings_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pb_settings_errors_%'"
