#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_custom_entropy'
wp option delete 'widget_wp_custom_author_image'
wp option delete 'widget_contexts'

# Delete Transients
wp transient delete 'wp_custom_author_image_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_custom_author_image_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_custom_author_image_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_custom_author_image_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_custom_author_image_cache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_custom_aboutme_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_custom_aboutme_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_custom_aboutme_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_custom_aboutme_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_custom_author_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_custom_author_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_custom_author_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_custom_author_image'"
