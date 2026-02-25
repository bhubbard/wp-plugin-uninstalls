#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'image-credits-nofollow_pages'
wp option delete 'image-credits-nofollow_sep'
wp option delete 'image-credits-nofollow_before'
wp option delete 'image-credits-nofollow_after'
wp option delete 'image-credits-nofollow_display'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_source_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_source_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_source_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_source_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_source_dofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_source_dofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_source_dofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_source_dofollow'"
