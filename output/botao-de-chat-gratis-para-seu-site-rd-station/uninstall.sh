#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rd_button_chat_options'
wp option delete 'rd_button_chat_setup_options'
wp option delete 'rewrite_rules'
wp option delete 'rd_button_chat_setup'
wp option delete 'rd_button_chat_backup_options'

