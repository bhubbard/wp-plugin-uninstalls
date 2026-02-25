#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yarns_storage_period'
wp option delete 'yarns_show_debug'
wp option delete 'debug_log'
wp option delete 'yarns_channels'
wp option delete 'yarns_poll_log'
wp option delete 'iw_single_author'
wp option delete 'iw_default_author'

# Clear Cron Jobs
wp cron event delete 'yarns_microsub_server_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yarns_microsub_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yarns_microsub_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yarns_microsub_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yarns_microsub_json'"
