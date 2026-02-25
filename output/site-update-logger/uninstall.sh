#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sulog_delete_data_on_uninstall'
wp option delete 'sulog_pre_update_wp_version'
wp option delete 'sulog_last_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sulog_pre_update_plugin_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sulog_plugin_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sulog_pre_update_theme_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sulog_theme_%'"
wp option delete 'site_update_logger_pre_update_wp_version'
wp option delete 'sulog_migration_done'
wp option delete 'site_update_logger_migration_done'
wp option delete 'sulog_version'
wp option delete 'sulog_settings'

