#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hdf_form_style'
wp option delete 'hdf_flood'

# Clear Cron Jobs
wp cron event delete 'hdf_flood_cron'
wp cron event delete 'hdf_uploads_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_blocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_blocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_blocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_blocks'"
