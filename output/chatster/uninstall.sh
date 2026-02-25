#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chatster_enc_key'
wp option delete 'chatster_version'
wp option delete 'ch_welcome_notice_viewed'
wp option delete 'chatster_api_key'
wp option delete 'chatster_bot_qa_options'
wp option delete 'chatster_bot_options'
wp option delete 'chatster_chat_options'

# Clear Cron Jobs
wp cron event delete 'chatster_remove_old_convs'
wp cron event delete 'chatster_verify_presence'
wp cron event delete 'chatster_update_presence'
wp cron event delete 'chatster_check_new_requests'

