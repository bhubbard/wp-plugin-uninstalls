#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'debug_robot_host'
wp option delete 'debug_robot_port'
wp option delete 'debug_robot_target'
wp option delete 'debug_robot_server'

