#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ibn_settings'
wp option delete 'ibn_title'
wp option delete 'ibn_background_color'
wp option delete 'ibn_text_color'
wp option delete 'ibn_pinned_post_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ibn_expiration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ibn_expiration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ibn_expiration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ibn_expiration_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ibn_breaking_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ibn_breaking_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ibn_breaking_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ibn_breaking_title'"
