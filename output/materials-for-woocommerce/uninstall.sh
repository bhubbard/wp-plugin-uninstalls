#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'matw_active_template'
wp option delete 'materials_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'matw_material_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'matw_material_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'matw_material_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'matw_material_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'short_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'short_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'short_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'short_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_matw_material_units'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_matw_material_units'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_matw_material_units'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_matw_material_units'"
