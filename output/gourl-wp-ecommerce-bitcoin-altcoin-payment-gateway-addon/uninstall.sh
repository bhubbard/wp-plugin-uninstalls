#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%logo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%defcoin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%deflang'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%emultiplier'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ostatus'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ostatus2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%iconwidth'"
wp option delete 'currency_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_log'"

