#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcf7_telegram_chats'
wp option delete 'wpcf7_telegram_pre_releases'
wp option delete 'wpcf7_telegram_tkn'
wp option delete 'wpcf7_telegram_last_update_id'
wp option delete 'cf7tg_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cf7tg_migration_%'"

