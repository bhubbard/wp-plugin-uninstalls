#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eib_blocked_ips'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

