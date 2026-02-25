#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FULLWORKS_SCANNER_general'
wp option delete 'FULLWORKS_SCANNER_audit_schedule'
wp option delete 'FULLWORKS_SCANNER_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'FULLWORKS_SCANNER_plugin_updated_%'"
wp option delete 'auto_update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE ' FULLWORKS_SCANNER_plugin_updated_%'"
wp option delete 'fullworks-scanner-whitelabel-names'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_form_rendered'"

# Delete Transients
wp transient delete 'fullworks-vulnerability-plugin-data'
wp transient delete 'update_plugins'
wp transient delete 'fullworks-scanner-theme-data'
wp transient delete 'update_themes'
wp transient delete 'fullworks_vulndb_control'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

