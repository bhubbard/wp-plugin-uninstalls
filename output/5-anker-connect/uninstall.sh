#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'last_boat_import'
wp option delete 'last_boat_import_page'
wp option delete 'last_basement_import'
wp option delete 'last_basement_import_page'
wp option delete 'connect_options'
wp option delete 'connect_options_tools'

# Clear Cron Jobs
wp cron event delete 'anker_connect_schedule_hook_boats'
wp cron event delete 'anker_connect_schedule_hook_basements'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'com5anker_mm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'com5anker_mm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'com5anker_mm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'com5anker_mm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'com5anker_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'com5anker_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'com5anker_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'com5anker_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'com5anker_region'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'com5anker_region'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'com5anker_region'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'com5anker_region'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'com5anker_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'com5anker_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'com5anker_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'com5anker_data'"
