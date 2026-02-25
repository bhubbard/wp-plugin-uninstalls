#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'related_post_settings'
wp option delete 'related_post_info'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'related_post_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'related_post_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'related_post_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'related_post_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'related_post_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'related_post_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'related_post_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'related_post_enable'"
