#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aviary_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

