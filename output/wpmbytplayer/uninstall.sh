#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_dismiss'"
wp option delete 'mbYTPlayer_version'
wp option delete 'mbYTPlayer_is_active'
wp option delete 'mbYTPlayer_video_url'
wp option delete 'mbYTPlayer_video_page'
wp option delete 'mbYTPlayer_remember_last_time'
wp option delete 'mbYTPlayer_init_delay'
wp option delete 'mbYTPlayer_price'
wp option delete 'mbYTPlayer_Home_is_active'
wp option delete 'mbYTPlayer_home_video_url'
wp option delete 'mbYTPlayer_home_video_page'

