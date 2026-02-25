#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wordclever_current_user'
wp option delete 'wordclever_used_request'
wp option delete 'wordclever_current_plan'
wp option delete 'wordclever_request_count'
wp option delete 'wordclever_license_key'
wp option delete 'wordclever_license_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wordclever_request_count%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wordclever_used_request%'"

