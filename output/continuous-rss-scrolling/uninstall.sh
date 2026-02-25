#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crs_rss_url'
wp option delete 'crs_display_width'
wp option delete 'crs_display_count'
wp option delete 'crs_record_height'
wp option delete 'crs_speed'
wp option delete 'crs_waitseconds'
wp option delete 'crs_title'

