#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'missive_chat'
wp option delete 'missive_chat_account_id'
wp option delete 'missive_chat_main_color'
wp option delete 'message_welcome'
wp option delete 'message_help'
wp option delete 'message_identify'
wp option delete 'message_error'
wp option delete 'message_title'
wp option delete 'message_online'
wp option delete 'message_offline'
wp option delete 'message_connecting'
wp option delete 'message_chat'
wp option delete 'message_internet'
wp option delete 'message_identifyName'
wp option delete 'message_identifyEmail'
wp option delete 'message_identifySubmit'
wp option delete 'message_identifyRequired'
wp option delete 'message_identifyThanks'

