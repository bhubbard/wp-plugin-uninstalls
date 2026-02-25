#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'itsec-storage'
wp option delete 'pdt_tmp_active_plugins_backup_from_case_opening'
wp option delete 'pdt_active_case_id'
wp option delete 'pdt_cases'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pdt_case_%'"
wp option delete 'pdt_tmp_active_plugins_backup'

