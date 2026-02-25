#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'youtube_channel_defaults'
wp option delete 'youtube_channel_version'
wp option delete 'youtube_channel_db_ver'
wp option delete 'youtube_channel_dismissed_notices'

