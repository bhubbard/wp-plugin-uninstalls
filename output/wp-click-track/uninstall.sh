#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'click_tracker'
wp option delete 'update_plugins'
wp option delete 'GoogleAnalyticsPP'

