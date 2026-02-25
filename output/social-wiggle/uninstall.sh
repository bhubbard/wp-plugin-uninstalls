#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'socialwiggle'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_valid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_valid_expires'"

