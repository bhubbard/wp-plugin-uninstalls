#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dont-use-cdn'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_include_query'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_include_external'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_exclude'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_debug'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin'"

