#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-activation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-ID'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-deactivation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-debug'"

