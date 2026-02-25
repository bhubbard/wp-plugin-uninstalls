#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsx_rss_feed_image_attachment_id'
wp option delete 'wsx_logo_title'
wp option delete 'wsx_logo_target_link'
wp option delete 'wsx_rss_feed_url'
wp option delete 'wsx_rss_feed_count'

# Delete Transients
wp transient delete 'wsx-rss-feed-admin-notice'

