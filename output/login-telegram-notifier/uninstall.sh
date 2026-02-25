#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ltgntf_bot_token'
wp option delete 'ltgntf_chat_id'
wp option delete 'ltgntf_enabled'

