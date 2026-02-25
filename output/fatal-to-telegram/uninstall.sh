#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fttg_bot_token'
wp option delete 'fttg_chat_id'
wp option delete 'fttg_enabled'
wp option delete 'fttg_active'

