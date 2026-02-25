#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cliengo_session'
wp option delete 'cliengo_chatbot_token'
wp option delete 'cliengo_chatbot_position'
wp option delete 'position_chatbot'

