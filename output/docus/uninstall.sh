#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apikey'
wp option delete 'play_list_id'
wp option delete 'video_limit'
wp option delete 'page_layout_style'

