#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-migrated-from'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-lang-time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-options'"

