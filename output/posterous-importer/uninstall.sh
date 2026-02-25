#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'posterous_import'
wp option delete 'posterous_hostname'
wp option delete 'posterous_username'
wp option delete 'posterous_password'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attachment'"
