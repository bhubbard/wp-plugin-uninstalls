#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'searchTagCloudOption'
wp option delete 'widgetText'
wp option delete 'max_size'
wp option delete 'min_size'
wp option delete 'total_tags'
wp option delete 'checkbox_visible'
wp option delete 'show_author_credit'
wp option delete 'days_to_display'

