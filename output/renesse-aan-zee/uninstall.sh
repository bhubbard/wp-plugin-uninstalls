#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_updated'"
wp option delete 'renesse_widget_events'
wp option delete 'renesse_widget_activities'
wp option delete 'renesse_widget_plugin_position'

