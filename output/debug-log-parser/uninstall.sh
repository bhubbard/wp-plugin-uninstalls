#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maxDashboardLogsLength'
wp option delete 'debugLogFilePath'
wp option delete 'memoryLimit'
wp option delete 'debug'
wp option delete 'errorLevelColours'

