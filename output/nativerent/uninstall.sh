#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nativerent_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nativerent.%'"
wp option delete 'nativerent.jsURL'
wp option delete 'nativerent.cssURL'
wp option delete 'nativerent.selfCheckReport'
wp option delete 'nativerent.adUnitsConfig'
wp option delete 'wp_rocket_settings'

