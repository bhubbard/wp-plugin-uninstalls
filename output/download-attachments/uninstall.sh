#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'download_attachments_general'
wp option delete 'download_attachments_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_da_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_da_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_da_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_da_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_da_downloads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_da_downloads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_da_downloads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_da_downloads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_da_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_da_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_da_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_da_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
