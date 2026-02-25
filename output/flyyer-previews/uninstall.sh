#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flyyer_project_slug'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

