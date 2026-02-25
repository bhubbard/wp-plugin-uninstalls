#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_general'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_turn'"

