#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_success_bg'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_warning_bg'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_error_bg'"

