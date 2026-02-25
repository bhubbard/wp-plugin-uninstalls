#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yahoo_status-my-yahoo-id'
wp option delete 'yahoo_status-tmp-yahoo-id'
wp option delete 'yahoo_status-tmp-yahoo-pass'
wp option delete 'yahoo_status-friend-cache'
wp option delete 'yahoo-status-bot-changed'
wp option delete 'yahoo_status-show-status'
wp option delete 'yahoo_status-title'

