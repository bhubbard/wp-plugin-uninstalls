#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mrstar_show_%'"
wp option delete 'mrstar_show_today'
wp option delete 'mrstar_show_yesterday'
wp option delete 'mrstar_show_last_7_days'
wp option delete 'mrstar_show_last_30_days'
wp option delete 'mrstar_show_this_month'
wp option delete 'mrstar_show_this_year'
wp option delete 'mrstar_show_total'

