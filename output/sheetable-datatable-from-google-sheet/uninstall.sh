#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sheetable_install_time'
wp option delete 'sheetable_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sheetable_performance_%'"

# Delete Transients
wp transient delete 'sheetable_performance_settings'

