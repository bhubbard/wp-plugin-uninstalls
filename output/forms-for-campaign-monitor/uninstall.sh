#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'campaign_monitor_settings'
wp option delete 'active_sitewide_plugins'

