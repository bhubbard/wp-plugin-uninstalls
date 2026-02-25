#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sem_entropy'
wp option delete 'widget_author_image'
wp option delete 'widget_contexts'

# Delete Transients
wp transient delete 'author_image_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_image_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_image_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_image_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_image_cache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sem_aboutme_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sem_aboutme_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sem_aboutme_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sem_aboutme_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_image'"
