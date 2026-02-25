#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%check_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%use_dot'"

