#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rnu_plugin_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_username_validation_pattern'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_require_login'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_username_validation_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_end_date'"
wp option delete 'rnu_start_date'
wp option delete 'rnu_end_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_category'"
wp option delete 'rnu_db_version'
wp option delete 'rnu_username_validation_pattern'
wp option delete 'rnu_username_validation_title'
wp option delete 'rnu_require_login'
wp option delete 'rnu_all_users'
wp option delete 'rnu_old_format'

