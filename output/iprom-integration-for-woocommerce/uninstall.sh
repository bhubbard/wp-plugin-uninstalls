#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iprom_site_path'
wp option delete 'iprom-site-path'

# Clear Cron Jobs
wp cron event delete 'generate_iprom_feed'

