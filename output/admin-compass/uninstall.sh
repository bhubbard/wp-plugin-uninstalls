#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'admin_compass_version'
wp option delete 'admin_compass_indexing_in_progress'
wp option delete 'admin_compass_indexing_started'

# Delete Transients
wp transient delete 'admin_compass_reindex_admin_menu'

# Clear Cron Jobs
wp cron event delete 'admin_compass_rebuild_index'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
