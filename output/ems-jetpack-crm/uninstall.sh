#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ems_jetpack_crm_installed'
wp option delete 'ems_jetpack_crm_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_main_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_main_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_main_secret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_process'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_export_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_offset'"
wp option delete 'ems_jetpack_crm_main_url'
wp option delete 'ems_jetpack_crm_main_key'
wp option delete 'ems_jetpack_crm_main_secret'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

