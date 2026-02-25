#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adp_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ios-app-%'"

