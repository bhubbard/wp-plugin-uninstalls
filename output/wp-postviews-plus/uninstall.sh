#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%options'"
wp option delete 'PV+_botagent'
wp option delete 'PV+_option'
wp option delete 'PV+_useragent'
wp option delete 'PV+_views'
wp option delete 'PV+_DBversion'

