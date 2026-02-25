#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'youtube_live_settings'
wp option delete 'wp-youtube-live-1714-notice-dismissed'
wp option delete 'youtube_live_version'

# Delete Transients
wp transient delete 'wp-youtube-live-api-response'
wp transient delete 'youtube-live-upcoming-videos'

