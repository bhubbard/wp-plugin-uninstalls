#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_advancedsteamwidget'

# Clear Cron Jobs
wp cron event delete 'advanced_steam_widget_update'

