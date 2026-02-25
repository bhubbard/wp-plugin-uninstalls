#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'feedreading_blogroll_settings'
wp option delete 'widget_feedreadingblogroll'
wp option delete 'update_plugins'

