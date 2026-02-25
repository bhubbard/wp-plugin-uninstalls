#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'btw_importer_data'
wp option delete 'btw_importer_status'

# Delete Transients
wp transient delete 'btw_importer_current_file'
wp transient delete 'btw_importer_image_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_permalink'"
