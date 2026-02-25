#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%minor_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%bUninstallOnDeactivate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%iDebugLevel'"

