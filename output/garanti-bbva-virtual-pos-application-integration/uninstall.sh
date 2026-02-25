#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%step'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%application_id'"

