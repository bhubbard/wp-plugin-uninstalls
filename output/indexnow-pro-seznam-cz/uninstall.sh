#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%admin_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%is_valid_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%auto_submission_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%failed_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%passed_count'"
wp option delete 'indexnow-is_valid_api_key'
wp option delete 'indexnow-admin_api_key'
wp option delete 'indexnow-failed_count'
wp option delete 'indexnow-passed_count'
wp option delete 'indexnow-auto_submission_enabled'

