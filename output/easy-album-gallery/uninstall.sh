#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'egallery_installed'
wp option delete 'egallery_version'
wp option delete 'egallery_notify_review'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'egallery_gallery_uploads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'egallery_gallery_uploads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'egallery_gallery_uploads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'egallery_gallery_uploads'"
