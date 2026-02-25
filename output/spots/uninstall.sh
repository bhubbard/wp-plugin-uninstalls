#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spots_norobots'
wp option delete 'spots_cache_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_setup'"
wp option delete 'spots_do_once_setup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spot_part'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spot_part'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spot_part'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spot_part'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
