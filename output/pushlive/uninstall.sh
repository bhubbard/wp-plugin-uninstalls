#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pushlive_lock_pushing'
wp option delete 'pushlive_install_path'
wp option delete 'pushlive_exclusions'
wp option delete 'pushlive_db_host'
wp option delete 'pushlive_db_user'
wp option delete 'pushlive_db_pw'
wp option delete 'pushlive_db_db'
wp option delete 'pushlive_exclude_tables'
wp option delete 'pushlive_stage_base'
wp option delete 'pushlive_live_base'
wp option delete 'pushlive_backup_path'
wp option delete 'pushlive_force_login'
wp option delete 'pushlive_lock_reason'
wp option delete 'pushlive_replicate_live_base'
wp option delete 'pushlive_replicate_db_host'
wp option delete 'pushlive_replicate_db_db'
wp option delete 'pushlive_replicate_db_user'
wp option delete 'pushlive_replicate_db_pw'
wp option delete 'pushlive_replicate_install_path'

