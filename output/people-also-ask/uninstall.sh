#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'people_also_asked_version'
wp option delete 'people_also_display-view-more'
wp option delete 'people_also_display-request-removal'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

