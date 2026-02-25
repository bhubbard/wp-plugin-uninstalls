#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'print-me_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

