#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'subiz_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_submit_at'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enabled'"

