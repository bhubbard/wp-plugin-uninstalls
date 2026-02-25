#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_nivo_slider_options'
wp option delete 'widget_nivo_slider_for_current_post'
wp option delete 'widget_easy_nivo_slider'
wp option delete 'widget_easy_nivo_slider_nextgen'

