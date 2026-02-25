#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%'"
wp option delete 'deploy_sync_content__tracking_init_once'
wp option delete 'deploy_sync_content__settings_data'
wp option delete 'deploy_sync_content__url_prod_is_defined'

# Delete Transients
wp transient delete 'deploy_sync_content__debug'
wp transient delete 'deploy_sync_content__activation_message'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

