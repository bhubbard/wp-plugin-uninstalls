#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%notices'"
wp option delete 'only_members_access_settings'

# Clear Cron Jobs

