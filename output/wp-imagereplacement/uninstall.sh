#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_replacements'"
wp option delete 'wp_imagereplacement_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

