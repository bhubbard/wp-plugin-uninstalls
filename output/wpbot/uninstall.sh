#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qcld_wb_chatbot_theme'
wp option delete 'qcld_woo_chatbot_theme'
wp option delete 'enable_chat_session'

