#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swise_service_account_credential'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'swise_settings_%'"
wp option delete 'swise_settings_integrations'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

