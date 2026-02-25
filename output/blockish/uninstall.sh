#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blockish_version'
wp option delete 'blockish_installed_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed'"
wp option delete 'blockish_inactive_blocks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_list'"
wp option delete 'blockish_device_list'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dismissed_notice_%' OR option_name LIKE '_site_transient_dismissed_notice_%'"

