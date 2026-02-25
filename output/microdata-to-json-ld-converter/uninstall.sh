#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mdtj_remove_microdata'
wp option delete 'mdtj_regenerate_on_update'
wp option delete 'mdtj_create_json'
wp option delete 'mdtj_scheduler_settings'
wp option delete 'mdtj_last_scheduled_rebuild_log'

# Delete Transients
wp transient delete 'mdtj_rebuild_queue'

# Clear Cron Jobs
wp cron event delete 'mdtj_cron_rebuild_initiator'
wp cron event delete 'mdtj_cron_rebuild_worker'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mdtj_json_ld'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mdtj_json_ld'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mdtj_json_ld'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mdtj_json_ld'"
