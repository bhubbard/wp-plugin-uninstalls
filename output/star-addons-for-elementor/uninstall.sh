#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'new_settings2'
wp option delete 'new_settings4'
wp option delete 'new_settings1'
wp option delete 'new_settings3'
wp option delete 'new_settings5'
wp option delete 'new_settings6'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'showcase-taxonomy-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'showcase-taxonomy-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'showcase-taxonomy-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'showcase-taxonomy-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'showcase-tag-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'showcase-tag-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'showcase-tag-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'showcase-tag-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
