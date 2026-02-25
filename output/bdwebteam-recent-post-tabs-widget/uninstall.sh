#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bdwebteam-recent-post-tabs-widget'

# Delete Transients
wp transient delete 'bdwebteam_tabbed_recent_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
