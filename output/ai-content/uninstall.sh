#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_deactivated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-fc-styles'"
wp option delete 'wai_current_csv'
wp option delete 'wai_settings'

