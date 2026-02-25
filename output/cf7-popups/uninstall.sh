#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%'"
wp option delete 'dismissed-notice-upgrade-code-cf7pp-cww'

