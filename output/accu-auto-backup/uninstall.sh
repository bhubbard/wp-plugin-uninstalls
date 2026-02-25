#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'accu_auto_backup_backups'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sc_auto_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_backup_method'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sc_auto_interval'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_bkp_store_limit'"
wp option delete 'accu_auto_backup_exclude_table'
wp option delete 'accu_auto_backup_log'
wp option delete 'accu_auto_backup_sc_auto_enabled'
wp option delete 'accu_auto_backup_bkp_store_limit'
wp option delete 'accu_last_backup'
wp option delete 'accu_auto_backup_backup_method'
wp option delete 'accu_auto_backup_sc_auto_interval'

# Delete Transients
wp transient delete 'accu_auto_backup_updated'

