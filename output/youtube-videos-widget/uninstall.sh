#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'myyt_username'
wp option delete 'myyt_hd'
wp option delete 'myyt_width'
wp option delete 'myyt_height'
wp option delete 'myyt_display_many'
wp option delete 'myyt_display_thumb'
wp option delete 'myyt_display_dateadded'
wp option delete 'myyt_enable_hd'
wp option delete 'myyt_orderby'
wp option delete 'Youtube_videos'

