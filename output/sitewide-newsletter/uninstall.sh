#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'site_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '% header'"

