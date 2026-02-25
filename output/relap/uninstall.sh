#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rows'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%orientation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%description'"

