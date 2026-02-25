#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom_post_type_widget_blocks_calendar_has_published_posts'
wp option delete 'post_count'

