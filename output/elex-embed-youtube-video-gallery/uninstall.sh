#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again'"
wp option delete 'elex_yt_configuration_settings'
wp option delete 'elex_yt_gallery_settings'
wp option delete 'elex_yt_video_player_settings'
wp option delete 'system_info_remote_url'

# Clear Cron Jobs
wp cron event delete 'elex_yt_gallery_sync_now'

