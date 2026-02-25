#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'turn_off_web'
wp option delete 'noti_maintenance'
wp option delete 'custom_maintenance'

