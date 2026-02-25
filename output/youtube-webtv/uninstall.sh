#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'yt_webtv_channel_%'"
wp option delete 'yt_webtv_channel_tot'

