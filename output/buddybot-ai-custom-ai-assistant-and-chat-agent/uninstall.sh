#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buddybot_welcome_modal_dismissed'
wp option delete 'buddybot_columns_per_page'
wp option delete 'buddybot_conversations_per_page'
wp option delete 'buddybot_vectorstore_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-remote-file-id'"
wp option delete 'buddybot_db_version'

# Clear Cron Jobs
wp cron event delete 'buddybot_delete_expired_chats'

