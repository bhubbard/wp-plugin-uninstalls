#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cache-warmer-updating'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cache-warmer-setting-external-warmer-license-key%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cache-warmer-setting-external-warmer-key-validation-endpoint-last-response-code%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cache-warmer-setting-external-warmer-key-validation-endpoint-last-response-body%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cache-warmer-setting-external-warmer-servers-to-use%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cache-warmer-setting-external-warmer-interval%'"
wp option delete 'cache-warmer-last-delete-external-warmer-logs'
wp option delete 'cache-warmer-intervals-scheduling-post-activation-handled'
wp option delete 'cache-warmer-setting-user-agent'
wp option delete 'cache-warmer-setting-user-agents'
wp option delete 'cache-warmer-setting-for-how-many-days-to-keep-the-logs'
wp option delete 'cache-warmer-setting-depth'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

