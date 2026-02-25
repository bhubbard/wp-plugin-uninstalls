#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'userlog_databaselastupdate'
wp option delete 'userlog_version'
wp option delete 'userlog_timezone'

