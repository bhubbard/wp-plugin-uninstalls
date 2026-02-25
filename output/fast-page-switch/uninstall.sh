#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fps_post_types'
wp option delete 'fps_post_statuses'
wp option delete 'fps_min_cap'

