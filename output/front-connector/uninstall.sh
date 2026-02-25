#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'frontapp_auth'
wp option delete 'frontapp_inbox'
wp option delete 'frontapp_freshchat'
wp option delete 'frontapp_chat_id'

