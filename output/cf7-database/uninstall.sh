#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cf7d_settings_nav_table%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cf7d_settings_field_%'"
wp option delete 'cf7db_user_reviewed'
wp option delete 'cf7db_review_date'

