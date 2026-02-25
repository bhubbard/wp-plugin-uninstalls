#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%usernames'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%convert'"

