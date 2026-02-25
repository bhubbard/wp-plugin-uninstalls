#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recent-comments'
wp option delete 'widget_rrm_recent_comments'
wp option delete 'recent-posts'

