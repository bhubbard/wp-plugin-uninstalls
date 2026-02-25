#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rsxh-exclude-post-type'
wp option delete 'rsxh-exclude-pages'
wp option delete 'rsxh-exclude-pcpt-posts'
wp option delete 'rsxh-include-search-option'

# Clear Cron Jobs
wp cron event delete 'sitemap_in_schedule_interval'

