#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csg_db_version'

# Clear Cron Jobs
wp cron event delete 'csg_create_sitemap'
wp cron event delete 'csg_create_sitemap '

