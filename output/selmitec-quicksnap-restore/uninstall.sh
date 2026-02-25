#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'selmiqsr_include_uploads'
wp option delete 'selmiqsr_prune_same_name'
wp option delete 'selmiqsr_exclude_patterns'
wp option delete 'selmiqsr_tg_enabled'
wp option delete 'selmiqsr_tg_bot_token'
wp option delete 'selmiqsr_tg_chat_id'

