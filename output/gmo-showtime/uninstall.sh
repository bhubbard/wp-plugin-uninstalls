#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmoshowtime-maintenance'
wp option delete 'gmoshowtime-page-types'
wp option delete 'gmoshowtime-transition'
wp option delete 'gmoshowtime-css-class'
wp option delete 'gmoshowtime-max-pages'
wp option delete 'gmoshowtime-image-size'
wp option delete 'gmoshowtime-apply-gallery'
wp option delete 'gmoshowtime-background-color'
wp option delete 'gmoshowtime-text-color'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_slide_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_slide_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_slide_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_slide_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_slide_blank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_slide_blank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_slide_blank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_slide_blank'"
