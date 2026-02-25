#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tplp_popular_posts'
wp option delete 'tplp_latest_posts'
wp option delete 'tplp_popular_title'
wp option delete 'tplp_latest_title'

