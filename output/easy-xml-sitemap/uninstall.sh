#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_xml_sitemap_settings'
wp option delete 'easy_xml_sitemap_stats'

# Clear Cron Jobs
wp cron event delete 'easy_xml_sitemap_do_ping'
wp cron event delete 'easy_xml_sitemap_cleanup'

