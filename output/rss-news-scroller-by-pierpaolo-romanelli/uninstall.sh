#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'npr_news_items'
wp option delete 'npr_rss_url'
wp option delete 'npr_speed'
wp option delete 'npr_pause'
wp option delete 'npr_direction'
wp option delete 'npr_autoplay'
wp option delete 'npr_opacity'
wp option delete 'npr_full3D'
wp option delete 'npr_title'
wp option delete 'npr_rss_title'

