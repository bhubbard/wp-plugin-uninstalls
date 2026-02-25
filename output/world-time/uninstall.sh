#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wt_time_1'
wp option delete '_wt_time_2'
wp option delete '_wt_time_3'
wp option delete '_wt_time_4'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_wt_time_%'"

