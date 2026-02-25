#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uptime_robot_option_show_id'
wp option delete 'uptime_robot_option_show_type'
wp option delete 'uptime_robot_option_show_ratio'
wp option delete 'uptime_robot_option_api_key'

