#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wccc_cf7_discord_ignore_spam_entry'
wp option delete 'cf7_db_version'
wp option delete 'wccc_cf7_discord_notification_send_to  '
wp option delete 'wccc_cf7_discord_notification_subject'
wp option delete 'wccc_cf7_discord_debug'
wp option delete 'wccc_cf7_discord_notification_send_to	'
wp option delete 'wccc_cf7_discord_uninstall'
wp option delete 'wccc_cf7_discord_db_version'

