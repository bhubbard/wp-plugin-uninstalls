#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-gridsize'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-thumbwidth'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-thumbheight'"

