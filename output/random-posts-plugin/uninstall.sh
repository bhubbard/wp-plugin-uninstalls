#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'random-posts'
wp option delete 'widget_rrm_random_posts'
wp option delete 'recent-posts'

