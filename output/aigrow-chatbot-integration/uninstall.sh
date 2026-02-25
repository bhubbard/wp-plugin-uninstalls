#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aigrow_chatbot_token'
wp option delete 'aigrow_chatbot_title'
wp option delete 'aigrow_chatbot_ws_url'

