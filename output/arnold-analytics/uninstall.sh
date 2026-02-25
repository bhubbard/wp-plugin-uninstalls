#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wparnold_site_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

