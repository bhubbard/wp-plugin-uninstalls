#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autosaver-for-cf7-autosaver'
wp option delete 'autosaver-for-cf7-fill-with-facebook'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'autosaver-for-cf7-%'"

