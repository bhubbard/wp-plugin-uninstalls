#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'image_wall_regen'
wp option delete 'image_wall_regen_method'
wp option delete 'image_wall_regen_salt'

# Clear Cron Jobs
wp cron event delete 'tmn_iw_attachment_hash_regenerate'
wp cron event delete 'tmn_iw_regenerate_action'
wp cron event delete 'tmn_tmp_iw_regenerate_action'
wp cron event delete 'iw_attachment_hash_regenerate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmn-iw-hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmn-iw-hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmn-iw-hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmn-iw-hash'"
