#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clamav_host'
wp option delete 'clamav_port'
wp option delete 'clamav_timeout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'clamav_%'"

