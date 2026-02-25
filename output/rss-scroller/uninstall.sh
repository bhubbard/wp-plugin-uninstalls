#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rss_scr_width'
wp option delete 'rss_scr_height'
wp option delete 'rss_scr_delay'
wp option delete 'rss_scr_speed'
wp option delete 'rss_scr_num'
wp option delete 'rss_scr_url'
wp option delete 'rss_scr_url2'
wp option delete 'rss_scr_url3'
wp option delete 'rss_scr_title'

