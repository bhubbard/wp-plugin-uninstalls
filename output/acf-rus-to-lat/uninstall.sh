#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activated_on'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_on'"

