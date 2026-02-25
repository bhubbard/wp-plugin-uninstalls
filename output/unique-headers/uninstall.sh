#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-activation-date'"
wp option delete 'spam-destroyer-stats'
wp option delete 'spam-destroyer-key'
wp option delete 'spam-destroyer-version'
wp option delete 'spam-destroyer-gd-notice-removed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'taxonomy-header-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'taxonomy-header-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'taxonomy-header-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'taxonomy-header-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_header_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_header_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_header_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_header_image_id'"
