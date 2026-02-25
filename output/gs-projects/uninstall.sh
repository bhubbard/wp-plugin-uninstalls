#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gs_projects_active_time'
wp option delete 'gs_projects_review_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'gsplugins-pro-plugins'
wp transient delete 'gsplugins_free_plugins'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_skil'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_skil'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_skil'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_skil'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_crev'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_crev'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_crev'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_crev'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_crat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_crat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_crat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_crat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
