#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'visitor_analytics_io'
wp option delete 'visitor_analytics_migration_done'
wp option delete 'visitor_analytics_site_id'
wp option delete 'visitor_analytics_version'
wp option delete 'visitor_analytics_io_iframe'

