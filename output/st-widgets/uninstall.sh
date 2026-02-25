#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enable_chat_to_text'
wp option delete 'chat_to_text_token'
wp option delete 'enable_web_scheduler'
wp option delete 'web_scheduler_token'

