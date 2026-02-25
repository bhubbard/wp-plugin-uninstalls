#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kblog_danmaku_url'
wp option delete 'kblog_danmaku_token'
wp option delete 'kblog_enable_hls'
wp option delete 'kblog_enable_flv'
wp option delete 'kblog_danmaku_dplayer_version'
wp option delete 'kblog_danmaku_dplayer_version_check'

