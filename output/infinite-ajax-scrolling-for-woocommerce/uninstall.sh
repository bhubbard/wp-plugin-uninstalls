#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'image_url'
wp option delete 'scroll_contentSelector'
wp option delete 'scroll_nextSelector'
wp option delete 'scroll_itemSelector'
wp option delete 'scrolling_status'

