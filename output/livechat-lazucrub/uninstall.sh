#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'real_time_chat_public_key'
wp option delete 'real_time_chat_private_key'
wp option delete 'real_time_chat_access'
wp option delete 'rewrite_rules'

