#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'related_show'
wp option delete 'related_list'
wp option delete 'related_content'
wp option delete 'related_content_all'
wp option delete 'related_content_rss'
wp option delete 'related_content_title'
wp option delete 'related_content_extended'
wp option delete 'related_double_plugin'
wp option delete 'related_du_show'
wp option delete 'related_du_list'
wp option delete 'related_du_content'
wp option delete 'related_du_content_all'
wp option delete 'related_du_content_rss'
wp option delete 'related_du_content_title'
wp option delete 'related_du_content_extended'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'related_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'related_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'related_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'related_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'related_du_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'related_du_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'related_du_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'related_du_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
