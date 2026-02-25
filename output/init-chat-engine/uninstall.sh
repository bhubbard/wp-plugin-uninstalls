#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'init_plugin_suite_chat_engine_db_version'
wp option delete 'init_chat_last_daily_stat_update'
wp option delete 'init_chat_basic_settings'
wp option delete 'init_chat_security_settings'
wp option delete 'init_chat_advanced_settings'
wp option delete 'init_plugin_suite_chat_engine_settings'

# Clear Cron Jobs
wp cron event delete 'init_chat_engine_cleanup_messages'

