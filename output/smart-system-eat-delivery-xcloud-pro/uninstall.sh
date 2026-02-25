#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xcloud_eat_option'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_option'"

