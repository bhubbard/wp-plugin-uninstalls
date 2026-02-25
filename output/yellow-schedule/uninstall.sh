#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpt_ys_master_act'
wp option delete 'wpt_ys_num_days'
wp option delete 'wpt_ys_display_user'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'wpt_ys_display_hidden'

