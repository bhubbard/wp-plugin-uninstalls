#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'biz_calendar_grant'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user_roles'"

