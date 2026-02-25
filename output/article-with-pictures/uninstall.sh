#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'article_with_pictures_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'article_with_pictures_attach_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'article_with_pictures_attach_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'article_with_pictures_attach_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'article_with_pictures_attach_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'article_with_pictures_attach_id_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'article_with_pictures_attach_id_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'article_with_pictures_attach_id_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'article_with_pictures_attach_id_key'"
