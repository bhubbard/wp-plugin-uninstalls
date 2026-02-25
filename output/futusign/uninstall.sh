#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'futusign_option_name'
wp option delete 'futusign_db_version'
wp option delete 'futusign_monitor_option_name'

