#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CWCB_settings'
wp option delete 'CWCB_chatbot_content'
wp option delete 'cw_chatbot_block_content'

