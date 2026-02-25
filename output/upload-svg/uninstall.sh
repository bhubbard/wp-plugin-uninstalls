#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_roles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_params'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_file_limit'"

