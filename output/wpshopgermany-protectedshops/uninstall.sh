#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsg_installed'
wp option delete 'wpshopgermany_ts_auto'
wp option delete 'wpshopgermany_ts_shopid'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpshopgermany_ts_version_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpshopgermany_ts_time_%'"
wp option delete 'wpsg_ps_cron'
wp option delete 'cron'
wp option delete 'mod_ps'

# Clear Cron Jobs
wp cron event delete 'wpsg_ps_task'

