#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 's2s_widget_id'
wp option delete 's2s_widget_height'
wp option delete 's2s_widget_width'
wp option delete 's2s_display_posts'
wp option delete 's2s_display_floating'

