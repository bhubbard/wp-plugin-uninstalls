#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xml_sitemaps'
wp option delete 'xml_sitemaps_ping'

# Clear Cron Jobs
wp cron event delete 'xml_sitemaps_ping'

